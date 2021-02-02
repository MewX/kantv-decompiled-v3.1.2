package com.koushikdutta.async.http.cache;

import com.koushikdutta.async.util.Charsets;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

class StrictLineReader implements Closeable {
    private static final byte CR = 13;
    private static final byte LF = 10;
    private byte[] buf;
    private int end;
    private final InputStream in;
    private int pos;

    public StrictLineReader(InputStream inputStream) {
        this(inputStream, 8192);
    }

    public StrictLineReader(InputStream inputStream, int i) {
        this(inputStream, i, Charsets.US_ASCII);
    }

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public StrictLineReader(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null) {
            throw new NullPointerException("in == null");
        } else if (charset == null) {
            throw new NullPointerException("charset == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(Charsets.US_ASCII) || charset.equals(Charsets.UTF_8)) {
            this.in = inputStream;
            this.buf = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public void close() throws IOException {
        synchronized (this.in) {
            if (this.buf != null) {
                this.buf = null;
                this.in.close();
            }
        }
    }

    public String readLine() throws IOException {
        int i;
        int i2;
        synchronized (this.in) {
            if (this.buf != null) {
                if (this.pos >= this.end) {
                    fillBuf();
                }
                for (int i3 = this.pos; i3 != this.end; i3++) {
                    if (this.buf[i3] == 10) {
                        if (i3 != this.pos) {
                            i2 = i3 - 1;
                            if (this.buf[i2] == 13) {
                                String str = new String(this.buf, this.pos, i2 - this.pos);
                                this.pos = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.buf, this.pos, i2 - this.pos);
                        this.pos = i3 + 1;
                        return str2;
                    }
                }
                AnonymousClass1 r1 = new ByteArrayOutputStream((this.end - this.pos) + 80) {
                    public String toString() {
                        return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + -1] != 13) ? this.count : this.count - 1);
                    }
                };
                loop1:
                while (true) {
                    r1.write(this.buf, this.pos, this.end - this.pos);
                    this.end = -1;
                    fillBuf();
                    i = this.pos;
                    while (true) {
                        if (i != this.end) {
                            if (this.buf[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                }
                if (i != this.pos) {
                    r1.write(this.buf, this.pos, i - this.pos);
                }
                this.pos = i + 1;
                String byteArrayOutputStream = r1.toString();
                return byteArrayOutputStream;
            }
            throw new IOException("LineReader is closed");
        }
    }

    public int readInt() throws IOException {
        String readLine = readLine();
        try {
            return Integer.parseInt(readLine);
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("expected an int but was \"");
            sb.append(readLine);
            sb.append("\"");
            throw new IOException(sb.toString());
        }
    }

    public boolean hasUnterminatedLine() {
        return this.end == -1;
    }

    private void fillBuf() throws IOException {
        InputStream inputStream = this.in;
        byte[] bArr = this.buf;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.pos = 0;
            this.end = read;
            return;
        }
        throw new EOFException();
    }
}
