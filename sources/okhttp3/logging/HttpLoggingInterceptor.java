package okhttp3.logging;

import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;

public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Logger DEFAULT = $$Lambda$HttpLoggingInterceptor$Logger$smmbr_QNvGsDM4WCreZZz8uMHLQ.INSTANCE;

        /* renamed from: okhttp3.logging.HttpLoggingInterceptor$Logger$-CC reason: invalid class name */
        public final /* synthetic */ class CC {
        }

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    public HttpLoggingInterceptor(Logger logger2) {
        this.headersToRedact = Collections.emptySet();
        this.level = Level.NONE;
        this.logger = logger2;
    }

    public void redactHeader(String str) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        treeSet.addAll(this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public HttpLoggingInterceptor setLevel(Level level2) {
        if (level2 != null) {
            this.level = level2;
            return this;
        }
        throw new NullPointerException("level == null. Use Level.NONE instead.");
    }

    public Level getLevel() {
        return this.level;
    }

    public Response intercept(Chain chain) throws IOException {
        String str;
        String str2;
        long j;
        char c;
        String str3;
        String str4;
        Object obj;
        Throwable th;
        Throwable th2;
        Chain chain2 = chain;
        Level level2 = this.level;
        Request request = chain.request();
        if (level2 == Level.NONE) {
            return chain2.proceed(request);
        }
        boolean z = true;
        boolean z2 = level2 == Level.BODY;
        boolean z3 = z2 || level2 == Level.HEADERS;
        RequestBody body = request.body();
        if (body == null) {
            z = false;
        }
        Connection connection = chain.connection();
        StringBuilder sb = new StringBuilder();
        sb.append("--> ");
        sb.append(request.method());
        sb.append(' ');
        sb.append(request.url());
        String str5 = "";
        if (connection != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            sb2.append(connection.protocol());
            str = sb2.toString();
        } else {
            str = str5;
        }
        sb.append(str);
        String sb3 = sb.toString();
        String str6 = "-byte body)";
        String str7 = " (";
        if (!z3 && z) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            sb4.append(str7);
            sb4.append(body.contentLength());
            sb4.append(str6);
            sb3 = sb4.toString();
        }
        this.logger.log(sb3);
        String str8 = "-byte body omitted)";
        if (z3) {
            if (z) {
                if (body.contentType() != null) {
                    Logger logger2 = this.logger;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Content-Type: ");
                    sb5.append(body.contentType());
                    logger2.log(sb5.toString());
                }
                if (body.contentLength() != -1) {
                    Logger logger3 = this.logger;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Content-Length: ");
                    sb6.append(body.contentLength());
                    logger3.log(sb6.toString());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (!"Content-Type".equalsIgnoreCase(name) && !"Content-Length".equalsIgnoreCase(name)) {
                    logHeader(headers, i);
                }
            }
            String str9 = "--> END ";
            if (!z2 || !z) {
                Logger logger4 = this.logger;
                StringBuilder sb7 = new StringBuilder();
                sb7.append(str9);
                sb7.append(request.method());
                logger4.log(sb7.toString());
            } else if (bodyHasUnknownEncoding(request.headers())) {
                Logger logger5 = this.logger;
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str9);
                sb8.append(request.method());
                sb8.append(" (encoded body omitted)");
                logger5.log(sb8.toString());
            } else if (body.isDuplex()) {
                Logger logger6 = this.logger;
                StringBuilder sb9 = new StringBuilder();
                sb9.append(str9);
                sb9.append(request.method());
                sb9.append(" (duplex request body omitted)");
                logger6.log(sb9.toString());
            } else {
                Buffer buffer = new Buffer();
                body.writeTo(buffer);
                Charset charset = UTF8;
                MediaType contentType = body.contentType();
                if (contentType != null) {
                    charset = contentType.charset(UTF8);
                }
                this.logger.log(str5);
                if (isPlaintext(buffer)) {
                    this.logger.log(buffer.readString(charset));
                    Logger logger7 = this.logger;
                    StringBuilder sb10 = new StringBuilder();
                    sb10.append(str9);
                    sb10.append(request.method());
                    sb10.append(str7);
                    sb10.append(body.contentLength());
                    sb10.append(str6);
                    logger7.log(sb10.toString());
                } else {
                    Logger logger8 = this.logger;
                    StringBuilder sb11 = new StringBuilder();
                    sb11.append(str9);
                    sb11.append(request.method());
                    sb11.append(" (binary ");
                    sb11.append(body.contentLength());
                    sb11.append(str8);
                    logger8.log(sb11.toString());
                }
            }
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain2.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            long contentLength = body2.contentLength();
            if (contentLength != -1) {
                StringBuilder sb12 = new StringBuilder();
                sb12.append(contentLength);
                sb12.append("-byte");
                str2 = sb12.toString();
            } else {
                str2 = "unknown-length";
            }
            Logger logger9 = this.logger;
            StringBuilder sb13 = new StringBuilder();
            String str10 = str6;
            sb13.append("<-- ");
            sb13.append(proceed.code());
            if (proceed.message().isEmpty()) {
                str3 = str5;
                j = contentLength;
                c = ' ';
            } else {
                StringBuilder sb14 = new StringBuilder();
                j = contentLength;
                c = ' ';
                sb14.append(' ');
                sb14.append(proceed.message());
                str3 = sb14.toString();
            }
            sb13.append(str3);
            sb13.append(c);
            sb13.append(proceed.request().url());
            sb13.append(str7);
            sb13.append(millis);
            sb13.append("ms");
            if (!z3) {
                StringBuilder sb15 = new StringBuilder();
                sb15.append(", ");
                sb15.append(str2);
                sb15.append(" body");
                str4 = sb15.toString();
            } else {
                str4 = str5;
            }
            sb13.append(str4);
            sb13.append(')');
            logger9.log(sb13.toString());
            if (z3) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    logHeader(headers2, i2);
                }
                if (!z2 || !HttpHeaders.hasBody(proceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyHasUnknownEncoding(proceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource source = body2.source();
                    source.request(Long.MAX_VALUE);
                    Buffer buffer2 = source.getBuffer();
                    if ("gzip".equalsIgnoreCase(headers2.get("Content-Encoding"))) {
                        obj = Long.valueOf(buffer2.size());
                        GzipSource gzipSource = new GzipSource(buffer2.clone());
                        try {
                            buffer2 = new Buffer();
                            buffer2.writeAll(gzipSource);
                            gzipSource.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        obj = null;
                    }
                    Charset charset2 = UTF8;
                    MediaType contentType2 = body2.contentType();
                    if (contentType2 != null) {
                        charset2 = contentType2.charset(UTF8);
                    }
                    if (!isPlaintext(buffer2)) {
                        this.logger.log(str5);
                        Logger logger10 = this.logger;
                        StringBuilder sb16 = new StringBuilder();
                        sb16.append("<-- END HTTP (binary ");
                        sb16.append(buffer2.size());
                        sb16.append(str8);
                        logger10.log(sb16.toString());
                        return proceed;
                    }
                    if (j != 0) {
                        this.logger.log(str5);
                        this.logger.log(buffer2.clone().readString(charset2));
                    }
                    String str11 = "<-- END HTTP (";
                    if (obj != null) {
                        Logger logger11 = this.logger;
                        StringBuilder sb17 = new StringBuilder();
                        sb17.append(str11);
                        sb17.append(buffer2.size());
                        sb17.append("-byte, ");
                        sb17.append(obj);
                        sb17.append("-gzipped-byte body)");
                        logger11.log(sb17.toString());
                    } else {
                        Logger logger12 = this.logger;
                        StringBuilder sb18 = new StringBuilder();
                        sb18.append(str11);
                        sb18.append(buffer2.size());
                        sb18.append(str10);
                        logger12.log(sb18.toString());
                    }
                }
            }
            return proceed;
        } catch (Exception e) {
            Exception exc = e;
            Logger logger13 = this.logger;
            StringBuilder sb19 = new StringBuilder();
            sb19.append("<-- HTTP FAILED: ");
            sb19.append(exc);
            logger13.log(sb19.toString());
            throw exc;
        }
        throw th2;
    }

    private void logHeader(Headers headers, int i) {
        String value = this.headersToRedact.contains(headers.name(i)) ? "██" : headers.value(i);
        Logger logger2 = this.logger;
        StringBuilder sb = new StringBuilder();
        sb.append(headers.name(i));
        sb.append(": ");
        sb.append(value);
        logger2.log(sb.toString());
    }

    static boolean isPlaintext(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0, buffer.size() < 64 ? buffer.size() : 64);
            int i = 0;
            while (true) {
                if (i >= 16) {
                    break;
                } else if (buffer2.exhausted()) {
                    break;
                } else {
                    int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                    if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                        return false;
                    }
                    i++;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private static boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return str != null && !str.equalsIgnoreCase("identity") && !str.equalsIgnoreCase("gzip");
    }
}
