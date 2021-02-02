package com.koushikdutta.async.http.spdy;

import android.util.Base64;
import com.koushikdutta.async.util.Charsets;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import org.eclipse.jetty.http.HttpTokens;
import org.msgpack.core.MessagePack.Code;

final class ByteString implements Serializable {
    public static final ByteString EMPTY = of(new byte[0]);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final long serialVersionUID = 1;
    final byte[] data;
    private transient int hashCode;
    private transient String utf8;

    ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static ByteString of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new ByteString(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str != null) {
            ByteString byteString = new ByteString(str.getBytes(Charsets.UTF_8));
            byteString.utf8 = str;
            return byteString;
        }
        throw new IllegalArgumentException("s == null");
    }

    public String utf8() {
        String str = this.utf8;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.data, Charsets.UTF_8);
        this.utf8 = str2;
        return str2;
    }

    public String base64() {
        return Base64.encodeToString(this.data, 0);
    }

    public static ByteString decodeBase64(String str) {
        if (str != null) {
            byte[] decode = Base64.decode(str, 0);
            if (decode != null) {
                return new ByteString(decode);
            }
            return null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[(bArr.length * 2)];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public static ByteString decodeHex(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        } else if (str.length() % 2 == 0) {
            byte[] bArr = new byte[(str.length() / 2)];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((decodeHexDigit(str.charAt(i2)) << 4) + decodeHexDigit(str.charAt(i2 + 1)));
            }
            return of(bArr);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Unexpected hex string: ");
            sb.append(str);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    private static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected hex digit: ");
                sb.append(c);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        return (c - c2) + 10;
    }

    public static ByteString read(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (i >= 0) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read != -1) {
                    i2 += read;
                } else {
                    throw new EOFException();
                }
            }
            return new ByteString(bArr);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("byteCount < 0: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b < 65 || b > 90) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + HttpTokens.SPACE);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr2[i2] = (byte) (b2 + HttpTokens.SPACE);
                    }
                }
                return new ByteString(bArr2);
            }
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b < 97 || b > 122) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + Code.NEGFIXINT_PREFIX);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 97 && b2 <= 122) {
                        bArr2[i2] = (byte) (b2 + Code.NEGFIXINT_PREFIX);
                    }
                }
                return new ByteString(bArr2);
            }
        }
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int size() {
        return this.data.length;
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public void write(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            outputStream.write(this.data);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof ByteString) && Arrays.equals(((ByteString) obj).data, this.data));
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int hashCode2 = Arrays.hashCode(this.data);
        this.hashCode = hashCode2;
        return hashCode2;
    }

    public String toString() {
        byte[] bArr = this.data;
        if (bArr.length == 0) {
            return "ByteString[size=0]";
        }
        if (bArr.length <= 16) {
            return String.format(Locale.ENGLISH, "ByteString[size=%s data=%s]", new Object[]{Integer.valueOf(this.data.length), hex()});
        }
        try {
            return String.format(Locale.ENGLISH, "ByteString[size=%s md5=%s]", new Object[]{Integer.valueOf(this.data.length), of(MessageDigest.getInstance("MD5").digest(this.data)).hex()});
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString read = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, read.data);
        } catch (NoSuchFieldException unused) {
            throw new AssertionError();
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }
}
