package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

public abstract class ResponseBody implements Closeable {
    @Nullable
    private Reader reader;

    static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        @Nullable
        private Reader delegate;
        private final BufferedSource source;

        BomAwareReader(BufferedSource bufferedSource, Charset charset2) {
            this.source = bufferedSource;
            this.charset = charset2;
        }

        public int read(char[] cArr, int i, int i2) throws IOException {
            if (!this.closed) {
                Reader reader = this.delegate;
                if (reader == null) {
                    Reader inputStreamReader = new InputStreamReader(this.source.inputStream(), Util.bomAwareCharset(this.source, this.charset));
                    this.delegate = inputStreamReader;
                    reader = inputStreamReader;
                }
                return reader.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }

        public void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    public abstract BufferedSource source();

    public final InputStream byteStream() {
        return source().inputStream();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004c, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0050, code lost:
        if (r2 != null) goto L_0x0052;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0052, code lost:
        $closeResource(r3, r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0055, code lost:
        throw r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] bytes() throws java.io.IOException {
        /*
            r6 = this;
            long r0 = r6.contentLength()
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 > 0) goto L_0x0056
            okio.BufferedSource r2 = r6.source()
            r3 = 0
            byte[] r4 = r2.readByteArray()     // Catch:{ Throwable -> 0x004e }
            if (r2 == 0) goto L_0x0019
            $closeResource(r3, r2)
        L_0x0019:
            r2 = -1
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 == 0) goto L_0x004b
            int r2 = r4.length
            long r2 = (long) r2
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 != 0) goto L_0x0026
            goto L_0x004b
        L_0x0026:
            java.io.IOException r2 = new java.io.IOException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Content-Length ("
            r3.append(r5)
            r3.append(r0)
            java.lang.String r0 = ") and stream length ("
            r3.append(r0)
            int r0 = r4.length
            r3.append(r0)
            java.lang.String r0 = ") disagree"
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        L_0x004b:
            return r4
        L_0x004c:
            r0 = move-exception
            goto L_0x0050
        L_0x004e:
            r3 = move-exception
            throw r3     // Catch:{ all -> 0x004c }
        L_0x0050:
            if (r2 == 0) goto L_0x0055
            $closeResource(r3, r2)
        L_0x0055:
            throw r0
        L_0x0056:
            java.io.IOException r2 = new java.io.IOException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Cannot buffer entire body for content length: "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.bytes():byte[]");
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th != null) {
            try {
                autoCloseable.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
        } else {
            autoCloseable.close();
        }
    }

    public final Reader charStream() {
        Reader reader2 = this.reader;
        if (reader2 != null) {
            return reader2;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001b, code lost:
        if (r0 != null) goto L_0x001d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001d, code lost:
        $closeResource(r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0017, code lost:
        r2 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String string() throws java.io.IOException {
        /*
            r3 = this;
            okio.BufferedSource r0 = r3.source()
            r1 = 0
            java.nio.charset.Charset r2 = r3.charset()     // Catch:{ Throwable -> 0x0019 }
            java.nio.charset.Charset r2 = okhttp3.internal.Util.bomAwareCharset(r0, r2)     // Catch:{ Throwable -> 0x0019 }
            java.lang.String r2 = r0.readString(r2)     // Catch:{ Throwable -> 0x0019 }
            if (r0 == 0) goto L_0x0016
            $closeResource(r1, r0)
        L_0x0016:
            return r2
        L_0x0017:
            r2 = move-exception
            goto L_0x001b
        L_0x0019:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x0017 }
        L_0x001b:
            if (r0 == 0) goto L_0x0020
            $closeResource(r1, r0)
        L_0x0020:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.string():java.lang.String");
    }

    private Charset charset() {
        MediaType contentType = contentType();
        return contentType != null ? contentType.charset(StandardCharsets.UTF_8) : StandardCharsets.UTF_8;
    }

    public void close() {
        Util.closeQuietly((Closeable) source());
    }

    public static ResponseBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = StandardCharsets.UTF_8;
        if (mediaType != null) {
            charset = mediaType.charset();
            if (charset == null) {
                charset = StandardCharsets.UTF_8;
                StringBuilder sb = new StringBuilder();
                sb.append(mediaType);
                sb.append("; charset=utf-8");
                mediaType = MediaType.parse(sb.toString());
            }
        }
        Buffer writeString = new Buffer().writeString(str, charset);
        return create(mediaType, writeString.size(), writeString);
    }

    public static ResponseBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, (long) bArr.length, new Buffer().write(bArr));
    }

    public static ResponseBody create(@Nullable MediaType mediaType, ByteString byteString) {
        return create(mediaType, (long) byteString.size(), new Buffer().write(byteString));
    }

    public static ResponseBody create(@Nullable final MediaType mediaType, final long j, final BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            return new ResponseBody() {
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                public long contentLength() {
                    return j;
                }

                public BufferedSource source() {
                    return bufferedSource;
                }
            };
        }
        throw new NullPointerException("source == null");
    }
}
