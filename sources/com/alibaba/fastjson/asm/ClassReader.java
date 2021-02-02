package com.alibaba.fastjson.asm;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ClassReader {
    public final byte[] b;
    public final int header;
    private final int[] items;
    private final int maxStringLength;
    private final String[] strings;

    public ClassReader(InputStream inputStream) throws IOException {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            i = 0;
            if (read == -1) {
                break;
            } else if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            }
        }
        inputStream.close();
        this.b = byteArrayOutputStream.toByteArray();
        this.items = new int[readUnsignedShort(8)];
        int length = this.items.length;
        this.strings = new String[length];
        int i2 = 1;
        int i3 = 10;
        while (i2 < length) {
            int i4 = i3 + 1;
            this.items[i2] = i4;
            byte b2 = this.b[i3];
            int i5 = 5;
            if (b2 == 1) {
                i5 = readUnsignedShort(i4) + 3;
                if (i5 > i) {
                    i = i5;
                }
            } else if (b2 != 15) {
                if (!(b2 == 18 || b2 == 3 || b2 == 4)) {
                    if (b2 != 5 && b2 != 6) {
                        switch (b2) {
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                                break;
                            default:
                                i5 = 3;
                                break;
                        }
                    } else {
                        i5 = 9;
                        i2++;
                    }
                }
            } else {
                i5 = 4;
            }
            i3 += i5;
            i2++;
        }
        this.maxStringLength = i;
        this.header = i3;
    }

    public void accept(TypeCollector typeCollector) {
        char[] cArr = new char[this.maxStringLength];
        int i = this.header;
        int i2 = this.items[readUnsignedShort(i + 4)];
        int readUnsignedShort = readUnsignedShort(i + 6);
        int i3 = i + 8;
        for (int i4 = 0; i4 < readUnsignedShort; i4++) {
            i3 += 2;
        }
        int i5 = i3 + 2;
        int i6 = i5;
        for (int readUnsignedShort2 = readUnsignedShort(i3); readUnsignedShort2 > 0; readUnsignedShort2--) {
            i6 += 8;
            for (int readUnsignedShort3 = readUnsignedShort(i6 + 6); readUnsignedShort3 > 0; readUnsignedShort3--) {
                i6 += readInt(i6 + 2) + 6;
            }
        }
        int i7 = i6 + 2;
        for (int readUnsignedShort4 = readUnsignedShort(i6); readUnsignedShort4 > 0; readUnsignedShort4--) {
            i7 += 8;
            for (int readUnsignedShort5 = readUnsignedShort(i7 + 6); readUnsignedShort5 > 0; readUnsignedShort5--) {
                i7 += readInt(i7 + 2) + 6;
            }
        }
        int i8 = i7 + 2;
        for (int readUnsignedShort6 = readUnsignedShort(i7); readUnsignedShort6 > 0; readUnsignedShort6--) {
            i8 += readInt(i8 + 2) + 6;
        }
        for (int readUnsignedShort7 = readUnsignedShort(i3); readUnsignedShort7 > 0; readUnsignedShort7--) {
            i5 += 8;
            for (int readUnsignedShort8 = readUnsignedShort(i5 + 6); readUnsignedShort8 > 0; readUnsignedShort8--) {
                i5 += readInt(i5 + 2) + 6;
            }
        }
        int i9 = i5 + 2;
        for (int readUnsignedShort9 = readUnsignedShort(i5); readUnsignedShort9 > 0; readUnsignedShort9--) {
            i9 = readMethod(typeCollector, cArr, i9);
        }
    }

    private int readMethod(TypeCollector typeCollector, char[] cArr, int i) {
        int readUnsignedShort = readUnsignedShort(i);
        String readUTF8 = readUTF8(i + 2, cArr);
        String readUTF82 = readUTF8(i + 4, cArr);
        int i2 = i + 8;
        int i3 = 0;
        int i4 = 0;
        for (int readUnsignedShort2 = readUnsignedShort(i + 6); readUnsignedShort2 > 0; readUnsignedShort2--) {
            String readUTF83 = readUTF8(i2, cArr);
            int readInt = readInt(i2 + 2);
            int i5 = i2 + 6;
            if (readUTF83.equals("Code")) {
                i4 = i5;
            }
            i2 = i5 + readInt;
        }
        MethodCollector visitMethod = typeCollector.visitMethod(readUnsignedShort, readUTF8, readUTF82);
        if (!(visitMethod == null || i4 == 0)) {
            int readInt2 = i4 + 8 + readInt(i4 + 4);
            int i6 = readInt2 + 2;
            for (int readUnsignedShort3 = readUnsignedShort(readInt2); readUnsignedShort3 > 0; readUnsignedShort3--) {
                i6 += 8;
            }
            int i7 = i6 + 2;
            int i8 = 0;
            for (int readUnsignedShort4 = readUnsignedShort(i6); readUnsignedShort4 > 0; readUnsignedShort4--) {
                String readUTF84 = readUTF8(i7, cArr);
                if (readUTF84.equals("LocalVariableTable")) {
                    i3 = i7 + 6;
                } else if (readUTF84.equals("LocalVariableTypeTable")) {
                    i8 = i7 + 6;
                }
                i7 += readInt(i7 + 2) + 6;
            }
            if (i3 != 0) {
                if (i8 != 0) {
                    int readUnsignedShort5 = readUnsignedShort(i8) * 3;
                    int i9 = i8 + 2;
                    int[] iArr = new int[readUnsignedShort5];
                    while (readUnsignedShort5 > 0) {
                        int i10 = readUnsignedShort5 - 1;
                        iArr[i10] = i9 + 6;
                        int i11 = i10 - 1;
                        iArr[i11] = readUnsignedShort(i9 + 8);
                        readUnsignedShort5 = i11 - 1;
                        iArr[readUnsignedShort5] = readUnsignedShort(i9);
                        i9 += 10;
                    }
                }
                int i12 = i3 + 2;
                for (int readUnsignedShort6 = readUnsignedShort(i3); readUnsignedShort6 > 0; readUnsignedShort6--) {
                    visitMethod.visitLocalVariable(readUTF8(i12 + 4, cArr), readUnsignedShort(i12 + 8));
                    i12 += 10;
                }
            }
        }
        return i2;
    }

    private int readUnsignedShort(int i) {
        byte[] bArr = this.b;
        return (bArr[i + 1] & Draft_75.END_OF_FRAME) | ((bArr[i] & Draft_75.END_OF_FRAME) << 8);
    }

    private int readInt(int i) {
        byte[] bArr = this.b;
        return (bArr[i + 3] & Draft_75.END_OF_FRAME) | ((bArr[i] & Draft_75.END_OF_FRAME) << 24) | ((bArr[i + 1] & Draft_75.END_OF_FRAME) << 16) | ((bArr[i + 2] & Draft_75.END_OF_FRAME) << 8);
    }

    private String readUTF8(int i, char[] cArr) {
        int readUnsignedShort = readUnsignedShort(i);
        String[] strArr = this.strings;
        String str = strArr[readUnsignedShort];
        if (str != null) {
            return str;
        }
        int i2 = this.items[readUnsignedShort];
        String readUTF = readUTF(i2 + 2, readUnsignedShort(i2), cArr);
        strArr[readUnsignedShort] = readUTF;
        return readUTF;
    }

    private String readUTF(int i, int i2, char[] cArr) {
        byte b2;
        int i3 = i2 + i;
        byte[] bArr = this.b;
        int i4 = 0;
        char c = 0;
        int i5 = 0;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = bArr[i];
            if (c != 0) {
                if (c == 1) {
                    int i7 = i4 + 1;
                    cArr[i4] = (char) ((b3 & 63) | (i5 << 6));
                    i4 = i7;
                    c = 0;
                } else if (c == 2) {
                    b2 = (b3 & 63) | (i5 << 6);
                }
                i = i6;
            } else {
                byte b4 = b3 & Draft_75.END_OF_FRAME;
                if (b4 < 128) {
                    int i8 = i4 + 1;
                    cArr[i4] = (char) b4;
                    i4 = i8;
                } else if (b4 >= 224 || b4 <= 191) {
                    i5 = (char) (b4 & 15);
                    c = 2;
                } else {
                    b2 = b4 & 31;
                }
                i = i6;
            }
            i5 = (char) b2;
            c = 1;
            i = i6;
        }
        return new String(cArr, 0, i4);
    }
}
