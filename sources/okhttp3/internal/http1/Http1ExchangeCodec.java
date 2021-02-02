package okhttp3.internal.http1;

import android.support.v4.media.session.PlaybackStateCompat;
import com.avos.avospush.session.SessionControlPacket.SessionControlOp;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Response.Builder;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.eclipse.jetty.http.HttpHeaderValues;

public final class Http1ExchangeCodec implements ExchangeCodec {
    private static final int HEADER_LIMIT = 262144;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    /* access modifiers changed from: private */
    public final OkHttpClient client;
    private long headerLimit = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    /* access modifiers changed from: private */
    public final RealConnection realConnection;
    /* access modifiers changed from: private */
    public final BufferedSink sink;
    /* access modifiers changed from: private */
    public final BufferedSource source;
    /* access modifiers changed from: private */
    public int state = 0;
    /* access modifiers changed from: private */
    public Headers trailers;

    private abstract class AbstractSource implements Source {
        protected boolean closed;
        protected final ForwardingTimeout timeout;

        private AbstractSource() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.source.timeout());
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public long read(Buffer buffer, long j) throws IOException {
            try {
                return Http1ExchangeCodec.this.source.read(buffer, j);
            } catch (IOException e) {
                Http1ExchangeCodec.this.realConnection.noNewExchanges();
                responseBodyComplete();
                throw e;
            }
        }

        /* access modifiers changed from: 0000 */
        public final void responseBodyComplete() {
            if (Http1ExchangeCodec.this.state != 6) {
                if (Http1ExchangeCodec.this.state == 5) {
                    Http1ExchangeCodec.this.detachTimeout(this.timeout);
                    Http1ExchangeCodec.this.state = 6;
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("state: ");
                sb.append(Http1ExchangeCodec.this.state);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    private final class ChunkedSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout = new ForwardingTimeout(Http1ExchangeCodec.this.sink.timeout());

        ChunkedSink() {
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public void write(Buffer buffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException(SessionControlOp.CLOSED);
            } else if (j != 0) {
                Http1ExchangeCodec.this.sink.writeHexadecimalUnsignedLong(j);
                String str = "\r\n";
                Http1ExchangeCodec.this.sink.writeUtf8(str);
                Http1ExchangeCodec.this.sink.write(buffer, j);
                Http1ExchangeCodec.this.sink.writeUtf8(str);
            }
        }

        public synchronized void flush() throws IOException {
            if (!this.closed) {
                Http1ExchangeCodec.this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                Http1ExchangeCodec.this.sink.writeUtf8("0\r\n\r\n");
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 3;
            }
        }
    }

    private class ChunkedSource extends AbstractSource {
        private static final long NO_CHUNK_YET = -1;
        private long bytesRemainingInChunk = -1;
        private boolean hasMoreChunks = true;
        private final HttpUrl url;

        ChunkedSource(HttpUrl httpUrl) {
            super();
            this.url = httpUrl;
        }

        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("byteCount < 0: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            } else if (this.closed) {
                throw new IllegalStateException(SessionControlOp.CLOSED);
            } else if (!this.hasMoreChunks) {
                return -1;
            } else {
                long j2 = this.bytesRemainingInChunk;
                if (j2 == 0 || j2 == -1) {
                    readChunkSize();
                    if (!this.hasMoreChunks) {
                        return -1;
                    }
                }
                long read = super.read(buffer, Math.min(j, this.bytesRemainingInChunk));
                if (read != -1) {
                    this.bytesRemainingInChunk -= read;
                    return read;
                }
                Http1ExchangeCodec.this.realConnection.noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            }
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != -1) {
                Http1ExchangeCodec.this.source.readUtf8LineStrict();
            }
            try {
                this.bytesRemainingInChunk = Http1ExchangeCodec.this.source.readHexadecimalUnsignedLong();
                String trim = Http1ExchangeCodec.this.source.readUtf8LineStrict().trim();
                if (this.bytesRemainingInChunk < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("expected chunk size and optional extensions but was \"");
                    sb.append(this.bytesRemainingInChunk);
                    sb.append(trim);
                    sb.append("\"");
                    throw new ProtocolException(sb.toString());
                } else if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
                    http1ExchangeCodec.trailers = http1ExchangeCodec.readHeaders();
                    HttpHeaders.receiveHeaders(Http1ExchangeCodec.this.client.cookieJar(), this.url, Http1ExchangeCodec.this.trailers);
                    responseBodyComplete();
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    Http1ExchangeCodec.this.realConnection.noNewExchanges();
                    responseBodyComplete();
                }
                this.closed = true;
            }
        }
    }

    private class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        FixedLengthSource(long j) {
            super();
            this.bytesRemaining = j;
            if (this.bytesRemaining == 0) {
                responseBodyComplete();
            }
        }

        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("byteCount < 0: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            } else if (!this.closed) {
                long j2 = this.bytesRemaining;
                if (j2 == 0) {
                    return -1;
                }
                long read = super.read(buffer, Math.min(j2, j));
                if (read != -1) {
                    this.bytesRemaining -= read;
                    if (this.bytesRemaining == 0) {
                        responseBodyComplete();
                    }
                    return read;
                }
                Http1ExchangeCodec.this.realConnection.noNewExchanges();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                responseBodyComplete();
                throw protocolException;
            } else {
                throw new IllegalStateException(SessionControlOp.CLOSED);
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    Http1ExchangeCodec.this.realConnection.noNewExchanges();
                    responseBodyComplete();
                }
                this.closed = true;
            }
        }
    }

    private final class KnownLengthSink implements Sink {
        private boolean closed;
        private final ForwardingTimeout timeout;

        private KnownLengthSink() {
            this.timeout = new ForwardingTimeout(Http1ExchangeCodec.this.sink.timeout());
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public void write(Buffer buffer, long j) throws IOException {
            if (!this.closed) {
                Util.checkOffsetAndCount(buffer.size(), 0, j);
                Http1ExchangeCodec.this.sink.write(buffer, j);
                return;
            }
            throw new IllegalStateException(SessionControlOp.CLOSED);
        }

        public void flush() throws IOException {
            if (!this.closed) {
                Http1ExchangeCodec.this.sink.flush();
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                Http1ExchangeCodec.this.detachTimeout(this.timeout);
                Http1ExchangeCodec.this.state = 3;
            }
        }
    }

    private class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        private UnknownLengthSource() {
            super();
        }

        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("byteCount < 0: ");
                sb.append(j);
                throw new IllegalArgumentException(sb.toString());
            } else if (this.closed) {
                throw new IllegalStateException(SessionControlOp.CLOSED);
            } else if (this.inputExhausted) {
                return -1;
            } else {
                long read = super.read(buffer, j);
                if (read != -1) {
                    return read;
                }
                this.inputExhausted = true;
                responseBodyComplete();
                return -1;
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (!this.inputExhausted) {
                    responseBodyComplete();
                }
                this.closed = true;
            }
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection2, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.client = okHttpClient;
        this.realConnection = realConnection2;
        this.source = bufferedSource;
        this.sink = bufferedSink;
    }

    public RealConnection connection() {
        return this.realConnection;
    }

    public Sink createRequestBody(Request request, long j) throws IOException {
        if (request.body() == null || !request.body().isDuplex()) {
            if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(request.header(org.eclipse.jetty.http.HttpHeaders.TRANSFER_ENCODING))) {
                return newChunkedSink();
            }
            if (j != -1) {
                return newKnownLengthSink();
            }
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        throw new ProtocolException("Duplex connections are not supported for HTTP/1");
    }

    public void cancel() {
        RealConnection realConnection2 = this.realConnection;
        if (realConnection2 != null) {
            realConnection2.cancel();
        }
    }

    public void writeRequestHeaders(Request request) throws IOException {
        writeRequest(request.headers(), RequestLine.get(request, this.realConnection.route().proxy().type()));
    }

    public long reportedContentLength(Response response) {
        if (!HttpHeaders.hasBody(response)) {
            return 0;
        }
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(response.header(org.eclipse.jetty.http.HttpHeaders.TRANSFER_ENCODING))) {
            return -1;
        }
        return HttpHeaders.contentLength(response);
    }

    public Source openResponseBodySource(Response response) {
        if (!HttpHeaders.hasBody(response)) {
            return newFixedLengthSource(0);
        }
        if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(response.header(org.eclipse.jetty.http.HttpHeaders.TRANSFER_ENCODING))) {
            return newChunkedSource(response.request().url());
        }
        long contentLength = HttpHeaders.contentLength(response);
        if (contentLength != -1) {
            return newFixedLengthSource(contentLength);
        }
        return newUnknownLengthSource();
    }

    public Headers trailers() {
        if (this.state == 6) {
            Headers headers = this.trailers;
            return headers != null ? headers : Util.EMPTY_HEADERS;
        }
        throw new IllegalStateException("too early; can't read the trailers yet");
    }

    public boolean isClosed() {
        return this.state == 6;
    }

    public void flushRequest() throws IOException {
        this.sink.flush();
    }

    public void finishRequest() throws IOException {
        this.sink.flush();
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.state == 0) {
            String str2 = "\r\n";
            this.sink.writeUtf8(str).writeUtf8(str2);
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                this.sink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8(str2);
            }
            this.sink.writeUtf8(str2);
            this.state = 1;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    public Builder readResponseHeaders(boolean z) throws IOException {
        int i = this.state;
        if (i == 1 || i == 3) {
            try {
                StatusLine parse = StatusLine.parse(readHeaderLine());
                Builder headers = new Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(readHeaders());
                if (z && parse.code == 100) {
                    return null;
                }
                if (parse.code == 100) {
                    this.state = 3;
                    return headers;
                }
                this.state = 4;
                return headers;
            } catch (EOFException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("unexpected end of stream on ");
                sb.append(this.realConnection.route().address().url().redact());
                throw new IOException(sb.toString(), e);
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("state: ");
            sb2.append(this.state);
            throw new IllegalStateException(sb2.toString());
        }
    }

    private String readHeaderLine() throws IOException {
        String readUtf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
        this.headerLimit -= (long) readUtf8LineStrict.length();
        return readUtf8LineStrict;
    }

    /* access modifiers changed from: private */
    public Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String readHeaderLine = readHeaderLine();
            if (readHeaderLine.length() == 0) {
                return builder.build();
            }
            Internal.instance.addLenient(builder, readHeaderLine);
        }
    }

    private Sink newChunkedSink() {
        if (this.state == 1) {
            this.state = 2;
            return new ChunkedSink();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    private Sink newKnownLengthSink() {
        if (this.state == 1) {
            this.state = 2;
            return new KnownLengthSink();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    private Source newFixedLengthSource(long j) {
        if (this.state == 4) {
            this.state = 5;
            return new FixedLengthSource(j);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    private Source newChunkedSource(HttpUrl httpUrl) {
        if (this.state == 4) {
            this.state = 5;
            return new ChunkedSource(httpUrl);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    private Source newUnknownLengthSource() {
        if (this.state == 4) {
            this.state = 5;
            this.realConnection.noNewExchanges();
            return new UnknownLengthSource();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state: ");
        sb.append(this.state);
        throw new IllegalStateException(sb.toString());
    }

    /* access modifiers changed from: private */
    public void detachTimeout(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.delegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    public void skipConnectBody(Response response) throws IOException {
        long contentLength = HttpHeaders.contentLength(response);
        if (contentLength != -1) {
            Source newFixedLengthSource = newFixedLengthSource(contentLength);
            Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            newFixedLengthSource.close();
        }
    }
}
