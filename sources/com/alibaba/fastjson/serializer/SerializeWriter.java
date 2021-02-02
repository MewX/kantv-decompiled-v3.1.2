package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.List;

public final class SerializeWriter extends Writer {
    private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
    private static final ThreadLocal<byte[]> bytesBufLocal = new ThreadLocal<>();
    static final int nonDirectFeatures = (((((((((SerializerFeature.UseSingleQuotes.mask | 0) | SerializerFeature.BrowserCompatible.mask) | SerializerFeature.PrettyFormat.mask) | SerializerFeature.WriteEnumUsingToString.mask) | SerializerFeature.WriteNonStringValueAsString.mask) | SerializerFeature.WriteSlashAsSpecial.mask) | SerializerFeature.IgnoreErrorGetter.mask) | SerializerFeature.WriteClassName.mask) | SerializerFeature.NotWriteDefaultValue.mask);
    protected boolean beanToArray;
    protected boolean browserSecure;
    protected char[] buf;
    protected int count;
    protected boolean disableCircularReferenceDetect;
    protected int features;
    protected char keySeperator;
    protected int maxBufSize;
    protected boolean notWriteDefaultValue;
    protected boolean quoteFieldNames;
    protected long sepcialBits;
    protected boolean sortField;
    protected boolean useSingleQuotes;
    protected boolean writeDirect;
    protected boolean writeEnumUsingName;
    protected boolean writeEnumUsingToString;
    protected boolean writeNonStringValueAsString;
    private final Writer writer;

    public SerializeWriter() {
        this((Writer) null);
    }

    public SerializeWriter(Writer writer2) {
        this(writer2, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public SerializeWriter(SerializerFeature... serializerFeatureArr) {
        this((Writer) null, serializerFeatureArr);
    }

    public SerializeWriter(Writer writer2, SerializerFeature... serializerFeatureArr) {
        this(writer2, 0, serializerFeatureArr);
    }

    public SerializeWriter(Writer writer2, int i, SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer2;
        this.buf = (char[]) bufLocal.get();
        if (this.buf != null) {
            bufLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (SerializerFeature mask : serializerFeatureArr) {
            i |= mask.getMask();
        }
        this.features = i;
        computeFeatures();
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public void setMaxBufSize(int i) {
        if (i >= this.buf.length) {
            this.maxBufSize = i;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("must > ");
        sb.append(this.buf.length);
        throw new JSONException(sb.toString());
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public SerializeWriter(int i) {
        this((Writer) null, i);
    }

    public SerializeWriter(Writer writer2, int i) {
        this.maxBufSize = -1;
        this.writer = writer2;
        if (i > 0) {
            this.buf = new char[i];
            computeFeatures();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Negative initial size: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public void config(SerializerFeature serializerFeature, boolean z) {
        if (z) {
            this.features |= serializerFeature.getMask();
            if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                this.features &= SerializerFeature.WriteEnumUsingName.getMask() ^ -1;
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.features &= SerializerFeature.WriteEnumUsingToString.getMask() ^ -1;
            }
        } else {
            this.features = (serializerFeature.getMask() ^ -1) & this.features;
        }
        computeFeatures();
    }

    /* access modifiers changed from: protected */
    public void computeFeatures() {
        boolean z = true;
        this.quoteFieldNames = (this.features & SerializerFeature.QuoteFieldNames.mask) != 0;
        this.useSingleQuotes = (this.features & SerializerFeature.UseSingleQuotes.mask) != 0;
        this.sortField = (this.features & SerializerFeature.SortField.mask) != 0;
        this.disableCircularReferenceDetect = (this.features & SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
        this.beanToArray = (this.features & SerializerFeature.BeanToArray.mask) != 0;
        this.writeNonStringValueAsString = (this.features & SerializerFeature.WriteNonStringValueAsString.mask) != 0;
        this.notWriteDefaultValue = (this.features & SerializerFeature.NotWriteDefaultValue.mask) != 0;
        this.writeEnumUsingName = (this.features & SerializerFeature.WriteEnumUsingName.mask) != 0;
        this.writeEnumUsingToString = (this.features & SerializerFeature.WriteEnumUsingToString.mask) != 0;
        this.writeDirect = this.quoteFieldNames && (this.features & nonDirectFeatures) == 0 && (this.beanToArray || this.writeEnumUsingName);
        this.keySeperator = this.useSingleQuotes ? '\'' : '\"';
        if ((this.features & SerializerFeature.BrowserSecure.mask) == 0) {
            z = false;
        }
        this.browserSecure = z;
        long j = this.browserSecure ? 5764610843043954687L : (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
        this.sepcialBits = j;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.features) != 0;
    }

    public boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public void write(int i) {
        int i2 = this.count + 1;
        if (i2 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i2);
            } else {
                flush();
                i2 = 1;
            }
        }
        this.buf[this.count] = (char) i;
        this.count = i2;
    }

    public void write(char[] cArr, int i, int i2) {
        if (i >= 0 && i <= cArr.length && i2 >= 0) {
            int i3 = i + i2;
            if (i3 <= cArr.length && i3 >= 0) {
                if (i2 != 0) {
                    int i4 = this.count + i2;
                    if (i4 > this.buf.length) {
                        if (this.writer == null) {
                            expandCapacity(i4);
                        } else {
                            do {
                                char[] cArr2 = this.buf;
                                int length = cArr2.length;
                                int i5 = this.count;
                                int i6 = length - i5;
                                System.arraycopy(cArr, i, cArr2, i5, i6);
                                this.count = this.buf.length;
                                flush();
                                i2 -= i6;
                                i += i6;
                            } while (i2 > this.buf.length);
                            i4 = i2;
                        }
                    }
                    System.arraycopy(cArr, i, this.buf, this.count, i2);
                    this.count = i4;
                    return;
                }
                return;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    public void expandCapacity(int i) {
        int i2 = this.maxBufSize;
        if (i2 == -1 || i < i2) {
            char[] cArr = this.buf;
            int length = cArr.length + (cArr.length >> 1) + 1;
            if (length >= i) {
                i = length;
            }
            char[] cArr2 = new char[i];
            System.arraycopy(this.buf, 0, cArr2, 0, this.count);
            this.buf = cArr2;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("serialize exceeded MAX_OUTPUT_LENGTH=");
        sb.append(this.maxBufSize);
        sb.append(", minimumCapacity=");
        sb.append(i);
        throw new JSONException(sb.toString());
    }

    public SerializeWriter append(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "null" : charSequence.toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    public SerializeWriter append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String charSequence2 = charSequence.subSequence(i, i2).toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    public SerializeWriter append(char c) {
        write((int) c);
        return this;
    }

    public void write(String str, int i, int i2) {
        int i3;
        int i4 = this.count + i2;
        if (i4 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i4);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int i5 = this.count;
                    int i6 = length - i5;
                    i3 = i + i6;
                    str.getChars(i, i3, cArr, i5);
                    this.count = this.buf.length;
                    flush();
                    i2 -= i6;
                    if (i2 <= this.buf.length) {
                        break;
                    }
                    i = i3;
                }
                i4 = i2;
                i = i3;
            }
        }
        str.getChars(i, i2 + i, this.buf, this.count);
        this.count = i4;
    }

    public void writeTo(Writer writer2) throws IOException {
        if (this.writer == null) {
            writer2.write(this.buf, 0, this.count);
            return;
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public void writeTo(OutputStream outputStream, String str) throws IOException {
        writeTo(outputStream, Charset.forName(str));
    }

    public void writeTo(OutputStream outputStream, Charset charset) throws IOException {
        writeToEx(outputStream, charset);
    }

    public int writeToEx(OutputStream outputStream, Charset charset) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        } else if (charset == IOUtils.UTF8) {
            return encodeToUTF8(outputStream);
        } else {
            byte[] bytes = new String(this.buf, 0, this.count).getBytes(charset);
            outputStream.write(bytes);
            return bytes.length;
        }
    }

    public char[] toCharArray() {
        if (this.writer == null) {
            int i = this.count;
            char[] cArr = new char[i];
            System.arraycopy(this.buf, 0, cArr, 0, i);
            return cArr;
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer == null) {
            int i = this.count;
            char[] cArr = new char[(i - 2)];
            System.arraycopy(this.buf, 1, cArr, 0, i - 2);
            return cArr;
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public byte[] toBytes(String str) {
        Charset charset;
        if (str == null || "UTF-8".equals(str)) {
            charset = IOUtils.UTF8;
        } else {
            charset = Charset.forName(str);
        }
        return toBytes(charset);
    }

    public byte[] toBytes(Charset charset) {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        } else if (charset == IOUtils.UTF8) {
            return encodeToUTF8Bytes();
        } else {
            return new String(this.buf, 0, this.count).getBytes(charset);
        }
    }

    private int encodeToUTF8(OutputStream outputStream) throws IOException {
        double d = (double) this.count;
        Double.isNaN(d);
        int i = (int) (d * 3.0d);
        byte[] bArr = (byte[]) bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        int encodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr);
        outputStream.write(bArr, 0, encodeUTF8);
        return encodeUTF8;
    }

    private byte[] encodeToUTF8Bytes() {
        double d = (double) this.count;
        Double.isNaN(d);
        int i = (int) (d * 3.0d);
        byte[] bArr = (byte[]) bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        int encodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr);
        byte[] bArr2 = new byte[encodeUTF8];
        System.arraycopy(bArr, 0, bArr2, 0, encodeUTF8);
        return bArr2;
    }

    public int size() {
        return this.count;
    }

    public String toString() {
        return new String(this.buf, 0, this.count);
    }

    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= 131072) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    public void write(String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    public void writeInt(int i) {
        if (i == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int stringSize = i < 0 ? IOUtils.stringSize(-i) + 1 : IOUtils.stringSize(i);
        int i2 = this.count + stringSize;
        if (i2 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i2);
            } else {
                char[] cArr = new char[stringSize];
                IOUtils.getChars(i, stringSize, cArr);
                write(cArr, 0, cArr.length);
                return;
            }
        }
        IOUtils.getChars(i, i2, this.buf);
        this.count = i2;
    }

    public void writeByteArray(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (isEnabled(SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr2.length;
        char c = this.useSingleQuotes ? '\'' : '\"';
        if (length == 0) {
            write(this.useSingleQuotes ? "''" : "\"\"");
            return;
        }
        char[] cArr = IOUtils.CA;
        int i = (length / 3) * 3;
        int i2 = length - 1;
        int i3 = ((i2 / 3) + 1) << 2;
        int i4 = this.count;
        int i5 = i3 + i4 + 2;
        int i6 = 0;
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                int i7 = 0;
                while (i7 < i) {
                    int i8 = i7 + 1;
                    int i9 = i8 + 1;
                    byte b = ((bArr2[i7] & Draft_75.END_OF_FRAME) << 16) | ((bArr2[i8] & Draft_75.END_OF_FRAME) << 8);
                    int i10 = i9 + 1;
                    byte b2 = b | (bArr2[i9] & Draft_75.END_OF_FRAME);
                    write((int) cArr[(b2 >>> 18) & 63]);
                    write((int) cArr[(b2 >>> 12) & 63]);
                    write((int) cArr[(b2 >>> 6) & 63]);
                    write((int) cArr[b2 & 63]);
                    i7 = i10;
                }
                int i11 = length - i;
                if (i11 > 0) {
                    int i12 = (bArr2[i] & Draft_75.END_OF_FRAME) << 10;
                    if (i11 == 2) {
                        i6 = (bArr2[i2] & Draft_75.END_OF_FRAME) << 2;
                    }
                    int i13 = i12 | i6;
                    write((int) cArr[i13 >> 12]);
                    write((int) cArr[(i13 >>> 6) & 63]);
                    write((int) i11 == 2 ? cArr[i13 & 63] : '=');
                    write(61);
                }
                write((int) c);
                return;
            }
            expandCapacity(i5);
        }
        this.count = i5;
        int i14 = i4 + 1;
        this.buf[i4] = c;
        int i15 = 0;
        while (i15 < i) {
            int i16 = i15 + 1;
            int i17 = i16 + 1;
            byte b3 = ((bArr2[i15] & Draft_75.END_OF_FRAME) << 16) | ((bArr2[i16] & Draft_75.END_OF_FRAME) << 8);
            int i18 = i17 + 1;
            byte b4 = b3 | (bArr2[i17] & Draft_75.END_OF_FRAME);
            char[] cArr2 = this.buf;
            int i19 = i14 + 1;
            cArr2[i14] = cArr[(b4 >>> 18) & 63];
            int i20 = i19 + 1;
            cArr2[i19] = cArr[(b4 >>> 12) & 63];
            int i21 = i20 + 1;
            cArr2[i20] = cArr[(b4 >>> 6) & 63];
            i14 = i21 + 1;
            cArr2[i21] = cArr[b4 & 63];
            i15 = i18;
        }
        int i22 = length - i;
        if (i22 > 0) {
            int i23 = (bArr2[i] & Draft_75.END_OF_FRAME) << 10;
            if (i22 == 2) {
                i6 = (bArr2[i2] & Draft_75.END_OF_FRAME) << 2;
            }
            int i24 = i23 | i6;
            char[] cArr3 = this.buf;
            cArr3[i5 - 5] = cArr[i24 >> 12];
            cArr3[i5 - 4] = cArr[(i24 >>> 6) & 63];
            cArr3[i5 - 3] = i22 == 2 ? cArr[i24 & 63] : '=';
            this.buf[i5 - 2] = '=';
        }
        this.buf[i5 - 1] = c;
    }

    public void writeHex(byte[] bArr) {
        int i = 2;
        int length = this.count + (bArr.length * 2) + 3;
        int i2 = 0;
        if (length > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[(bArr.length + 3)];
                cArr[0] = 'x';
                cArr[1] = '\'';
                while (i2 < bArr.length) {
                    byte b = bArr[i2] & Draft_75.END_OF_FRAME;
                    int i3 = b >> 4;
                    byte b2 = b & 15;
                    int i4 = i + 1;
                    cArr[i] = (char) (i3 + (i3 < 10 ? 48 : 55));
                    i = i4 + 1;
                    cArr[i4] = (char) (b2 + (b2 < 10 ? (byte) 48 : 55));
                    i2++;
                }
                cArr[i] = '\'';
                try {
                    this.writer.write(cArr);
                    return;
                } catch (IOException e) {
                    throw new JSONException("writeBytes error.", e);
                }
            } else {
                expandCapacity(length);
            }
        }
        char[] cArr2 = this.buf;
        int i5 = this.count;
        this.count = i5 + 1;
        cArr2[i5] = 'x';
        int i6 = this.count;
        this.count = i6 + 1;
        cArr2[i6] = '\'';
        while (i2 < bArr.length) {
            byte b3 = bArr[i2] & Draft_75.END_OF_FRAME;
            int i7 = b3 >> 4;
            byte b4 = b3 & 15;
            char[] cArr3 = this.buf;
            int i8 = this.count;
            this.count = i8 + 1;
            cArr3[i8] = (char) (i7 + (i7 < 10 ? 48 : 55));
            char[] cArr4 = this.buf;
            int i9 = this.count;
            this.count = i9 + 1;
            cArr4[i9] = (char) (b4 + (b4 < 10 ? (byte) 48 : 55));
            i2++;
        }
        char[] cArr5 = this.buf;
        int i10 = this.count;
        this.count = i10 + 1;
        cArr5[i10] = '\'';
    }

    public void writeFloat(float f, boolean z) {
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            writeNull();
            return;
        }
        String f2 = Float.toString(f);
        if (isEnabled(SerializerFeature.WriteNullNumberAsZero) && f2.endsWith(".0")) {
            f2 = f2.substring(0, f2.length() - 2);
        }
        write(f2);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeDouble(double d, boolean z) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            writeNull();
            return;
        }
        String d2 = Double.toString(d);
        if (isEnabled(SerializerFeature.WriteNullNumberAsZero) && d2.endsWith(".0")) {
            d2 = d2.substring(0, d2.length() - 2);
        }
        write(d2);
        if (z && isEnabled(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(Enum<?> enumR) {
        if (enumR == null) {
            writeNull();
            return;
        }
        String str = null;
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            str = enumR.name();
        } else if (this.writeEnumUsingToString) {
            str = enumR.toString();
        }
        if (str != null) {
            int i = isEnabled(SerializerFeature.UseSingleQuotes) ? 39 : 34;
            write(i);
            write(str);
            write(i);
        } else {
            writeInt(enumR.ordinal());
        }
    }

    public void writeLong(long j) {
        boolean z = isEnabled(SerializerFeature.BrowserCompatible) && !isEnabled(SerializerFeature.WriteClassName) && (j > 9007199254740991L || j < -9007199254740991L);
        if (j == Long.MIN_VALUE) {
            if (z) {
                write("\"-9223372036854775808\"");
            } else {
                write("-9223372036854775808");
            }
            return;
        }
        int stringSize = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
        int i = this.count + stringSize;
        if (z) {
            i += 2;
        }
        if (i > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i);
            } else {
                char[] cArr = new char[stringSize];
                IOUtils.getChars(j, stringSize, cArr);
                if (z) {
                    write(34);
                    write(cArr, 0, cArr.length);
                    write(34);
                } else {
                    write(cArr, 0, cArr.length);
                }
                return;
            }
        }
        if (z) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int i2 = i - 1;
            IOUtils.getChars(j, i2, cArr2);
            this.buf[i2] = '\"';
        } else {
            IOUtils.getChars(j, i, this.buf);
        }
        this.count = i;
    }

    public void writeNull() {
        write("null");
    }

    public void writeNull(SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public void writeNull(int i, int i2) {
        if ((i & i2) == 0 && (this.features & i2) == 0) {
            writeNull();
            return;
        }
        if (i2 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
        } else if (i2 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
        } else if (i2 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write("false");
        } else if (i2 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            writeNull();
        }
    }

    public void writeStringWithDoubleQuote(String str, char c) {
        int i;
        int i2;
        String str2 = str;
        char c2 = c;
        if (str2 == null) {
            writeNull();
            if (c2 != 0) {
                write((int) c2);
            }
            return;
        }
        int length = str.length();
        int i3 = this.count + length + 2;
        if (c2 != 0) {
            i3++;
        }
        if (i > this.buf.length) {
            if (this.writer != null) {
                write(34);
                for (int i4 = 0; i4 < str.length(); i4++) {
                    char charAt = str2.charAt(i4);
                    if (!isEnabled(SerializerFeature.BrowserSecure) || !(charAt == '(' || charAt == ')' || charAt == '<' || charAt == '>')) {
                        if (isEnabled(SerializerFeature.BrowserCompatible)) {
                            if (charAt == 8 || charAt == 12 || charAt == 10 || charAt == 13 || charAt == 9 || charAt == '\"' || charAt == '/' || charAt == '\\') {
                                write(92);
                                write((int) IOUtils.replaceChars[charAt]);
                            } else if (charAt < ' ') {
                                write(92);
                                write(117);
                                write(48);
                                write(48);
                                int i5 = charAt * 2;
                                write((int) IOUtils.ASCII_CHARS[i5]);
                                write((int) IOUtils.ASCII_CHARS[i5 + 1]);
                            } else if (charAt >= 127) {
                                write(92);
                                write(117);
                                write((int) IOUtils.DIGITS[(charAt >>> 12) & 15]);
                                write((int) IOUtils.DIGITS[(charAt >>> 8) & 15]);
                                write((int) IOUtils.DIGITS[(charAt >>> 4) & 15]);
                                write((int) IOUtils.DIGITS[charAt & 15]);
                            }
                        } else if ((charAt < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[charAt] != 0) || (charAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                            write(92);
                            if (IOUtils.specicalFlags_doubleQuotes[charAt] == 4) {
                                write(117);
                                write((int) IOUtils.DIGITS[(charAt >>> 12) & 15]);
                                write((int) IOUtils.DIGITS[(charAt >>> 8) & 15]);
                                write((int) IOUtils.DIGITS[(charAt >>> 4) & 15]);
                                write((int) IOUtils.DIGITS[charAt & 15]);
                            } else {
                                write((int) IOUtils.replaceChars[charAt]);
                            }
                        }
                        write((int) charAt);
                    } else {
                        write(92);
                        write(117);
                        write((int) IOUtils.DIGITS[(charAt >>> 12) & 15]);
                        write((int) IOUtils.DIGITS[(charAt >>> 8) & 15]);
                        write((int) IOUtils.DIGITS[(charAt >>> 4) & 15]);
                        write((int) IOUtils.DIGITS[charAt & 15]);
                    }
                }
                write(34);
                if (c2 != 0) {
                    write((int) c2);
                }
                return;
            }
            expandCapacity(i);
        }
        int i6 = this.count;
        int i7 = i6 + 1;
        int i8 = i7 + length;
        char[] cArr = this.buf;
        cArr[i6] = '\"';
        str2.getChars(0, length, cArr, i7);
        this.count = i;
        int i9 = -1;
        if (isEnabled(SerializerFeature.BrowserCompatible)) {
            for (int i10 = i7; i10 < i8; i10++) {
                char c3 = this.buf[i10];
                if (c3 == '\"' || c3 == '/' || c3 == '\\' || c3 == 8 || c3 == 12 || c3 == 10 || c3 == 13 || c3 == 9) {
                    i++;
                } else if (c3 >= ' ' && c3 < 127) {
                } else {
                    i += 5;
                }
                i9 = i10;
            }
            if (i > this.buf.length) {
                expandCapacity(i);
            }
            this.count = i;
            while (i9 >= i7) {
                char[] cArr2 = this.buf;
                char c4 = cArr2[i9];
                if (c4 == 8 || c4 == 12 || c4 == 10 || c4 == 13 || c4 == 9) {
                    char[] cArr3 = this.buf;
                    int i11 = i9 + 1;
                    System.arraycopy(cArr3, i11, cArr3, i9 + 2, (i8 - i9) - 1);
                    char[] cArr4 = this.buf;
                    cArr4[i9] = '\\';
                    cArr4[i11] = IOUtils.replaceChars[c4];
                } else if (c4 == '\"' || c4 == '/' || c4 == '\\') {
                    char[] cArr5 = this.buf;
                    int i12 = i9 + 1;
                    System.arraycopy(cArr5, i12, cArr5, i9 + 2, (i8 - i9) - 1);
                    char[] cArr6 = this.buf;
                    cArr6[i9] = '\\';
                    cArr6[i12] = c4;
                } else {
                    if (c4 < ' ') {
                        int i13 = i9 + 1;
                        System.arraycopy(cArr2, i13, cArr2, i9 + 6, (i8 - i9) - 1);
                        char[] cArr7 = this.buf;
                        cArr7[i9] = '\\';
                        cArr7[i13] = 'u';
                        cArr7[i9 + 2] = '0';
                        cArr7[i9 + 3] = '0';
                        int i14 = c4 * 2;
                        cArr7[i9 + 4] = IOUtils.ASCII_CHARS[i14];
                        this.buf[i9 + 5] = IOUtils.ASCII_CHARS[i14 + 1];
                    } else if (c4 >= 127) {
                        int i15 = i9 + 1;
                        System.arraycopy(cArr2, i15, cArr2, i9 + 6, (i8 - i9) - 1);
                        char[] cArr8 = this.buf;
                        cArr8[i9] = '\\';
                        cArr8[i15] = 'u';
                        cArr8[i9 + 2] = IOUtils.DIGITS[(c4 >>> 12) & 15];
                        this.buf[i9 + 3] = IOUtils.DIGITS[(c4 >>> 8) & 15];
                        this.buf[i9 + 4] = IOUtils.DIGITS[(c4 >>> 4) & 15];
                        this.buf[i9 + 5] = IOUtils.DIGITS[c4 & 15];
                    } else {
                        i9--;
                    }
                    i8 += 5;
                    i9--;
                }
                i8++;
                i9--;
            }
            if (c2 != 0) {
                char[] cArr9 = this.buf;
                int i16 = this.count;
                cArr9[i16 - 2] = '\"';
                cArr9[i16 - 1] = c2;
            } else {
                this.buf[this.count - 1] = '\"';
            }
            return;
        }
        int i17 = i;
        int i18 = 0;
        char c5 = 0;
        int i19 = -1;
        int i20 = -1;
        for (int i21 = i7; i21 < i8; i21++) {
            char c6 = this.buf[i21];
            if (c6 >= ']') {
                if (c6 >= 127 && (c6 == 8232 || c6 == 8233 || c6 < 160)) {
                    if (i19 == i9) {
                        i19 = i21;
                    }
                    i18++;
                    i17 += 4;
                }
            } else {
                if ((c6 < '@' && (this.sepcialBits & (1 << c6)) != 0) || c6 == '\\') {
                    i18++;
                    if (c6 == '(' || c6 == ')' || c6 == '<' || c6 == '>' || (c6 < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[c6] == 4)) {
                        i17 += 4;
                    }
                    i9 = -1;
                    if (i19 == -1) {
                        i19 = i21;
                        i20 = i19;
                        c5 = c6;
                    }
                } else {
                    i9 = -1;
                }
            }
            i20 = i21;
            c5 = c6;
        }
        if (i18 > 0) {
            int i22 = i17 + i18;
            if (i22 > this.buf.length) {
                expandCapacity(i22);
            }
            this.count = i22;
            if (i18 == 1) {
                if (c5 == 8232) {
                    int i23 = i20 + 1;
                    int i24 = i20 + 6;
                    int i25 = (i8 - i20) - 1;
                    char[] cArr10 = this.buf;
                    System.arraycopy(cArr10, i23, cArr10, i24, i25);
                    char[] cArr11 = this.buf;
                    cArr11[i20] = '\\';
                    cArr11[i23] = 'u';
                    int i26 = i23 + 1;
                    cArr11[i26] = '2';
                    int i27 = i26 + 1;
                    cArr11[i27] = '0';
                    int i28 = i27 + 1;
                    cArr11[i28] = '2';
                    cArr11[i28 + 1] = '8';
                } else if (c5 == 8233) {
                    int i29 = i20 + 1;
                    int i30 = i20 + 6;
                    int i31 = (i8 - i20) - 1;
                    char[] cArr12 = this.buf;
                    System.arraycopy(cArr12, i29, cArr12, i30, i31);
                    char[] cArr13 = this.buf;
                    cArr13[i20] = '\\';
                    cArr13[i29] = 'u';
                    int i32 = i29 + 1;
                    cArr13[i32] = '2';
                    int i33 = i32 + 1;
                    cArr13[i33] = '0';
                    int i34 = i33 + 1;
                    cArr13[i34] = '2';
                    cArr13[i34 + 1] = '9';
                } else if (c5 == '(' || c5 == ')' || c5 == '<' || c5 == '>') {
                    int i35 = i20 + 1;
                    int i36 = i20 + 6;
                    int i37 = (i8 - i20) - 1;
                    char[] cArr14 = this.buf;
                    System.arraycopy(cArr14, i35, cArr14, i36, i37);
                    char[] cArr15 = this.buf;
                    cArr15[i20] = '\\';
                    cArr15[i35] = 'u';
                    int i38 = i35 + 1;
                    cArr15[i38] = IOUtils.DIGITS[(c5 >>> 12) & 15];
                    int i39 = i38 + 1;
                    this.buf[i39] = IOUtils.DIGITS[(c5 >>> 8) & 15];
                    int i40 = i39 + 1;
                    this.buf[i40] = IOUtils.DIGITS[(c5 >>> 4) & 15];
                    this.buf[i40 + 1] = IOUtils.DIGITS[c5 & 15];
                } else if (c5 >= IOUtils.specicalFlags_doubleQuotes.length || IOUtils.specicalFlags_doubleQuotes[c5] != 4) {
                    int i41 = i20 + 1;
                    int i42 = i20 + 2;
                    int i43 = (i8 - i20) - 1;
                    char[] cArr16 = this.buf;
                    System.arraycopy(cArr16, i41, cArr16, i42, i43);
                    char[] cArr17 = this.buf;
                    cArr17[i20] = '\\';
                    cArr17[i41] = IOUtils.replaceChars[c5];
                } else {
                    int i44 = i20 + 1;
                    int i45 = i20 + 6;
                    int i46 = (i8 - i20) - 1;
                    char[] cArr18 = this.buf;
                    System.arraycopy(cArr18, i44, cArr18, i45, i46);
                    char[] cArr19 = this.buf;
                    cArr19[i20] = '\\';
                    int i47 = i44 + 1;
                    cArr19[i44] = 'u';
                    int i48 = i47 + 1;
                    cArr19[i47] = IOUtils.DIGITS[(c5 >>> 12) & 15];
                    int i49 = i48 + 1;
                    this.buf[i48] = IOUtils.DIGITS[(c5 >>> 8) & 15];
                    int i50 = i49 + 1;
                    this.buf[i49] = IOUtils.DIGITS[(c5 >>> 4) & 15];
                    this.buf[i50] = IOUtils.DIGITS[c5 & 15];
                }
            } else if (i18 > 1) {
                for (int i51 = i19 - i7; i51 < str.length(); i51++) {
                    char charAt2 = str2.charAt(i51);
                    if (!this.browserSecure || !(charAt2 == '(' || charAt2 == ')' || charAt2 == '<' || charAt2 == '>')) {
                        if (charAt2 >= IOUtils.specicalFlags_doubleQuotes.length || IOUtils.specicalFlags_doubleQuotes[charAt2] == 0) {
                            if (charAt2 != '/' || !isEnabled(SerializerFeature.WriteSlashAsSpecial)) {
                                if (charAt2 == 8232 || charAt2 == 8233) {
                                    char[] cArr20 = this.buf;
                                    int i52 = i19 + 1;
                                    cArr20[i19] = '\\';
                                    int i53 = i52 + 1;
                                    cArr20[i52] = 'u';
                                    int i54 = i53 + 1;
                                    cArr20[i53] = IOUtils.DIGITS[(charAt2 >>> 12) & 15];
                                    int i55 = i54 + 1;
                                    this.buf[i54] = IOUtils.DIGITS[(charAt2 >>> 8) & 15];
                                    int i56 = i55 + 1;
                                    this.buf[i55] = IOUtils.DIGITS[(charAt2 >>> 4) & 15];
                                    int i57 = i56 + 1;
                                    this.buf[i56] = IOUtils.DIGITS[charAt2 & 15];
                                    i19 = i57;
                                } else {
                                    int i58 = i19 + 1;
                                    this.buf[i19] = charAt2;
                                    i19 = i58;
                                }
                            }
                        }
                        int i59 = i19 + 1;
                        this.buf[i19] = '\\';
                        if (IOUtils.specicalFlags_doubleQuotes[charAt2] == 4) {
                            char[] cArr21 = this.buf;
                            int i60 = i59 + 1;
                            cArr21[i59] = 'u';
                            int i61 = i60 + 1;
                            cArr21[i60] = IOUtils.DIGITS[(charAt2 >>> 12) & 15];
                            int i62 = i61 + 1;
                            this.buf[i61] = IOUtils.DIGITS[(charAt2 >>> 8) & 15];
                            int i63 = i62 + 1;
                            this.buf[i62] = IOUtils.DIGITS[(charAt2 >>> 4) & 15];
                            i2 = i63 + 1;
                            this.buf[i63] = IOUtils.DIGITS[charAt2 & 15];
                        } else {
                            i2 = i59 + 1;
                            this.buf[i59] = IOUtils.replaceChars[charAt2];
                        }
                        i19 = i2;
                    } else {
                        char[] cArr22 = this.buf;
                        int i64 = i19 + 1;
                        cArr22[i19] = '\\';
                        int i65 = i64 + 1;
                        cArr22[i64] = 'u';
                        int i66 = i65 + 1;
                        cArr22[i65] = IOUtils.DIGITS[(charAt2 >>> 12) & 15];
                        int i67 = i66 + 1;
                        this.buf[i66] = IOUtils.DIGITS[(charAt2 >>> 8) & 15];
                        int i68 = i67 + 1;
                        this.buf[i67] = IOUtils.DIGITS[(charAt2 >>> 4) & 15];
                        int i69 = i68 + 1;
                        this.buf[i68] = IOUtils.DIGITS[charAt2 & 15];
                        i19 = i69;
                    }
                }
            }
        }
        if (c2 != 0) {
            char[] cArr23 = this.buf;
            int i70 = this.count;
            cArr23[i70 - 2] = '\"';
            cArr23[i70 - 1] = c2;
        } else {
            this.buf[this.count - 1] = '\"';
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:140:0x02ea, code lost:
        if ((r0.sepcialBits & (1 << r9)) == 0) goto L_0x02ef;
     */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x02f6  */
    /* JADX WARNING: Removed duplicated region for block: B:250:0x031f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void writeStringWithDoubleQuote(char[] r23, char r24) {
        /*
            r22 = this;
            r0 = r22
            r1 = r23
            r2 = r24
            if (r1 != 0) goto L_0x0011
            r22.writeNull()
            if (r2 == 0) goto L_0x0010
            r0.write(r2)
        L_0x0010:
            return
        L_0x0011:
            int r3 = r1.length
            int r4 = r0.count
            int r4 = r4 + r3
            int r4 = r4 + 2
            if (r2 == 0) goto L_0x001b
            int r4 = r4 + 1
        L_0x001b:
            char[] r5 = r0.buf
            int r5 = r5.length
            r6 = 47
            r7 = 0
            r8 = 48
            r9 = 34
            r10 = 12
            r11 = 8
            r12 = 117(0x75, float:1.64E-43)
            r13 = 4
            r14 = 92
            r15 = 1
            if (r4 <= r5) goto L_0x0170
            java.io.Writer r5 = r0.writer
            if (r5 == 0) goto L_0x016d
            r0.write(r9)
        L_0x0038:
            int r3 = r1.length
            if (r7 >= r3) goto L_0x0164
            char r3 = r1[r7]
            com.alibaba.fastjson.serializer.SerializerFeature r4 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure
            boolean r4 = r0.isEnabled(r4)
            if (r4 == 0) goto L_0x0087
            r4 = 40
            if (r3 == r4) goto L_0x0055
            r4 = 41
            if (r3 == r4) goto L_0x0055
            r4 = 60
            if (r3 == r4) goto L_0x0055
            r4 = 62
            if (r3 != r4) goto L_0x0087
        L_0x0055:
            r0.write(r14)
            r0.write(r12)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 12
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 8
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 4
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r3 = r3 & 15
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x0087:
            com.alibaba.fastjson.serializer.SerializerFeature r4 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible
            boolean r4 = r0.isEnabled(r4)
            if (r4 == 0) goto L_0x0109
            if (r3 == r11) goto L_0x00fe
            if (r3 == r10) goto L_0x00fe
            r4 = 10
            if (r3 == r4) goto L_0x00fe
            r4 = 13
            if (r3 == r4) goto L_0x00fe
            r4 = 9
            if (r3 == r4) goto L_0x00fe
            if (r3 == r9) goto L_0x00fe
            if (r3 == r6) goto L_0x00fe
            if (r3 != r14) goto L_0x00a6
            goto L_0x00fe
        L_0x00a6:
            r4 = 32
            if (r3 >= r4) goto L_0x00c9
            r0.write(r14)
            r0.write(r12)
            r0.write(r8)
            r0.write(r8)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS
            int r3 = r3 * 2
            char r4 = r4[r3]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS
            int r3 = r3 + r15
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x00c9:
            r4 = 127(0x7f, float:1.78E-43)
            if (r3 < r4) goto L_0x015d
            r0.write(r14)
            r0.write(r12)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 12
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 8
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 4
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r3 = r3 & 15
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x00fe:
            r0.write(r14)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.replaceChars
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x0109:
            byte[] r4 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            int r4 = r4.length
            if (r3 >= r4) goto L_0x0114
            byte[] r4 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r4 = r4[r3]
            if (r4 != 0) goto L_0x011e
        L_0x0114:
            if (r3 != r6) goto L_0x015d
            com.alibaba.fastjson.serializer.SerializerFeature r4 = com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial
            boolean r4 = r0.isEnabled(r4)
            if (r4 == 0) goto L_0x015d
        L_0x011e:
            r0.write(r14)
            byte[] r4 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r4 = r4[r3]
            if (r4 != r13) goto L_0x0155
            r0.write(r12)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 12
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 8
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r3 >>> 4
            r5 = r5 & 15
            char r4 = r4[r5]
            r0.write(r4)
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r3 = r3 & 15
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x0155:
            char[] r4 = com.alibaba.fastjson.util.IOUtils.replaceChars
            char r3 = r4[r3]
            r0.write(r3)
            goto L_0x0160
        L_0x015d:
            r0.write(r3)
        L_0x0160:
            int r7 = r7 + 1
            goto L_0x0038
        L_0x0164:
            r0.write(r9)
            if (r2 == 0) goto L_0x016c
            r0.write(r2)
        L_0x016c:
            return
        L_0x016d:
            r0.expandCapacity(r4)
        L_0x0170:
            int r5 = r0.count
            int r13 = r5 + 1
            int r3 = r3 + r13
            char[] r8 = r0.buf
            r8[r5] = r9
            int r5 = r1.length
            java.lang.System.arraycopy(r1, r7, r8, r13, r5)
            r0.count = r4
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible
            boolean r5 = r0.isEnabled(r5)
            r8 = -1
            if (r5 == 0) goto L_0x02aa
            r1 = r13
        L_0x0189:
            if (r1 >= r3) goto L_0x01b9
            char[] r5 = r0.buf
            char r5 = r5[r1]
            if (r5 == r9) goto L_0x01b3
            if (r5 == r6) goto L_0x01b3
            if (r5 != r14) goto L_0x0196
            goto L_0x01b3
        L_0x0196:
            if (r5 == r11) goto L_0x01b3
            if (r5 == r10) goto L_0x01b3
            r7 = 10
            if (r5 == r7) goto L_0x01b3
            r7 = 13
            if (r5 == r7) goto L_0x01b3
            r7 = 9
            if (r5 != r7) goto L_0x01a7
            goto L_0x01b3
        L_0x01a7:
            r7 = 32
            if (r5 >= r7) goto L_0x01ae
        L_0x01ab:
            int r4 = r4 + 5
            goto L_0x01b5
        L_0x01ae:
            r7 = 127(0x7f, float:1.78E-43)
            if (r5 < r7) goto L_0x01b6
            goto L_0x01ab
        L_0x01b3:
            int r4 = r4 + 1
        L_0x01b5:
            r8 = r1
        L_0x01b6:
            int r1 = r1 + 1
            goto L_0x0189
        L_0x01b9:
            char[] r1 = r0.buf
            int r1 = r1.length
            if (r4 <= r1) goto L_0x01c1
            r0.expandCapacity(r4)
        L_0x01c1:
            r0.count = r4
        L_0x01c3:
            if (r8 < r13) goto L_0x0294
            char[] r1 = r0.buf
            char r4 = r1[r8]
            if (r4 == r11) goto L_0x0276
            if (r4 == r10) goto L_0x0276
            r5 = 10
            if (r4 == r5) goto L_0x0276
            r5 = 13
            if (r4 == r5) goto L_0x0276
            r5 = 9
            if (r4 != r5) goto L_0x01db
            goto L_0x0276
        L_0x01db:
            if (r4 == r9) goto L_0x0263
            if (r4 == r6) goto L_0x0263
            if (r4 != r14) goto L_0x01e3
            goto L_0x0263
        L_0x01e3:
            r5 = 32
            if (r4 >= r5) goto L_0x021a
            int r5 = r8 + 1
            int r7 = r8 + 6
            int r16 = r3 - r8
            int r10 = r16 + -1
            java.lang.System.arraycopy(r1, r5, r1, r7, r10)
            char[] r1 = r0.buf
            r1[r8] = r14
            r1[r5] = r12
            int r5 = r8 + 2
            r7 = 48
            r1[r5] = r7
            int r5 = r8 + 3
            r1[r5] = r7
            int r5 = r8 + 4
            char[] r7 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS
            int r4 = r4 * 2
            char r7 = r7[r4]
            r1[r5] = r7
            char[] r1 = r0.buf
            int r5 = r8 + 5
            char[] r7 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS
            int r4 = r4 + r15
            char r4 = r7[r4]
            r1[r5] = r4
        L_0x0217:
            int r3 = r3 + 5
            goto L_0x028e
        L_0x021a:
            r5 = 127(0x7f, float:1.78E-43)
            if (r4 < r5) goto L_0x028e
            int r5 = r8 + 1
            int r7 = r8 + 6
            int r10 = r3 - r8
            int r10 = r10 - r15
            java.lang.System.arraycopy(r1, r5, r1, r7, r10)
            char[] r1 = r0.buf
            r1[r8] = r14
            r1[r5] = r12
            int r5 = r8 + 2
            char[] r7 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 12
            r10 = r10 & 15
            char r7 = r7[r10]
            r1[r5] = r7
            char[] r1 = r0.buf
            int r5 = r8 + 3
            char[] r7 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 8
            r10 = r10 & 15
            char r7 = r7[r10]
            r1[r5] = r7
            char[] r1 = r0.buf
            int r5 = r8 + 4
            char[] r7 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 4
            r10 = r10 & 15
            char r7 = r7[r10]
            r1[r5] = r7
            char[] r1 = r0.buf
            int r5 = r8 + 5
            char[] r7 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r4 = r4 & 15
            char r4 = r7[r4]
            r1[r5] = r4
            goto L_0x0217
        L_0x0263:
            char[] r1 = r0.buf
            int r5 = r8 + 1
            int r7 = r8 + 2
            int r10 = r3 - r8
            int r10 = r10 - r15
            java.lang.System.arraycopy(r1, r5, r1, r7, r10)
            char[] r1 = r0.buf
            r1[r8] = r14
            r1[r5] = r4
            goto L_0x028c
        L_0x0276:
            char[] r1 = r0.buf
            int r5 = r8 + 1
            int r7 = r8 + 2
            int r10 = r3 - r8
            int r10 = r10 - r15
            java.lang.System.arraycopy(r1, r5, r1, r7, r10)
            char[] r1 = r0.buf
            r1[r8] = r14
            char[] r7 = com.alibaba.fastjson.util.IOUtils.replaceChars
            char r4 = r7[r4]
            r1[r5] = r4
        L_0x028c:
            int r3 = r3 + 1
        L_0x028e:
            int r8 = r8 + -1
            r10 = 12
            goto L_0x01c3
        L_0x0294:
            if (r2 == 0) goto L_0x02a2
            char[] r1 = r0.buf
            int r3 = r0.count
            int r4 = r3 + -2
            r1[r4] = r9
            int r3 = r3 - r15
            r1[r3] = r2
            goto L_0x02a9
        L_0x02a2:
            char[] r1 = r0.buf
            int r2 = r0.count
            int r2 = r2 - r15
            r1[r2] = r9
        L_0x02a9:
            return
        L_0x02aa:
            r10 = r4
            r4 = r13
            r5 = 0
            r7 = -1
            r11 = 0
            r17 = -1
        L_0x02b1:
            if (r4 >= r3) goto L_0x032a
            char[] r9 = r0.buf
            char r9 = r9[r4]
            r6 = 93
            if (r9 < r6) goto L_0x02d8
            r6 = 127(0x7f, float:1.78E-43)
            if (r9 < r6) goto L_0x02d5
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r9 == r6) goto L_0x02cb
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r9 == r6) goto L_0x02cb
            r6 = 160(0xa0, float:2.24E-43)
            if (r9 >= r6) goto L_0x02d5
        L_0x02cb:
            if (r7 != r8) goto L_0x02ce
            r7 = r4
        L_0x02ce:
            int r5 = r5 + 1
            int r10 = r10 + 4
            r17 = r4
            r11 = r9
        L_0x02d5:
            r18 = r13
            goto L_0x031f
        L_0x02d8:
            r6 = 64
            if (r9 >= r6) goto L_0x02ed
            r18 = r13
            long r12 = r0.sepcialBits
            r19 = 1
            long r19 = r19 << r9
            long r12 = r12 & r19
            r19 = 0
            int r21 = (r12 > r19 ? 1 : (r12 == r19 ? 0 : -1))
            if (r21 != 0) goto L_0x02f1
            goto L_0x02ef
        L_0x02ed:
            r18 = r13
        L_0x02ef:
            if (r9 != r14) goto L_0x02f3
        L_0x02f1:
            r12 = 1
            goto L_0x02f4
        L_0x02f3:
            r12 = 0
        L_0x02f4:
            if (r12 == 0) goto L_0x031f
            int r5 = r5 + 1
            r11 = 40
            if (r9 == r11) goto L_0x0314
            r11 = 41
            if (r9 == r11) goto L_0x0314
            r11 = 60
            if (r9 == r11) goto L_0x0314
            r11 = 62
            if (r9 == r11) goto L_0x0314
            byte[] r11 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            int r11 = r11.length
            if (r9 >= r11) goto L_0x0316
            byte[] r11 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r11 = r11[r9]
            r12 = 4
            if (r11 != r12) goto L_0x0316
        L_0x0314:
            int r10 = r10 + 4
        L_0x0316:
            if (r7 != r8) goto L_0x031c
            r7 = r4
            r17 = r7
            goto L_0x031e
        L_0x031c:
            r17 = r4
        L_0x031e:
            r11 = r9
        L_0x031f:
            int r4 = r4 + 1
            r13 = r18
            r6 = 47
            r9 = 34
            r12 = 117(0x75, float:1.64E-43)
            goto L_0x02b1
        L_0x032a:
            r18 = r13
            if (r5 <= 0) goto L_0x0589
            int r10 = r10 + r5
            char[] r4 = r0.buf
            int r4 = r4.length
            if (r10 <= r4) goto L_0x0337
            r0.expandCapacity(r10)
        L_0x0337:
            r0.count = r10
            if (r5 != r15) goto L_0x045c
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r11 != r1) goto L_0x0369
            int r1 = r17 + 1
            int r4 = r17 + 6
            int r3 = r3 - r17
            int r3 = r3 - r15
            char[] r5 = r0.buf
            java.lang.System.arraycopy(r5, r1, r5, r4, r3)
            char[] r3 = r0.buf
            r3[r17] = r14
            r4 = 117(0x75, float:1.64E-43)
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 50
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 48
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 50
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 56
            r3[r1] = r4
            goto L_0x0589
        L_0x0369:
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r11 != r1) goto L_0x0397
            int r1 = r17 + 1
            int r4 = r17 + 6
            int r3 = r3 - r17
            int r3 = r3 - r15
            char[] r5 = r0.buf
            java.lang.System.arraycopy(r5, r1, r5, r4, r3)
            char[] r3 = r0.buf
            r3[r17] = r14
            r4 = 117(0x75, float:1.64E-43)
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 50
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 48
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 50
            r3[r1] = r4
            int r1 = r1 + r15
            r4 = 57
            r3[r1] = r4
            goto L_0x0589
        L_0x0397:
            r1 = 40
            if (r11 == r1) goto L_0x0416
            r1 = 41
            if (r11 == r1) goto L_0x0416
            r1 = 60
            if (r11 == r1) goto L_0x0416
            r1 = 62
            if (r11 != r1) goto L_0x03a8
            goto L_0x0416
        L_0x03a8:
            byte[] r1 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            int r1 = r1.length
            if (r11 >= r1) goto L_0x03fe
            byte[] r1 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r1 = r1[r11]
            r4 = 4
            if (r1 != r4) goto L_0x03fe
            int r1 = r17 + 1
            int r4 = r17 + 6
            int r3 = r3 - r17
            int r3 = r3 - r15
            char[] r5 = r0.buf
            java.lang.System.arraycopy(r5, r1, r5, r4, r3)
            char[] r3 = r0.buf
            r3[r17] = r14
            int r4 = r1 + 1
            r5 = 117(0x75, float:1.64E-43)
            r3[r1] = r5
            int r1 = r4 + 1
            char[] r5 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r6 = r11 >>> 12
            r6 = r6 & 15
            char r5 = r5[r6]
            r3[r4] = r5
            char[] r3 = r0.buf
            int r4 = r1 + 1
            char[] r5 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r6 = r11 >>> 8
            r6 = r6 & 15
            char r5 = r5[r6]
            r3[r1] = r5
            char[] r1 = r0.buf
            int r3 = r4 + 1
            char[] r5 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r6 = r11 >>> 4
            r6 = r6 & 15
            char r5 = r5[r6]
            r1[r4] = r5
            char[] r1 = r0.buf
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r5 = r11 & 15
            char r4 = r4[r5]
            r1[r3] = r4
            goto L_0x0589
        L_0x03fe:
            int r1 = r17 + 1
            int r4 = r17 + 2
            int r3 = r3 - r17
            int r3 = r3 - r15
            char[] r5 = r0.buf
            java.lang.System.arraycopy(r5, r1, r5, r4, r3)
            char[] r3 = r0.buf
            r3[r17] = r14
            char[] r4 = com.alibaba.fastjson.util.IOUtils.replaceChars
            char r4 = r4[r11]
            r3[r1] = r4
            goto L_0x0589
        L_0x0416:
            int r1 = r17 + 1
            int r4 = r17 + 6
            int r3 = r3 - r17
            int r3 = r3 - r15
            char[] r5 = r0.buf
            java.lang.System.arraycopy(r5, r1, r5, r4, r3)
            char[] r3 = r0.buf
            r3[r17] = r14
            r4 = 117(0x75, float:1.64E-43)
            r3[r1] = r4
            int r1 = r1 + r15
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r11 >>> 12
            r5 = r5 & 15
            char r4 = r4[r5]
            r3[r1] = r4
            char[] r3 = r0.buf
            int r1 = r1 + r15
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r11 >>> 8
            r5 = r5 & 15
            char r4 = r4[r5]
            r3[r1] = r4
            char[] r3 = r0.buf
            int r1 = r1 + r15
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r5 = r11 >>> 4
            r5 = r5 & 15
            char r4 = r4[r5]
            r3[r1] = r4
            char[] r3 = r0.buf
            int r1 = r1 + r15
            char[] r4 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r5 = r11 & 15
            char r4 = r4[r5]
            r3[r1] = r4
            goto L_0x0589
        L_0x045c:
            if (r5 <= r15) goto L_0x0589
            int r3 = r7 - r18
        L_0x0460:
            int r4 = r1.length
            if (r3 >= r4) goto L_0x0589
            char r4 = r1[r3]
            boolean r5 = r0.browserSecure
            if (r5 == 0) goto L_0x04c0
            r5 = 40
            if (r4 == r5) goto L_0x0479
            r5 = 41
            if (r4 == r5) goto L_0x0479
            r5 = 60
            if (r4 == r5) goto L_0x0479
            r5 = 62
            if (r4 != r5) goto L_0x04c0
        L_0x0479:
            char[] r5 = r0.buf
            int r8 = r7 + 1
            r5[r7] = r14
            int r7 = r8 + 1
            r6 = 117(0x75, float:1.64E-43)
            r5[r8] = r6
            int r8 = r7 + 1
            char[] r9 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 12
            r10 = r10 & 15
            char r9 = r9[r10]
            r5[r7] = r9
            char[] r5 = r0.buf
            int r7 = r8 + 1
            char[] r9 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 8
            r10 = r10 & 15
            char r9 = r9[r10]
            r5[r8] = r9
            char[] r5 = r0.buf
            int r8 = r7 + 1
            char[] r9 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r10 = r4 >>> 4
            r10 = r10 & 15
            char r9 = r9[r10]
            r5[r7] = r9
            char[] r5 = r0.buf
            int r7 = r8 + 1
            char[] r9 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r4 = r4 & 15
            char r4 = r9[r4]
            r5[r8] = r4
            r5 = 47
            r6 = 117(0x75, float:1.64E-43)
            r8 = 4
            goto L_0x0585
        L_0x04c0:
            byte[] r5 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            int r5 = r5.length
            if (r4 >= r5) goto L_0x04cf
            byte[] r5 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r5 = r5[r4]
            if (r5 != 0) goto L_0x04cc
            goto L_0x04cf
        L_0x04cc:
            r5 = 47
            goto L_0x04db
        L_0x04cf:
            r5 = 47
            if (r4 != r5) goto L_0x0533
            com.alibaba.fastjson.serializer.SerializerFeature r8 = com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial
            boolean r8 = r0.isEnabled(r8)
            if (r8 == 0) goto L_0x0533
        L_0x04db:
            char[] r8 = r0.buf
            int r9 = r7 + 1
            r8[r7] = r14
            byte[] r7 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes
            byte r7 = r7[r4]
            r8 = 4
            if (r7 != r8) goto L_0x0525
            char[] r7 = r0.buf
            int r10 = r9 + 1
            r6 = 117(0x75, float:1.64E-43)
            r7[r9] = r6
            int r9 = r10 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 12
            r12 = r12 & 15
            char r11 = r11[r12]
            r7[r10] = r11
            char[] r7 = r0.buf
            int r10 = r9 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 8
            r12 = r12 & 15
            char r11 = r11[r12]
            r7[r9] = r11
            char[] r7 = r0.buf
            int r9 = r10 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 4
            r12 = r12 & 15
            char r11 = r11[r12]
            r7[r10] = r11
            char[] r7 = r0.buf
            int r10 = r9 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r4 = r4 & 15
            char r4 = r11[r4]
            r7[r9] = r4
            goto L_0x052f
        L_0x0525:
            char[] r7 = r0.buf
            int r10 = r9 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.replaceChars
            char r4 = r11[r4]
            r7[r9] = r4
        L_0x052f:
            r7 = r10
            r6 = 117(0x75, float:1.64E-43)
            goto L_0x0585
        L_0x0533:
            r8 = 4
            r9 = 8232(0x2028, float:1.1535E-41)
            if (r4 == r9) goto L_0x0544
            r9 = 8233(0x2029, float:1.1537E-41)
            if (r4 != r9) goto L_0x053d
            goto L_0x0544
        L_0x053d:
            char[] r9 = r0.buf
            int r10 = r7 + 1
            r9[r7] = r4
            goto L_0x052f
        L_0x0544:
            char[] r9 = r0.buf
            int r10 = r7 + 1
            r9[r7] = r14
            int r7 = r10 + 1
            r6 = 117(0x75, float:1.64E-43)
            r9[r10] = r6
            int r10 = r7 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 12
            r12 = r12 & 15
            char r11 = r11[r12]
            r9[r7] = r11
            char[] r7 = r0.buf
            int r9 = r10 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 8
            r12 = r12 & 15
            char r11 = r11[r12]
            r7[r10] = r11
            char[] r7 = r0.buf
            int r10 = r9 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            int r12 = r4 >>> 4
            r12 = r12 & 15
            char r11 = r11[r12]
            r7[r9] = r11
            char[] r7 = r0.buf
            int r9 = r10 + 1
            char[] r11 = com.alibaba.fastjson.util.IOUtils.DIGITS
            r4 = r4 & 15
            char r4 = r11[r4]
            r7[r10] = r4
            r7 = r9
        L_0x0585:
            int r3 = r3 + 1
            goto L_0x0460
        L_0x0589:
            if (r2 == 0) goto L_0x0599
            char[] r1 = r0.buf
            int r3 = r0.count
            int r4 = r3 + -2
            r5 = 34
            r1[r4] = r5
            int r3 = r3 - r15
            r1[r3] = r2
            goto L_0x05a2
        L_0x0599:
            r5 = 34
            char[] r1 = r0.buf
            int r2 = r0.count
            int r2 = r2 - r15
            r1[r2] = r5
        L_0x05a2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(char[], char):void");
    }

    public void writeFieldNameDirect(String str) {
        int length = str.length();
        int i = this.count + length + 3;
        if (i > this.buf.length) {
            expandCapacity(i);
        }
        int i2 = this.count;
        int i3 = i2 + 1;
        char[] cArr = this.buf;
        cArr[i2] = '\"';
        str.getChars(0, length, cArr, i3);
        this.count = i;
        char[] cArr2 = this.buf;
        int i4 = this.count;
        cArr2[i4 - 2] = '\"';
        cArr2[i4 - 1] = ':';
    }

    public void write(List<String> list) {
        boolean z;
        int i;
        if (list.isEmpty()) {
            write("[]");
            return;
        }
        int i2 = this.count;
        int size = list.size();
        int i3 = i2;
        int i4 = 0;
        while (i4 < size) {
            String str = (String) list.get(i4);
            if (str == null) {
                z = true;
            } else {
                int length = str.length();
                z = false;
                for (int i5 = 0; i5 < length; i5++) {
                    char charAt = str.charAt(i5);
                    z = charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\\';
                    if (z) {
                        break;
                    }
                }
            }
            if (z) {
                this.count = i2;
                write(91);
                for (int i6 = 0; i6 < list.size(); i6++) {
                    String str2 = (String) list.get(i6);
                    if (i6 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write("null");
                    } else {
                        writeStringWithDoubleQuote(str2, 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + i3 + 3;
            if (i4 == list.size() - 1) {
                length2++;
            }
            if (length2 > this.buf.length) {
                this.count = i3;
                expandCapacity(length2);
            }
            if (i4 == 0) {
                i = i3 + 1;
                this.buf[i3] = '[';
            } else {
                i = i3 + 1;
                this.buf[i3] = ',';
            }
            int i7 = i + 1;
            this.buf[i] = '\"';
            str.getChars(0, str.length(), this.buf, i7);
            int length3 = i7 + str.length();
            int i8 = length3 + 1;
            this.buf[length3] = '\"';
            i4++;
            i3 = i8;
        }
        int i9 = i3 + 1;
        this.buf[i3] = ']';
        this.count = i9;
    }

    public void writeFieldValue(char c, String str, char c2) {
        write((int) c);
        writeFieldName(str);
        if (c2 == 0) {
            writeString("\u0000");
        } else {
            writeString(Character.toString(c2));
        }
    }

    public void writeFieldValue(char c, String str, boolean z) {
        if (!this.quoteFieldNames) {
            write((int) c);
            writeFieldName(str);
            write(z);
            return;
        }
        int i = z ? 4 : 5;
        int length = str.length();
        int i2 = this.count + length + 4 + i;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                writeString(str);
                write(58);
                write(z);
                return;
            }
            expandCapacity(i2);
        }
        int i3 = this.count;
        this.count = i2;
        char[] cArr = this.buf;
        cArr[i3] = c;
        int i4 = i3 + length + 1;
        cArr[i3 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i3 + 2);
        this.buf[i4 + 1] = this.keySeperator;
        if (z) {
            System.arraycopy(":true".toCharArray(), 0, this.buf, i4 + 2, 5);
        } else {
            System.arraycopy(":false".toCharArray(), 0, this.buf, i4 + 2, 6);
        }
    }

    public void write(boolean z) {
        if (z) {
            write("true");
        } else {
            write("false");
        }
    }

    public void writeFieldValue(char c, String str, int i) {
        if (i == Integer.MIN_VALUE || !this.quoteFieldNames) {
            write((int) c);
            writeFieldName(str);
            writeInt(i);
            return;
        }
        int stringSize = i < 0 ? IOUtils.stringSize(-i) + 1 : IOUtils.stringSize(i);
        int length = str.length();
        int i2 = this.count + length + 4 + stringSize;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                writeFieldName(str);
                writeInt(i);
                return;
            }
            expandCapacity(i2);
        }
        int i3 = this.count;
        this.count = i2;
        char[] cArr = this.buf;
        cArr[i3] = c;
        int i4 = i3 + length + 1;
        cArr[i3 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i3 + 2);
        char[] cArr2 = this.buf;
        cArr2[i4 + 1] = this.keySeperator;
        cArr2[i4 + 2] = ':';
        IOUtils.getChars(i, this.count, cArr2);
    }

    public void writeFieldValue(char c, String str, long j) {
        if (j == Long.MIN_VALUE || !this.quoteFieldNames) {
            write((int) c);
            writeFieldName(str);
            writeLong(j);
            return;
        }
        int stringSize = j < 0 ? IOUtils.stringSize(-j) + 1 : IOUtils.stringSize(j);
        int length = str.length();
        int i = this.count + length + 4 + stringSize;
        if (i > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                writeFieldName(str);
                writeLong(j);
                return;
            }
            expandCapacity(i);
        }
        int i2 = this.count;
        this.count = i;
        char[] cArr = this.buf;
        cArr[i2] = c;
        int i3 = i2 + length + 1;
        cArr[i2 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i2 + 2);
        char[] cArr2 = this.buf;
        cArr2[i3 + 1] = this.keySeperator;
        cArr2[i3 + 2] = ':';
        IOUtils.getChars(j, this.count, cArr2);
    }

    public void writeFieldValue(char c, String str, float f) {
        write((int) c);
        writeFieldName(str);
        writeFloat(f, false);
    }

    public void writeFieldValue(char c, String str, double d) {
        write((int) c);
        writeFieldName(str);
        writeDouble(d, false);
    }

    public void writeFieldValue(char c, String str, String str2) {
        if (!this.quoteFieldNames) {
            write((int) c);
            writeFieldName(str);
            if (str2 == null) {
                writeNull();
            } else {
                writeString(str2);
            }
        } else if (this.useSingleQuotes) {
            write((int) c);
            writeFieldName(str);
            if (str2 == null) {
                writeNull();
            } else {
                writeString(str2);
            }
        } else if (isEnabled(SerializerFeature.BrowserCompatible)) {
            write((int) c);
            writeStringWithDoubleQuote(str, ':');
            writeStringWithDoubleQuote(str2, 0);
        } else {
            writeFieldValueStringWithDoubleQuoteCheck(c, str, str2);
        }
    }

    public void writeFieldValueStringWithDoubleQuoteCheck(char c, String str, String str2) {
        int i;
        int i2;
        int i3;
        String str3 = str;
        String str4 = str2;
        int length = str.length();
        int i4 = this.count;
        if (str4 == null) {
            i2 = i4 + length + 8;
            i = 4;
        } else {
            i = str2.length();
            i2 = i4 + length + i + 6;
        }
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                writeStringWithDoubleQuote(str3, ':');
                writeStringWithDoubleQuote(str4, 0);
                return;
            }
            expandCapacity(i2);
        }
        char[] cArr = this.buf;
        int i5 = this.count;
        cArr[i5] = c;
        int i6 = i5 + 2;
        int i7 = i6 + length;
        cArr[i5 + 1] = '\"';
        str3.getChars(0, length, cArr, i6);
        this.count = i2;
        char[] cArr2 = this.buf;
        cArr2[i7] = '\"';
        int i8 = i7 + 1;
        int i9 = i8 + 1;
        cArr2[i8] = ':';
        if (str4 == null) {
            int i10 = i9 + 1;
            cArr2[i9] = 'n';
            int i11 = i10 + 1;
            cArr2[i10] = 'u';
            int i12 = i11 + 1;
            cArr2[i11] = 'l';
            cArr2[i12] = 'l';
            return;
        }
        int i13 = i9 + 1;
        cArr2[i9] = '\"';
        int i14 = i13 + i;
        str4.getChars(0, i, cArr2, i13);
        int i15 = i2;
        int i16 = 0;
        char c2 = 0;
        int i17 = -1;
        int i18 = -1;
        for (int i19 = i13; i19 < i14; i19++) {
            char c3 = this.buf[i19];
            if (c3 >= ']') {
                if (c3 >= 127 && (c3 == 8232 || c3 == 8233 || c3 < 160)) {
                    if (i17 == -1) {
                        i17 = i19;
                    }
                    i16++;
                    i15 += 4;
                }
            } else {
                if ((c3 < '@' && (this.sepcialBits & (1 << c3)) != 0) || c3 == '\\') {
                    i16++;
                    if (c3 == '(' || c3 == ')' || c3 == '<' || c3 == '>' || (c3 < IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[c3] == 4)) {
                        i15 += 4;
                    }
                    if (i17 == -1) {
                        i17 = i19;
                        i18 = i17;
                        c2 = c3;
                    }
                }
            }
            i18 = i19;
            c2 = c3;
        }
        if (i16 > 0) {
            int i20 = i15 + i16;
            if (i20 > this.buf.length) {
                expandCapacity(i20);
            }
            this.count = i20;
            if (i16 == 1) {
                if (c2 == 8232) {
                    int i21 = i18 + 1;
                    int i22 = i18 + 6;
                    int i23 = (i14 - i18) - 1;
                    char[] cArr3 = this.buf;
                    System.arraycopy(cArr3, i21, cArr3, i22, i23);
                    char[] cArr4 = this.buf;
                    cArr4[i18] = '\\';
                    cArr4[i21] = 'u';
                    int i24 = i21 + 1;
                    cArr4[i24] = '2';
                    int i25 = i24 + 1;
                    cArr4[i25] = '0';
                    int i26 = i25 + 1;
                    cArr4[i26] = '2';
                    cArr4[i26 + 1] = '8';
                } else if (c2 == 8233) {
                    int i27 = i18 + 1;
                    int i28 = i18 + 6;
                    int i29 = (i14 - i18) - 1;
                    char[] cArr5 = this.buf;
                    System.arraycopy(cArr5, i27, cArr5, i28, i29);
                    char[] cArr6 = this.buf;
                    cArr6[i18] = '\\';
                    cArr6[i27] = 'u';
                    int i30 = i27 + 1;
                    cArr6[i30] = '2';
                    int i31 = i30 + 1;
                    cArr6[i31] = '0';
                    int i32 = i31 + 1;
                    cArr6[i32] = '2';
                    cArr6[i32 + 1] = '9';
                } else if (c2 == '(' || c2 == ')' || c2 == '<' || c2 == '>') {
                    int i33 = i18 + 1;
                    int i34 = i18 + 6;
                    int i35 = (i14 - i18) - 1;
                    char[] cArr7 = this.buf;
                    System.arraycopy(cArr7, i33, cArr7, i34, i35);
                    char[] cArr8 = this.buf;
                    cArr8[i18] = '\\';
                    int i36 = i33 + 1;
                    cArr8[i33] = 'u';
                    int i37 = i36 + 1;
                    cArr8[i36] = IOUtils.DIGITS[(c2 >>> 12) & 15];
                    int i38 = i37 + 1;
                    this.buf[i37] = IOUtils.DIGITS[(c2 >>> 8) & 15];
                    int i39 = i38 + 1;
                    this.buf[i38] = IOUtils.DIGITS[(c2 >>> 4) & 15];
                    this.buf[i39] = IOUtils.DIGITS[c2 & 15];
                } else if (c2 >= IOUtils.specicalFlags_doubleQuotes.length || IOUtils.specicalFlags_doubleQuotes[c2] != 4) {
                    int i40 = i18 + 1;
                    int i41 = i18 + 2;
                    int i42 = (i14 - i18) - 1;
                    char[] cArr9 = this.buf;
                    System.arraycopy(cArr9, i40, cArr9, i41, i42);
                    char[] cArr10 = this.buf;
                    cArr10[i18] = '\\';
                    cArr10[i40] = IOUtils.replaceChars[c2];
                } else {
                    int i43 = i18 + 1;
                    int i44 = i18 + 6;
                    int i45 = (i14 - i18) - 1;
                    char[] cArr11 = this.buf;
                    System.arraycopy(cArr11, i43, cArr11, i44, i45);
                    char[] cArr12 = this.buf;
                    cArr12[i18] = '\\';
                    int i46 = i43 + 1;
                    cArr12[i43] = 'u';
                    int i47 = i46 + 1;
                    cArr12[i46] = IOUtils.DIGITS[(c2 >>> 12) & 15];
                    int i48 = i47 + 1;
                    this.buf[i47] = IOUtils.DIGITS[(c2 >>> 8) & 15];
                    int i49 = i48 + 1;
                    this.buf[i48] = IOUtils.DIGITS[(c2 >>> 4) & 15];
                    this.buf[i49] = IOUtils.DIGITS[c2 & 15];
                }
            } else if (i16 > 1) {
                for (int i50 = i17 - i13; i50 < str2.length(); i50++) {
                    char charAt = str4.charAt(i50);
                    if (this.browserSecure) {
                        if (charAt == '(' || charAt == ')' || charAt == '<' || charAt == '>') {
                            char[] cArr13 = this.buf;
                            int i51 = i17 + 1;
                            cArr13[i17] = '\\';
                            int i52 = i51 + 1;
                            cArr13[i51] = 'u';
                            int i53 = i52 + 1;
                            cArr13[i52] = IOUtils.DIGITS[(charAt >>> 12) & 15];
                            int i54 = i53 + 1;
                            this.buf[i53] = IOUtils.DIGITS[(charAt >>> 8) & 15];
                            int i55 = i54 + 1;
                            this.buf[i54] = IOUtils.DIGITS[(charAt >>> 4) & 15];
                            int i56 = i55 + 1;
                            this.buf[i55] = IOUtils.DIGITS[charAt & 15];
                            i17 = i56;
                        }
                        if ((charAt >= IOUtils.specicalFlags_doubleQuotes.length && IOUtils.specicalFlags_doubleQuotes[charAt] != 0) || (charAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                            int i57 = i17 + 1;
                            this.buf[i17] = '\\';
                            if (IOUtils.specicalFlags_doubleQuotes[charAt] == 4) {
                                char[] cArr14 = this.buf;
                                int i58 = i57 + 1;
                                cArr14[i57] = 'u';
                                int i59 = i58 + 1;
                                cArr14[i58] = IOUtils.DIGITS[(charAt >>> 12) & 15];
                                int i60 = i59 + 1;
                                this.buf[i59] = IOUtils.DIGITS[(charAt >>> 8) & 15];
                                int i61 = i60 + 1;
                                this.buf[i60] = IOUtils.DIGITS[(charAt >>> 4) & 15];
                                i3 = i61 + 1;
                                this.buf[i61] = IOUtils.DIGITS[charAt & 15];
                            } else {
                                i3 = i57 + 1;
                                this.buf[i57] = IOUtils.replaceChars[charAt];
                            }
                            i17 = i3;
                        } else if (charAt != 8232 || charAt == 8233) {
                            char[] cArr15 = this.buf;
                            int i62 = i17 + 1;
                            cArr15[i17] = '\\';
                            int i63 = i62 + 1;
                            cArr15[i62] = 'u';
                            int i64 = i63 + 1;
                            cArr15[i63] = IOUtils.DIGITS[(charAt >>> 12) & 15];
                            int i65 = i64 + 1;
                            this.buf[i64] = IOUtils.DIGITS[(charAt >>> 8) & 15];
                            int i66 = i65 + 1;
                            this.buf[i65] = IOUtils.DIGITS[(charAt >>> 4) & 15];
                            int i67 = i66 + 1;
                            this.buf[i66] = IOUtils.DIGITS[charAt & 15];
                            i17 = i67;
                        } else {
                            int i68 = i17 + 1;
                            this.buf[i17] = charAt;
                            i17 = i68;
                        }
                    } else {
                        if (charAt >= IOUtils.specicalFlags_doubleQuotes.length) {
                        }
                        if (charAt != 8232) {
                        }
                        char[] cArr152 = this.buf;
                        int i622 = i17 + 1;
                        cArr152[i17] = '\\';
                        int i632 = i622 + 1;
                        cArr152[i622] = 'u';
                        int i642 = i632 + 1;
                        cArr152[i632] = IOUtils.DIGITS[(charAt >>> 12) & 15];
                        int i652 = i642 + 1;
                        this.buf[i642] = IOUtils.DIGITS[(charAt >>> 8) & 15];
                        int i662 = i652 + 1;
                        this.buf[i652] = IOUtils.DIGITS[(charAt >>> 4) & 15];
                        int i672 = i662 + 1;
                        this.buf[i662] = IOUtils.DIGITS[charAt & 15];
                        i17 = i672;
                    }
                }
            }
        }
        this.buf[this.count - 1] = '\"';
    }

    public void writeFieldValueStringWithDoubleQuote(char c, String str, String str2) {
        int length = str.length();
        int i = this.count;
        int length2 = str2.length();
        int i2 = i + length + length2 + 6;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write((int) c);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, 0);
                return;
            }
            expandCapacity(i2);
        }
        char[] cArr = this.buf;
        int i3 = this.count;
        cArr[i3] = c;
        int i4 = i3 + 2;
        int i5 = i4 + length;
        cArr[i3 + 1] = '\"';
        str.getChars(0, length, cArr, i4);
        this.count = i2;
        char[] cArr2 = this.buf;
        cArr2[i5] = '\"';
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        cArr2[i6] = ':';
        int i8 = i7 + 1;
        cArr2[i7] = '\"';
        str2.getChars(0, length2, cArr2, i8);
        this.buf[this.count - 1] = '\"';
    }

    public void writeFieldValue(char c, String str, Enum<?> enumR) {
        if (enumR == null) {
            write((int) c);
            writeFieldName(str);
            writeNull();
            return;
        }
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, enumR.name());
        } else if (this.writeEnumUsingToString) {
            writeEnumFieldValue(c, str, enumR.toString());
        } else {
            writeFieldValue(c, str, enumR.ordinal());
        }
    }

    private void writeEnumFieldValue(char c, String str, String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c, str, str2);
        }
    }

    public void writeFieldValue(char c, String str, BigDecimal bigDecimal) {
        write((int) c);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
        } else {
            write(bigDecimal.toString());
        }
    }

    public void writeString(String str, char c) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
            write((int) c);
            return;
        }
        writeStringWithDoubleQuote(str, c);
    }

    public void writeString(String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, 0);
        }
    }

    public void writeString(char[] cArr) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(cArr);
        } else {
            writeStringWithDoubleQuote(new String(cArr), 0);
        }
    }

    /* access modifiers changed from: protected */
    public void writeStringWithSingleQuote(String str) {
        int i = 0;
        if (str == null) {
            int i2 = this.count + 4;
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i2;
            return;
        }
        int length = str.length();
        int i3 = this.count + length + 2;
        if (i3 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i < str.length()) {
                    char charAt = str.charAt(i);
                    if (charAt <= 13 || charAt == '\\' || charAt == '\'' || (charAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write((int) IOUtils.replaceChars[charAt]);
                    } else {
                        write((int) charAt);
                    }
                    i++;
                }
                write(39);
                return;
            }
            expandCapacity(i3);
        }
        int i4 = this.count;
        int i5 = i4 + 1;
        int i6 = i5 + length;
        char[] cArr = this.buf;
        cArr[i4] = '\'';
        str.getChars(0, length, cArr, i5);
        this.count = i3;
        int i7 = -1;
        char c = 0;
        for (int i8 = i5; i8 < i6; i8++) {
            char c2 = this.buf[i8];
            if (c2 <= 13 || c2 == '\\' || c2 == '\'' || (c2 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                i++;
                i7 = i8;
                c = c2;
            }
        }
        int i9 = i3 + i;
        if (i9 > this.buf.length) {
            expandCapacity(i9);
        }
        this.count = i9;
        if (i == 1) {
            char[] cArr2 = this.buf;
            int i10 = i7 + 1;
            System.arraycopy(cArr2, i10, cArr2, i7 + 2, (i6 - i7) - 1);
            char[] cArr3 = this.buf;
            cArr3[i7] = '\\';
            cArr3[i10] = IOUtils.replaceChars[c];
        } else if (i > 1) {
            char[] cArr4 = this.buf;
            int i11 = i7 + 1;
            System.arraycopy(cArr4, i11, cArr4, i7 + 2, (i6 - i7) - 1);
            char[] cArr5 = this.buf;
            cArr5[i7] = '\\';
            cArr5[i11] = IOUtils.replaceChars[c];
            int i12 = i6 + 1;
            for (int i13 = i11 - 2; i13 >= i5; i13--) {
                char c3 = this.buf[i13];
                if (c3 <= 13 || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int i14 = i13 + 1;
                    System.arraycopy(cArr6, i14, cArr6, i13 + 2, (i12 - i13) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i13] = '\\';
                    cArr7[i14] = IOUtils.replaceChars[c3];
                    i12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    /* access modifiers changed from: protected */
    public void writeStringWithSingleQuote(char[] cArr) {
        int i = 0;
        if (cArr == null) {
            int i2 = this.count + 4;
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i2;
            return;
        }
        int length = cArr.length;
        int i3 = this.count + length + 2;
        if (i3 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i < cArr.length) {
                    char c = cArr[i];
                    if (c <= 13 || c == '\\' || c == '\'' || (c == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write((int) IOUtils.replaceChars[c]);
                    } else {
                        write((int) c);
                    }
                    i++;
                }
                write(39);
                return;
            }
            expandCapacity(i3);
        }
        int i4 = this.count;
        int i5 = i4 + 1;
        int i6 = length + i5;
        char[] cArr2 = this.buf;
        cArr2[i4] = '\'';
        System.arraycopy(cArr, 0, cArr2, i5, cArr.length);
        this.count = i3;
        int i7 = -1;
        char c2 = 0;
        for (int i8 = i5; i8 < i6; i8++) {
            char c3 = this.buf[i8];
            if (c3 <= 13 || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                i++;
                i7 = i8;
                c2 = c3;
            }
        }
        int i9 = i3 + i;
        if (i9 > this.buf.length) {
            expandCapacity(i9);
        }
        this.count = i9;
        if (i == 1) {
            char[] cArr3 = this.buf;
            int i10 = i7 + 1;
            System.arraycopy(cArr3, i10, cArr3, i7 + 2, (i6 - i7) - 1);
            char[] cArr4 = this.buf;
            cArr4[i7] = '\\';
            cArr4[i10] = IOUtils.replaceChars[c2];
        } else if (i > 1) {
            char[] cArr5 = this.buf;
            int i11 = i7 + 1;
            System.arraycopy(cArr5, i11, cArr5, i7 + 2, (i6 - i7) - 1);
            char[] cArr6 = this.buf;
            cArr6[i7] = '\\';
            cArr6[i11] = IOUtils.replaceChars[c2];
            int i12 = i6 + 1;
            for (int i13 = i11 - 2; i13 >= i5; i13--) {
                char c4 = this.buf[i13];
                if (c4 <= 13 || c4 == '\\' || c4 == '\'' || (c4 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.buf;
                    int i14 = i13 + 1;
                    System.arraycopy(cArr7, i14, cArr7, i13 + 2, (i12 - i13) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i13] = '\\';
                    cArr8[i14] = IOUtils.replaceChars[c4];
                    i12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeFieldName(String str) {
        writeFieldName(str, false);
    }

    public void writeFieldName(String str, boolean z) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.useSingleQuotes) {
            if (this.quoteFieldNames) {
                writeStringWithSingleQuote(str);
                write(58);
            } else {
                writeKeyWithSingleQuoteIfHasSpecial(str);
            }
        } else if (this.quoteFieldNames) {
            writeStringWithDoubleQuote(str, ':');
        } else {
            boolean z2 = str.length() == 0;
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    break;
                }
                char charAt = str.charAt(i);
                if ((charAt < '@' && (this.sepcialBits & (1 << charAt)) != 0) || charAt == '\\') {
                    z2 = true;
                    break;
                }
                i++;
            }
            if (z2) {
                writeStringWithDoubleQuote(str, ':');
            } else {
                write(str);
                write(58);
            }
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(String str) {
        int i;
        String str2 = str;
        byte[] bArr = IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z = true;
        int i2 = this.count + length + 1;
        int i3 = 0;
        if (i2 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i2);
            } else if (length == 0) {
                write(39);
                write(39);
                write(58);
                return;
            } else {
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        z = false;
                        break;
                    }
                    char charAt = str2.charAt(i4);
                    if (charAt < bArr.length && bArr[charAt] != 0) {
                        break;
                    }
                    i4++;
                }
                if (z) {
                    write(39);
                }
                while (i3 < length) {
                    char charAt2 = str2.charAt(i3);
                    if (charAt2 >= bArr.length || bArr[charAt2] == 0) {
                        write((int) charAt2);
                    } else {
                        write(92);
                        write((int) IOUtils.replaceChars[charAt2]);
                    }
                    i3++;
                }
                if (z) {
                    write(39);
                }
                write(58);
                return;
            }
        }
        if (length == 0) {
            int i5 = this.count;
            if (i5 + 3 > this.buf.length) {
                expandCapacity(i5 + 3);
            }
            char[] cArr = this.buf;
            int i6 = this.count;
            this.count = i6 + 1;
            cArr[i6] = '\'';
            int i7 = this.count;
            this.count = i7 + 1;
            cArr[i7] = '\'';
            int i8 = this.count;
            this.count = i8 + 1;
            cArr[i8] = ':';
            return;
        }
        int i9 = this.count;
        int i10 = i9 + length;
        str2.getChars(0, length, this.buf, i9);
        this.count = i2;
        int i11 = i9;
        boolean z2 = false;
        while (i11 < i10) {
            char[] cArr2 = this.buf;
            char c = cArr2[i11];
            if (c >= bArr.length || bArr[c] == 0) {
                i = i11;
            } else if (!z2) {
                i2 += 3;
                if (i2 > cArr2.length) {
                    expandCapacity(i2);
                }
                this.count = i2;
                char[] cArr3 = this.buf;
                int i12 = i11 + 1;
                System.arraycopy(cArr3, i12, cArr3, i11 + 3, (i10 - i11) - 1);
                char[] cArr4 = this.buf;
                System.arraycopy(cArr4, i3, cArr4, 1, i11);
                char[] cArr5 = this.buf;
                cArr5[i9] = '\'';
                cArr5[i12] = '\\';
                int i13 = i12 + 1;
                cArr5[i13] = IOUtils.replaceChars[c];
                i10 += 2;
                this.buf[this.count - 2] = '\'';
                i = i13;
                z2 = true;
            } else {
                i2++;
                if (i2 > cArr2.length) {
                    expandCapacity(i2);
                }
                this.count = i2;
                char[] cArr6 = this.buf;
                i = i11 + 1;
                System.arraycopy(cArr6, i, cArr6, i11 + 2, i10 - i11);
                char[] cArr7 = this.buf;
                cArr7[i11] = '\\';
                cArr7[i] = IOUtils.replaceChars[c];
                i10++;
            }
            i11 = i + 1;
            i3 = 0;
        }
        this.buf[i2 - 1] = ':';
    }

    public void flush() {
        Writer writer2 = this.writer;
        if (writer2 != null) {
            try {
                writer2.write(this.buf, 0, this.count);
                this.writer.flush();
                this.count = 0;
            } catch (IOException e) {
                throw new JSONException(e.getMessage(), e);
            }
        }
    }
}
