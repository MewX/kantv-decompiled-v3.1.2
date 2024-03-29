package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;

public abstract class RequestBody {
    public long contentLength() throws IOException {
        return -1;
    }

    @Nullable
    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

    public static RequestBody create(@Nullable MediaType mediaType, String str) {
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
        return create(mediaType, str.getBytes(charset));
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final ByteString byteString) {
        return new RequestBody() {
            @Nullable
            public MediaType contentType() {
                return MediaType.this;
            }

            public long contentLength() throws IOException {
                return (long) byteString.size();
            }

            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(byteString);
            }
        };
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final byte[] bArr, final int i, final int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
            return new RequestBody() {
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                public long contentLength() {
                    return (long) i2;
                }

                public void writeTo(BufferedSink bufferedSink) throws IOException {
                    bufferedSink.write(bArr, i, i2);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final File file) {
        if (file != null) {
            return new RequestBody() {
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                public long contentLength() {
                    return file.length();
                }

                public void writeTo(BufferedSink bufferedSink) throws IOException {
                    Source source = Okio.source(file);
                    try {
                        bufferedSink.writeAll(source);
                        if (source != null) {
                            source.close();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                    }
                    throw th;
                    if (source != null) {
                        if (r1 != null) {
                            try {
                                source.close();
                            } catch (Throwable th2) {
                                r1.addSuppressed(th2);
                            }
                        } else {
                            source.close();
                        }
                    }
                    throw th;
                }
            };
        }
        throw new NullPointerException("file == null");
    }
}
