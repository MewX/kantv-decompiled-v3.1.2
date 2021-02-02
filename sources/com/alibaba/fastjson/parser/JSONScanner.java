package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.TimeZone;

public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0044, code lost:
        if (r11 <= 57) goto L_0x0047;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean checkDate(char r4, char r5, char r6, char r7, char r8, char r9, int r10, int r11) {
        /*
            r0 = 49
            r1 = 0
            if (r4 < r0) goto L_0x0049
            r2 = 51
            if (r4 <= r2) goto L_0x000a
            goto L_0x0049
        L_0x000a:
            r4 = 48
            if (r5 < r4) goto L_0x0049
            r3 = 57
            if (r5 <= r3) goto L_0x0013
            goto L_0x0049
        L_0x0013:
            if (r6 < r4) goto L_0x0049
            if (r6 <= r3) goto L_0x0018
            goto L_0x0049
        L_0x0018:
            if (r7 < r4) goto L_0x0049
            if (r7 <= r3) goto L_0x001d
            goto L_0x0049
        L_0x001d:
            r5 = 50
            if (r8 != r4) goto L_0x0026
            if (r9 < r0) goto L_0x0025
            if (r9 <= r3) goto L_0x002f
        L_0x0025:
            return r1
        L_0x0026:
            if (r8 != r0) goto L_0x0049
            if (r9 == r4) goto L_0x002f
            if (r9 == r0) goto L_0x002f
            if (r9 == r5) goto L_0x002f
            return r1
        L_0x002f:
            if (r10 != r4) goto L_0x0036
            if (r11 < r0) goto L_0x0035
            if (r11 <= r3) goto L_0x0047
        L_0x0035:
            return r1
        L_0x0036:
            if (r10 == r0) goto L_0x0042
            if (r10 != r5) goto L_0x003b
            goto L_0x0042
        L_0x003b:
            if (r10 != r2) goto L_0x0041
            if (r11 == r4) goto L_0x0047
            if (r11 == r0) goto L_0x0047
        L_0x0041:
            return r1
        L_0x0042:
            if (r11 < r4) goto L_0x0049
            if (r11 <= r3) goto L_0x0047
            goto L_0x0049
        L_0x0047:
            r4 = 1
            return r4
        L_0x0049:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.checkDate(char, char, char, char, char, char, int, int):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x001d, code lost:
        if (r6 <= '4') goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean checkTime(char r5, char r6, char r7, char r8, char r9, char r10) {
        /*
            r4 = this;
            r0 = 57
            r1 = 0
            r2 = 48
            if (r5 != r2) goto L_0x000c
            if (r6 < r2) goto L_0x000b
            if (r6 <= r0) goto L_0x0020
        L_0x000b:
            return r1
        L_0x000c:
            r3 = 49
            if (r5 != r3) goto L_0x0015
            if (r6 < r2) goto L_0x0014
            if (r6 <= r0) goto L_0x0020
        L_0x0014:
            return r1
        L_0x0015:
            r3 = 50
            if (r5 != r3) goto L_0x0042
            if (r6 < r2) goto L_0x0042
            r5 = 52
            if (r6 <= r5) goto L_0x0020
            goto L_0x0042
        L_0x0020:
            r5 = 53
            r6 = 54
            if (r7 < r2) goto L_0x002d
            if (r7 > r5) goto L_0x002d
            if (r8 < r2) goto L_0x002c
            if (r8 <= r0) goto L_0x0032
        L_0x002c:
            return r1
        L_0x002d:
            if (r7 != r6) goto L_0x0042
            if (r8 == r2) goto L_0x0032
            return r1
        L_0x0032:
            if (r9 < r2) goto L_0x003b
            if (r9 > r5) goto L_0x003b
            if (r10 < r2) goto L_0x003a
            if (r10 <= r0) goto L_0x0040
        L_0x003a:
            return r1
        L_0x003b:
            if (r9 != r6) goto L_0x0042
            if (r10 == r2) goto L_0x0040
            return r1
        L_0x0040:
            r5 = 1
            return r5
        L_0x0042:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.checkTime(char, char, char, char, char, char):boolean");
    }

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(String str, int i) {
        super(i);
        this.text = str;
        this.len = this.text.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public final char charAt(int i) {
        if (i >= this.len) {
            return JSONLexer.EOI;
        }
        return this.text.charAt(i);
    }

    public final char next() {
        char c;
        int i = this.bp + 1;
        this.bp = i;
        if (i >= this.len) {
            c = JSONLexer.EOI;
        } else {
            c = this.text.charAt(i);
        }
        this.ch = c;
        return c;
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }

    /* access modifiers changed from: protected */
    public final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    static boolean charArrayCompare(String str, int i, char[] cArr) {
        int length = cArr.length;
        if (length + i > str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (cArr[i2] != str.charAt(i + i2)) {
                return false;
            }
        }
        return true;
    }

    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.bp, cArr);
    }

    public final int indexOf(char c, int i) {
        return this.text.indexOf(c, i);
    }

    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    public byte[] bytesValue() {
        if (this.token != 26) {
            return IOUtils.decodeBase64(this.text, this.np + 1, this.sp);
        }
        int i = this.np + 1;
        int i2 = this.sp;
        if (i2 % 2 == 0) {
            byte[] bArr = new byte[(i2 / 2)];
            for (int i3 = 0; i3 < bArr.length; i3++) {
                int i4 = (i3 * 2) + i;
                char charAt = this.text.charAt(i4);
                char charAt2 = this.text.charAt(i4 + 1);
                char c = '0';
                int i5 = charAt - (charAt <= '9' ? '0' : '7');
                if (charAt2 > '9') {
                    c = '7';
                }
                bArr[i3] = (byte) ((i5 << 4) | (charAt2 - c));
            }
            return bArr;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("illegal state. ");
        sb.append(i2);
        throw new JSONException(sb.toString());
    }

    public final String stringVal() {
        if (!this.hasSpecial) {
            return subString(this.np + 1, this.sp);
        }
        return new String(this.sbuf, 0, this.sp);
    }

    public final String subString(int i, int i2) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(i, i2 + i);
        }
        if (i2 < this.sbuf.length) {
            this.text.getChars(i, i + i2, this.sbuf, 0);
            return new String(this.sbuf, 0, i2);
        }
        char[] cArr = new char[i2];
        this.text.getChars(i, i2 + i, cArr, 0);
        return new String(cArr);
    }

    public final char[] sub_chars(int i, int i2) {
        if (!ASMUtils.IS_ANDROID || i2 >= this.sbuf.length) {
            char[] cArr = new char[i2];
            this.text.getChars(i, i2 + i, cArr, 0);
            return cArr;
        }
        this.text.getChars(i, i2 + i, this.sbuf, 0);
        return this.sbuf;
    }

    public final String numberString() {
        char charAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        return subString(this.np, i);
    }

    public final BigDecimal decimalValue() {
        char charAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        int i2 = this.np;
        if (i < this.sbuf.length) {
            this.text.getChars(i2, i2 + i, this.sbuf, 0);
            return new BigDecimal(this.sbuf, 0, i);
        }
        char[] cArr = new char[i];
        this.text.getChars(i2, i + i2, cArr, 0);
        return new BigDecimal(cArr);
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.bp);
    }

    /* JADX WARNING: type inference failed for: r0v13, types: [char] */
    /* JADX WARNING: type inference failed for: r1v14, types: [char] */
    /* JADX WARNING: type inference failed for: r13v2, types: [int] */
    /* JADX WARNING: type inference failed for: r8v4, types: [int] */
    /* JADX WARNING: type inference failed for: r7v3, types: [int] */
    /* JADX WARNING: type inference failed for: r2v12, types: [char] */
    /* JADX WARNING: type inference failed for: r3v12, types: [char] */
    /* JADX WARNING: type inference failed for: r5v9, types: [char] */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r7v5 */
    /* JADX WARNING: type inference failed for: r13v5 */
    /* JADX WARNING: type inference failed for: r7v6 */
    /* JADX WARNING: type inference failed for: r8v8 */
    /* JADX WARNING: type inference failed for: r13v6 */
    /* JADX WARNING: type inference failed for: r13v11 */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e9, code lost:
        if (r5 != ' ') goto L_0x00f0;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0200  */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0202  */
    /* JADX WARNING: Removed duplicated region for block: B:188:0x0394  */
    /* JADX WARNING: Removed duplicated region for block: B:196:0x03c1 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x03fe  */
    /* JADX WARNING: Unknown variable types count: 9 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean scanISO8601DateIfMatch(boolean r36, int r37) {
        /*
            r35 = this;
            r9 = r35
            r10 = r37
            r11 = 8
            r12 = 0
            if (r10 >= r11) goto L_0x000a
            return r12
        L_0x000a:
            int r0 = r9.bp
            char r13 = r9.charAt(r0)
            int r0 = r9.bp
            r14 = 1
            int r0 = r0 + r14
            char r15 = r9.charAt(r0)
            int r0 = r9.bp
            r8 = 2
            int r0 = r0 + r8
            char r0 = r9.charAt(r0)
            int r1 = r9.bp
            r16 = 3
            int r1 = r1 + 3
            char r7 = r9.charAt(r1)
            int r1 = r9.bp
            int r1 = r1 + 4
            char r1 = r9.charAt(r1)
            int r2 = r9.bp
            r6 = 5
            int r2 = r2 + r6
            char r2 = r9.charAt(r2)
            int r3 = r9.bp
            r17 = 6
            int r3 = r3 + 6
            char r3 = r9.charAt(r3)
            int r4 = r9.bp
            int r4 = r4 + 7
            char r4 = r9.charAt(r4)
            r5 = 57
            r11 = 48
            if (r36 != 0) goto L_0x00c9
            r6 = 13
            if (r10 <= r6) goto L_0x00c8
            int r6 = r9.bp
            int r6 = r6 + r10
            int r6 = r6 - r14
            char r6 = r9.charAt(r6)
            int r14 = r9.bp
            int r14 = r14 + r10
            int r14 = r14 - r8
            char r14 = r9.charAt(r14)
            r8 = 47
            if (r13 != r8) goto L_0x00c8
            r8 = 68
            if (r15 != r8) goto L_0x00c8
            r8 = 97
            if (r0 != r8) goto L_0x00c8
            r8 = 116(0x74, float:1.63E-43)
            if (r7 != r8) goto L_0x00c8
            r8 = 101(0x65, float:1.42E-43)
            if (r1 != r8) goto L_0x00c8
            r8 = 40
            if (r2 != r8) goto L_0x00c8
            r8 = 47
            if (r6 != r8) goto L_0x00c8
            r6 = 41
            if (r14 != r6) goto L_0x00c8
            r0 = -1
            r0 = 6
            r1 = -1
        L_0x0089:
            if (r0 >= r10) goto L_0x00a0
            int r2 = r9.bp
            int r2 = r2 + r0
            char r2 = r9.charAt(r2)
            r3 = 43
            if (r2 != r3) goto L_0x0098
            r1 = r0
            goto L_0x009d
        L_0x0098:
            if (r2 < r11) goto L_0x00a0
            if (r2 <= r5) goto L_0x009d
            goto L_0x00a0
        L_0x009d:
            int r0 = r0 + 1
            goto L_0x0089
        L_0x00a0:
            r0 = -1
            if (r1 != r0) goto L_0x00a4
            return r12
        L_0x00a4:
            int r0 = r9.bp
            int r0 = r0 + 6
            int r2 = r9.bp
            int r2 = r2 + r1
            int r2 = r2 - r0
            java.lang.String r0 = r9.subString(r0, r2)
            long r0 = java.lang.Long.parseLong(r0)
            java.util.TimeZone r2 = r9.timeZone
            java.util.Locale r3 = r9.locale
            java.util.Calendar r2 = java.util.Calendar.getInstance(r2, r3)
            r9.calendar = r2
            java.util.Calendar r2 = r9.calendar
            r2.setTimeInMillis(r0)
            r6 = 5
            r9.token = r6
        L_0x00c6:
            r0 = 1
            return r0
        L_0x00c8:
            r6 = 5
        L_0x00c9:
            r14 = 9
            r11 = 14
            r12 = 45
            r19 = 10
            r5 = 8
            if (r10 == r5) goto L_0x04e1
            if (r10 == r11) goto L_0x04e1
            r5 = 16
            if (r10 != r5) goto L_0x00f0
            int r5 = r9.bp
            int r5 = r5 + 10
            char r5 = r9.charAt(r5)
            r6 = 84
            if (r5 == r6) goto L_0x00ec
            r6 = 32
            if (r5 == r6) goto L_0x00ec
            goto L_0x00f0
        L_0x00ec:
            r14 = r13
            r6 = 5
            goto L_0x04e2
        L_0x00f0:
            r5 = 17
            if (r10 != r5) goto L_0x00ff
            int r5 = r9.bp
            int r5 = r5 + 6
            char r5 = r9.charAt(r5)
            if (r5 == r12) goto L_0x00ff
            goto L_0x00ec
        L_0x00ff:
            if (r10 >= r14) goto L_0x0103
            r5 = 0
            return r5
        L_0x0103:
            int r5 = r9.bp
            r6 = 8
            int r5 = r5 + r6
            char r5 = r9.charAt(r5)
            int r6 = r9.bp
            int r6 = r6 + r14
            char r6 = r9.charAt(r6)
            if (r1 != r12) goto L_0x0117
            if (r4 == r12) goto L_0x011f
        L_0x0117:
            r8 = 47
            if (r1 != r8) goto L_0x012a
            r8 = 47
            if (r4 != r8) goto L_0x012a
        L_0x011f:
            r8 = r3
            r31 = r5
            r32 = r6
            r33 = 10
        L_0x0126:
            r5 = r0
            r6 = r2
            goto L_0x01ea
        L_0x012a:
            if (r1 != r12) goto L_0x014a
            if (r3 != r12) goto L_0x014a
            r1 = 32
            if (r5 != r1) goto L_0x013e
            r5 = r0
            r8 = r2
            r32 = r4
            r6 = 48
            r31 = 48
            r33 = 8
            goto L_0x01ea
        L_0x013e:
            r8 = r2
            r31 = r4
            r32 = r5
            r6 = 48
            r33 = 9
        L_0x0147:
            r5 = r0
            goto L_0x01ea
        L_0x014a:
            r8 = 46
            if (r0 != r8) goto L_0x0152
            r8 = 46
            if (r2 == r8) goto L_0x0156
        L_0x0152:
            if (r0 != r12) goto L_0x0166
            if (r2 != r12) goto L_0x0166
        L_0x0156:
            r8 = r1
            r31 = r13
            r32 = r15
            r33 = 10
            r13 = r3
            r15 = r4
            r34 = r7
            r7 = r6
            r6 = r34
            goto L_0x01ea
        L_0x0166:
            r8 = 24180(0x5e74, float:3.3883E-41)
            if (r1 == r8) goto L_0x0172
            r8 = 45380(0xb144, float:6.3591E-41)
            if (r1 != r8) goto L_0x0170
            goto L_0x0172
        L_0x0170:
            r1 = 0
            return r1
        L_0x0172:
            r1 = 26376(0x6708, float:3.696E-41)
            if (r4 == r1) goto L_0x01b1
            r1 = 50900(0xc6d4, float:7.1326E-41)
            if (r4 != r1) goto L_0x017c
            goto L_0x01b1
        L_0x017c:
            r1 = 26376(0x6708, float:3.696E-41)
            if (r3 == r1) goto L_0x0188
            r1 = 50900(0xc6d4, float:7.1326E-41)
            if (r3 != r1) goto L_0x0186
            goto L_0x0188
        L_0x0186:
            r1 = 0
            return r1
        L_0x0188:
            r1 = 26085(0x65e5, float:3.6553E-41)
            if (r5 == r1) goto L_0x01a6
            r1 = 51068(0xc77c, float:7.1562E-41)
            if (r5 != r1) goto L_0x0192
            goto L_0x01a6
        L_0x0192:
            r1 = 26085(0x65e5, float:3.6553E-41)
            if (r6 == r1) goto L_0x019e
            r1 = 51068(0xc77c, float:7.1562E-41)
            if (r6 != r1) goto L_0x019c
            goto L_0x019e
        L_0x019c:
            r1 = 0
            return r1
        L_0x019e:
            r8 = r2
            r31 = r4
            r32 = r5
            r6 = 48
            goto L_0x01e6
        L_0x01a6:
            r5 = r0
            r8 = r2
            r32 = r4
            r6 = 48
            r31 = 48
            r33 = 10
            goto L_0x01ea
        L_0x01b1:
            r1 = 26085(0x65e5, float:3.6553E-41)
            if (r6 == r1) goto L_0x01e0
            r1 = 51068(0xc77c, float:7.1562E-41)
            if (r6 != r1) goto L_0x01bb
            goto L_0x01e0
        L_0x01bb:
            int r1 = r9.bp
            int r1 = r1 + 10
            char r1 = r9.charAt(r1)
            r4 = 26085(0x65e5, float:3.6553E-41)
            if (r1 == r4) goto L_0x01d7
            int r1 = r9.bp
            int r1 = r1 + 10
            char r1 = r9.charAt(r1)
            r4 = 51068(0xc77c, float:7.1562E-41)
            if (r1 != r4) goto L_0x01d5
            goto L_0x01d7
        L_0x01d5:
            r1 = 0
            return r1
        L_0x01d7:
            r8 = r3
            r31 = r5
            r32 = r6
            r33 = 11
            goto L_0x0126
        L_0x01e0:
            r6 = r2
            r8 = r3
            r32 = r5
            r31 = 48
        L_0x01e6:
            r33 = 10
            goto L_0x0147
        L_0x01ea:
            r23 = r13
            r24 = r15
            r25 = r5
            r26 = r7
            r27 = r6
            r28 = r8
            r29 = r31
            r30 = r32
            boolean r0 = checkDate(r23, r24, r25, r26, r27, r28, r29, r30)
            if (r0 != 0) goto L_0x0202
            r0 = 0
            return r0
        L_0x0202:
            r0 = r35
            r1 = r13
            r2 = r15
            r3 = r5
            r4 = r7
            r13 = 57
            r5 = r6
            r15 = 5
            r6 = r8
            r7 = r31
            r13 = 58
            r14 = 2
            r8 = r32
            r0.setCalendar(r1, r2, r3, r4, r5, r6, r7, r8)
            int r0 = r9.bp
            int r0 = r0 + r33
            char r7 = r9.charAt(r0)
            r0 = 84
            if (r7 == r0) goto L_0x02cf
            r0 = 32
            if (r7 != r0) goto L_0x022b
            if (r36 != 0) goto L_0x022b
            goto L_0x02cf
        L_0x022b:
            r0 = 34
            if (r7 == r0) goto L_0x02a4
            r0 = 26
            if (r7 == r0) goto L_0x02a4
            r0 = 26085(0x65e5, float:3.6553E-41)
            if (r7 == r0) goto L_0x02a4
            r0 = 51068(0xc77c, float:7.1562E-41)
            if (r7 != r0) goto L_0x023d
            goto L_0x02a4
        L_0x023d:
            r0 = 43
            if (r7 == r0) goto L_0x0246
            if (r7 != r12) goto L_0x0244
            goto L_0x0246
        L_0x0244:
            r0 = 0
            return r0
        L_0x0246:
            int r0 = r9.len
            int r1 = r33 + 6
            if (r0 != r1) goto L_0x02a2
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 3
            char r0 = r9.charAt(r0)
            if (r0 != r13) goto L_0x02a0
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 4
            char r0 = r9.charAt(r0)
            r1 = 48
            if (r0 != r1) goto L_0x02a0
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + r15
            char r0 = r9.charAt(r0)
            if (r0 == r1) goto L_0x0272
            goto L_0x02a0
        L_0x0272:
            r1 = 48
            r2 = 48
            r3 = 48
            r4 = 48
            r5 = 48
            r6 = 48
            r0 = r35
            r0.setTime(r1, r2, r3, r4, r5, r6)
            java.util.Calendar r0 = r9.calendar
            r1 = 0
            r0.set(r11, r1)
            int r0 = r9.bp
            int r0 = r0 + r33
            r1 = 1
            int r0 = r0 + r1
            char r0 = r9.charAt(r0)
            int r2 = r9.bp
            int r2 = r2 + r33
            int r2 = r2 + r14
            char r2 = r9.charAt(r2)
            r9.setTimeZone(r7, r0, r2)
            return r1
        L_0x02a0:
            r0 = 0
            return r0
        L_0x02a2:
            r0 = 0
            return r0
        L_0x02a4:
            r0 = 0
            java.util.Calendar r1 = r9.calendar
            r2 = 11
            r1.set(r2, r0)
            java.util.Calendar r1 = r9.calendar
            r2 = 12
            r1.set(r2, r0)
            java.util.Calendar r1 = r9.calendar
            r2 = 13
            r1.set(r2, r0)
            java.util.Calendar r1 = r9.calendar
            r1.set(r11, r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            r9.bp = r0
            char r0 = r9.charAt(r0)
            r9.ch = r0
            r9.token = r15
            goto L_0x00c6
        L_0x02cf:
            int r7 = r33 + 9
            if (r10 >= r7) goto L_0x02d5
            r0 = 0
            return r0
        L_0x02d5:
            r0 = 0
            int r1 = r9.bp
            int r1 = r1 + r33
            int r1 = r1 + 3
            char r1 = r9.charAt(r1)
            if (r1 == r13) goto L_0x02e3
            return r0
        L_0x02e3:
            int r1 = r9.bp
            int r1 = r1 + r33
            int r1 = r1 + 6
            char r1 = r9.charAt(r1)
            if (r1 == r13) goto L_0x02f0
            return r0
        L_0x02f0:
            int r0 = r9.bp
            int r0 = r0 + r33
            r1 = 1
            int r0 = r0 + r1
            char r8 = r9.charAt(r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + r14
            char r21 = r9.charAt(r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 4
            char r22 = r9.charAt(r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + r15
            char r23 = r9.charAt(r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 7
            char r24 = r9.charAt(r0)
            int r0 = r9.bp
            int r0 = r0 + r33
            r1 = 8
            int r0 = r0 + r1
            char r18 = r9.charAt(r0)
            r0 = r35
            r1 = r8
            r2 = r21
            r3 = r22
            r4 = r23
            r5 = r24
            r6 = r18
            boolean r0 = r0.checkTime(r1, r2, r3, r4, r5, r6)
            if (r0 != 0) goto L_0x0340
            r0 = 0
            return r0
        L_0x0340:
            r0 = r35
            r1 = r8
            r2 = r21
            r3 = r22
            r4 = r23
            r5 = r24
            r6 = r18
            r0.setTime(r1, r2, r3, r4, r5, r6)
            int r0 = r9.bp
            int r0 = r0 + r33
            r1 = 9
            int r0 = r0 + r1
            char r0 = r9.charAt(r0)
            r1 = 46
            if (r0 != r1) goto L_0x04a9
            int r0 = r33 + 11
            if (r10 >= r0) goto L_0x0365
            r1 = 0
            return r1
        L_0x0365:
            int r1 = r9.bp
            int r1 = r1 + r33
            int r1 = r1 + 10
            char r1 = r9.charAt(r1)
            r2 = 48
            if (r1 < r2) goto L_0x04a7
            r3 = 57
            if (r1 <= r3) goto L_0x0379
            goto L_0x04a7
        L_0x0379:
            int r1 = r1 - r2
            if (r10 <= r0) goto L_0x0391
            int r0 = r9.bp
            int r0 = r0 + r33
            r4 = 11
            int r0 = r0 + r4
            char r0 = r9.charAt(r0)
            if (r0 < r2) goto L_0x0391
            if (r0 > r3) goto L_0x0391
            int r1 = r1 * 10
            int r0 = r0 - r2
            int r1 = r1 + r0
            r0 = 2
            goto L_0x0392
        L_0x0391:
            r0 = 1
        L_0x0392:
            if (r0 != r14) goto L_0x03ac
            int r2 = r9.bp
            int r2 = r2 + r33
            int r2 = r2 + 12
            char r2 = r9.charAt(r2)
            r3 = 48
            if (r2 < r3) goto L_0x03ac
            r4 = 57
            if (r2 > r4) goto L_0x03ac
            int r1 = r1 * 10
            int r2 = r2 - r3
            int r1 = r1 + r2
            r6 = 3
            goto L_0x03ad
        L_0x03ac:
            r6 = r0
        L_0x03ad:
            java.util.Calendar r0 = r9.calendar
            r0.set(r11, r1)
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 10
            int r0 = r0 + r6
            char r1 = r9.charAt(r0)
            r0 = 43
            if (r1 == r0) goto L_0x03ed
            if (r1 != r12) goto L_0x03c4
            goto L_0x03ed
        L_0x03c4:
            r0 = 90
            if (r1 != r0) goto L_0x03ea
            java.util.Calendar r0 = r9.calendar
            java.util.TimeZone r0 = r0.getTimeZone()
            int r0 = r0.getRawOffset()
            if (r0 == 0) goto L_0x03e7
            r0 = 0
            java.lang.String[] r1 = java.util.TimeZone.getAvailableIDs(r0)
            int r2 = r1.length
            if (r2 <= 0) goto L_0x03e7
            r1 = r1[r0]
            java.util.TimeZone r0 = java.util.TimeZone.getTimeZone(r1)
            java.util.Calendar r1 = r9.calendar
            r1.setTimeZone(r0)
        L_0x03e7:
            r12 = 1
            goto L_0x047b
        L_0x03ea:
            r12 = 0
            goto L_0x047b
        L_0x03ed:
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 10
            int r0 = r0 + r6
            r2 = 1
            int r0 = r0 + r2
            char r2 = r9.charAt(r0)
            r0 = 48
            if (r2 < r0) goto L_0x04a5
            r3 = 49
            if (r2 <= r3) goto L_0x0404
            goto L_0x04a5
        L_0x0404:
            int r3 = r9.bp
            int r3 = r3 + r33
            int r3 = r3 + 10
            int r3 = r3 + r6
            int r3 = r3 + r14
            char r3 = r9.charAt(r3)
            if (r3 < r0) goto L_0x04a3
            r0 = 57
            if (r3 <= r0) goto L_0x0418
            goto L_0x04a3
        L_0x0418:
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 10
            int r0 = r0 + r6
            int r0 = r0 + 3
            char r0 = r9.charAt(r0)
            if (r0 != r13) goto L_0x0453
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 10
            int r0 = r0 + r6
            int r0 = r0 + 4
            char r0 = r9.charAt(r0)
            r4 = 48
            if (r0 == r4) goto L_0x043e
            r4 = 51
            if (r0 == r4) goto L_0x043e
            r4 = 0
            return r4
        L_0x043e:
            r4 = 0
            int r5 = r9.bp
            int r5 = r5 + r33
            int r5 = r5 + 10
            int r5 = r5 + r6
            int r5 = r5 + r15
            char r5 = r9.charAt(r5)
            r7 = 48
            if (r5 == r7) goto L_0x0450
            return r4
        L_0x0450:
            r4 = r0
            r12 = 6
            goto L_0x0476
        L_0x0453:
            r7 = 48
            if (r0 != r7) goto L_0x0471
            int r0 = r9.bp
            int r0 = r0 + r33
            int r0 = r0 + 10
            int r0 = r0 + r6
            int r0 = r0 + 4
            char r0 = r9.charAt(r0)
            if (r0 == r7) goto L_0x046c
            r4 = 51
            if (r0 == r4) goto L_0x046c
            r4 = 0
            return r4
        L_0x046c:
            r4 = r0
            r5 = 48
            r12 = 5
            goto L_0x0476
        L_0x0471:
            r4 = 48
            r5 = 48
            r12 = 3
        L_0x0476:
            r0 = r35
            r0.setTimeZone(r1, r2, r3, r4, r5)
        L_0x047b:
            int r0 = r9.bp
            int r33 = r33 + 10
            int r33 = r33 + r6
            int r33 = r33 + r12
            int r0 = r0 + r33
            char r0 = r9.charAt(r0)
            r1 = 26
            if (r0 == r1) goto L_0x0493
            r1 = 34
            if (r0 == r1) goto L_0x0493
            r1 = 0
            return r1
        L_0x0493:
            int r0 = r9.bp
            int r0 = r0 + r33
            r9.bp = r0
            char r0 = r9.charAt(r0)
            r9.ch = r0
            r9.token = r15
            goto L_0x00c6
        L_0x04a3:
            r1 = 0
            return r1
        L_0x04a5:
            r1 = 0
            return r1
        L_0x04a7:
            r1 = 0
            return r1
        L_0x04a9:
            r1 = 0
            java.util.Calendar r2 = r9.calendar
            r2.set(r11, r1)
            int r1 = r9.bp
            int r1 = r1 + r7
            r9.bp = r1
            char r1 = r9.charAt(r1)
            r9.ch = r1
            r9.token = r15
            r1 = 90
            if (r0 != r1) goto L_0x04df
            java.util.Calendar r0 = r9.calendar
            java.util.TimeZone r0 = r0.getTimeZone()
            int r0 = r0.getRawOffset()
            if (r0 == 0) goto L_0x04df
            r0 = 0
            java.lang.String[] r1 = java.util.TimeZone.getAvailableIDs(r0)
            int r2 = r1.length
            if (r2 <= 0) goto L_0x04df
            r0 = r1[r0]
            java.util.TimeZone r0 = java.util.TimeZone.getTimeZone(r0)
            java.util.Calendar r1 = r9.calendar
            r1.setTimeZone(r0)
        L_0x04df:
            r0 = 1
            return r0
        L_0x04e1:
            r14 = r13
        L_0x04e2:
            r8 = 57
            r13 = 58
            if (r36 == 0) goto L_0x04ea
            r5 = 0
            return r5
        L_0x04ea:
            int r5 = r9.bp
            r16 = 8
            int r5 = r5 + 8
            char r16 = r9.charAt(r5)
            if (r1 != r12) goto L_0x04fa
            if (r4 != r12) goto L_0x04fa
            r5 = 1
            goto L_0x04fb
        L_0x04fa:
            r5 = 0
        L_0x04fb:
            if (r5 == 0) goto L_0x0503
            r12 = 16
            if (r10 != r12) goto L_0x0503
            r12 = 1
            goto L_0x0504
        L_0x0503:
            r12 = 0
        L_0x0504:
            if (r5 == 0) goto L_0x050d
            r5 = 17
            if (r10 != r5) goto L_0x050d
            r17 = 1
            goto L_0x050f
        L_0x050d:
            r17 = 0
        L_0x050f:
            if (r17 != 0) goto L_0x051d
            if (r12 == 0) goto L_0x0514
            goto L_0x051d
        L_0x0514:
            r20 = r1
            r21 = r2
            r22 = r3
            r23 = r4
            goto L_0x052e
        L_0x051d:
            int r1 = r9.bp
            r4 = 9
            int r1 = r1 + r4
            char r1 = r9.charAt(r1)
            r23 = r1
            r20 = r2
            r21 = r3
            r22 = r16
        L_0x052e:
            r1 = r14
            r2 = r15
            r3 = r0
            r4 = r7
            r5 = r20
            r6 = r21
            r24 = r7
            r7 = r22
            r8 = r23
            boolean r1 = checkDate(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r1 != 0) goto L_0x0544
            r1 = 0
            return r1
        L_0x0544:
            r3 = r0
            r0 = r35
            r1 = r14
            r2 = r15
            r4 = r24
            r5 = r20
            r6 = r21
            r7 = r22
            r8 = r23
            r0.setCalendar(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 8
            if (r10 == r0) goto L_0x062b
            int r0 = r9.bp
            r1 = 9
            int r0 = r0 + r1
            char r0 = r9.charAt(r0)
            int r1 = r9.bp
            int r1 = r1 + 10
            char r1 = r9.charAt(r1)
            int r2 = r9.bp
            r3 = 11
            int r2 = r2 + r3
            char r2 = r9.charAt(r2)
            int r3 = r9.bp
            int r3 = r3 + 12
            char r3 = r9.charAt(r3)
            int r4 = r9.bp
            int r4 = r4 + 13
            char r4 = r9.charAt(r4)
            if (r17 == 0) goto L_0x0598
            r5 = 84
            if (r1 != r5) goto L_0x0598
            if (r4 != r13) goto L_0x0598
            int r5 = r9.bp
            int r5 = r5 + 16
            char r5 = r9.charAt(r5)
            r6 = 90
            if (r5 == r6) goto L_0x05a4
        L_0x0598:
            if (r12 == 0) goto L_0x05bd
            r5 = 32
            if (r1 == r5) goto L_0x05a2
            r5 = 84
            if (r1 != r5) goto L_0x05bd
        L_0x05a2:
            if (r4 != r13) goto L_0x05bd
        L_0x05a4:
            int r0 = r9.bp
            int r0 = r0 + r11
            char r0 = r9.charAt(r0)
            int r1 = r9.bp
            int r1 = r1 + 15
            char r1 = r9.charAt(r1)
            r8 = r0
            r12 = r1
            r16 = r2
            r7 = r3
            r13 = 48
            r14 = 48
            goto L_0x05c2
        L_0x05bd:
            r7 = r0
            r8 = r1
            r12 = r2
            r13 = r3
            r14 = r4
        L_0x05c2:
            r0 = r35
            r1 = r16
            r2 = r7
            r3 = r8
            r4 = r12
            r5 = r13
            r6 = r14
            boolean r0 = r0.checkTime(r1, r2, r3, r4, r5, r6)
            if (r0 != 0) goto L_0x05d3
            r0 = 0
            return r0
        L_0x05d3:
            r0 = 17
            if (r10 != r0) goto L_0x0613
            if (r17 != 0) goto L_0x0613
            int r0 = r9.bp
            int r0 = r0 + r11
            char r0 = r9.charAt(r0)
            int r1 = r9.bp
            int r1 = r1 + 15
            char r1 = r9.charAt(r1)
            int r2 = r9.bp
            int r2 = r2 + 16
            char r2 = r9.charAt(r2)
            r3 = 48
            if (r0 < r3) goto L_0x0611
            r4 = 57
            if (r0 <= r4) goto L_0x05f9
            goto L_0x0611
        L_0x05f9:
            if (r1 < r3) goto L_0x060f
            if (r1 <= r4) goto L_0x05fe
            goto L_0x060f
        L_0x05fe:
            if (r2 < r3) goto L_0x060d
            if (r2 <= r4) goto L_0x0603
            goto L_0x060d
        L_0x0603:
            int r0 = r0 - r3
            int r0 = r0 * 100
            int r1 = r1 - r3
            int r1 = r1 * 10
            int r0 = r0 + r1
            int r2 = r2 - r3
            int r0 = r0 + r2
            goto L_0x0615
        L_0x060d:
            r5 = 0
            return r5
        L_0x060f:
            r5 = 0
            return r5
        L_0x0611:
            r5 = 0
            return r5
        L_0x0613:
            r5 = 0
            r0 = 0
        L_0x0615:
            r1 = 48
            int r16 = r16 + -48
            int r16 = r16 * 10
            int r7 = r7 - r1
            int r2 = r16 + r7
            int r8 = r8 - r1
            int r8 = r8 * 10
            int r12 = r12 - r1
            int r12 = r12 + r8
            int r13 = r13 - r1
            int r13 = r13 * 10
            int r14 = r14 - r1
            int r1 = r13 + r14
            r5 = r12
            goto L_0x062f
        L_0x062b:
            r5 = 0
            r0 = 0
            r1 = 0
            r2 = 0
        L_0x062f:
            java.util.Calendar r3 = r9.calendar
            r4 = 11
            r3.set(r4, r2)
            java.util.Calendar r2 = r9.calendar
            r3 = 12
            r2.set(r3, r5)
            java.util.Calendar r2 = r9.calendar
            r3 = 13
            r2.set(r3, r1)
            java.util.Calendar r1 = r9.calendar
            r1.set(r11, r0)
            r0 = 5
            r9.token = r0
            goto L_0x00c6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    /* access modifiers changed from: protected */
    public void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        int i = ((c3 - '0') * 10) + (c4 - '0');
        int i2 = ((c5 - '0') * 10) + (c6 - '0');
        this.calendar.set(11, ((c - '0') * 10) + (c2 - '0'));
        this.calendar.set(12, i);
        this.calendar.set(13, i2);
    }

    /* access modifiers changed from: protected */
    public void setTimeZone(char c, char c2, char c3) {
        setTimeZone(c, c2, c3, '0', '0');
    }

    /* access modifiers changed from: protected */
    public void setTimeZone(char c, char c2, char c3, char c4, char c5) {
        int i = ((((c2 - '0') * 10) + (c3 - '0')) * 3600 * 1000) + ((((c4 - '0') * 10) + (c5 - '0')) * 60 * 1000);
        if (c == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            String[] availableIDs = TimeZone.getAvailableIDs(i);
            if (availableIDs.length > 0) {
                this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
            }
        }
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        this.calendar = Calendar.getInstance(this.timeZone, this.locale);
        int i = (((c5 - '0') * 10) + (c6 - '0')) - 1;
        int i2 = ((c7 - '0') * 10) + (c8 - '0');
        this.calendar.set(1, ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(2, i);
        this.calendar.set(5, i2);
    }

    public boolean isEOF() {
        if (this.bp != this.len) {
            return this.ch == 26 && this.bp + 1 == this.len;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00af  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int scanFieldInt(char[] r14) {
        /*
            r13 = this;
            r0 = 0
            r13.matchStat = r0
            int r1 = r13.bp
            char r2 = r13.ch
            java.lang.String r3 = r13.text
            int r4 = r13.bp
            boolean r3 = charArrayCompare(r3, r4, r14)
            if (r3 != 0) goto L_0x0015
            r14 = -2
            r13.matchStat = r14
            return r0
        L_0x0015:
            int r3 = r13.bp
            int r14 = r14.length
            int r3 = r3 + r14
            int r14 = r3 + 1
            char r3 = r13.charAt(r3)
            r4 = 34
            r5 = 1
            if (r3 != r4) goto L_0x0026
            r6 = 1
            goto L_0x0027
        L_0x0026:
            r6 = 0
        L_0x0027:
            if (r6 == 0) goto L_0x0030
            int r3 = r14 + 1
            char r14 = r13.charAt(r14)
            goto L_0x0033
        L_0x0030:
            r12 = r3
            r3 = r14
            r14 = r12
        L_0x0033:
            r7 = 45
            if (r14 != r7) goto L_0x0039
            r7 = 1
            goto L_0x003a
        L_0x0039:
            r7 = 0
        L_0x003a:
            if (r7 == 0) goto L_0x0045
            int r14 = r3 + 1
            char r3 = r13.charAt(r3)
            r12 = r3
            r3 = r14
            r14 = r12
        L_0x0045:
            r8 = 48
            r9 = -1
            if (r14 < r8) goto L_0x0119
            r10 = 57
            if (r14 > r10) goto L_0x0119
            int r14 = r14 - r8
        L_0x004f:
            int r11 = r3 + 1
            char r3 = r13.charAt(r3)
            if (r3 < r8) goto L_0x0060
            if (r3 > r10) goto L_0x0060
            int r14 = r14 * 10
            int r3 = r3 + -48
            int r14 = r14 + r3
            r3 = r11
            goto L_0x004f
        L_0x0060:
            r8 = 46
            if (r3 != r8) goto L_0x0067
            r13.matchStat = r9
            return r0
        L_0x0067:
            if (r14 >= 0) goto L_0x006c
            r13.matchStat = r9
            return r0
        L_0x006c:
            if (r6 == 0) goto L_0x007b
            if (r3 == r4) goto L_0x0073
            r13.matchStat = r9
            return r0
        L_0x0073:
            int r3 = r11 + 1
            char r4 = r13.charAt(r11)
        L_0x0079:
            r11 = r3
            r3 = r4
        L_0x007b:
            r4 = 125(0x7d, float:1.75E-43)
            r6 = 44
            if (r3 == r6) goto L_0x0094
            if (r3 != r4) goto L_0x0084
            goto L_0x0094
        L_0x0084:
            boolean r3 = isWhitespace(r3)
            if (r3 == 0) goto L_0x0091
            int r3 = r11 + 1
            char r4 = r13.charAt(r11)
            goto L_0x0079
        L_0x0091:
            r13.matchStat = r9
            return r0
        L_0x0094:
            int r11 = r11 - r5
            r13.bp = r11
            r8 = 16
            if (r3 != r6) goto L_0x00af
            int r0 = r13.bp
            int r0 = r0 + r5
            r13.bp = r0
            char r0 = r13.charAt(r0)
            r13.ch = r0
            r0 = 3
            r13.matchStat = r0
            r13.token = r8
            if (r7 == 0) goto L_0x00ae
            int r14 = -r14
        L_0x00ae:
            return r14
        L_0x00af:
            if (r3 != r4) goto L_0x0115
            r13.bp = r11
            int r3 = r13.bp
            int r3 = r3 + r5
            r13.bp = r3
            char r3 = r13.charAt(r3)
        L_0x00bc:
            if (r3 != r6) goto L_0x00cc
            r13.token = r8
            int r0 = r13.bp
            int r0 = r0 + r5
            r13.bp = r0
            char r0 = r13.charAt(r0)
            r13.ch = r0
            goto L_0x00fa
        L_0x00cc:
            r10 = 93
            if (r3 != r10) goto L_0x00e0
            r0 = 15
            r13.token = r0
            int r0 = r13.bp
            int r0 = r0 + r5
            r13.bp = r0
            char r0 = r13.charAt(r0)
            r13.ch = r0
            goto L_0x00fa
        L_0x00e0:
            if (r3 != r4) goto L_0x00f2
            r0 = 13
            r13.token = r0
            int r0 = r13.bp
            int r0 = r0 + r5
            r13.bp = r0
            char r0 = r13.charAt(r0)
            r13.ch = r0
            goto L_0x00fa
        L_0x00f2:
            r10 = 26
            if (r3 != r10) goto L_0x00fe
            r0 = 20
            r13.token = r0
        L_0x00fa:
            r0 = 4
            r13.matchStat = r0
            goto L_0x0115
        L_0x00fe:
            boolean r3 = isWhitespace(r3)
            if (r3 == 0) goto L_0x010e
            int r3 = r13.bp
            int r3 = r3 + r5
            r13.bp = r3
            char r3 = r13.charAt(r3)
            goto L_0x00bc
        L_0x010e:
            r13.bp = r1
            r13.ch = r2
            r13.matchStat = r9
            return r0
        L_0x0115:
            if (r7 == 0) goto L_0x0118
            int r14 = -r14
        L_0x0118:
            return r14
        L_0x0119:
            r13.matchStat = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i = this.bp;
        char c = this.ch;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (isWhitespace(this.ch)) {
                next();
            } else {
                this.matchStat = -2;
                return stringDefaultValue();
            }
        }
        int length = this.bp + cArr.length;
        int i2 = length + 1;
        if (charAt(length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int indexOf = indexOf('\"', i2);
        if (indexOf != -1) {
            String subString = subString(i2, indexOf - i2);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i3 = indexOf - 1;
                    int i4 = 0;
                    while (i3 >= 0 && charAt(i3) == '\\') {
                        i4++;
                        i3--;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int length2 = indexOf - ((this.bp + cArr.length) + 1);
                subString = readString(sub_chars(this.bp + cArr.length + 1, length2), length2);
            }
            char charAt = charAt(indexOf + 1);
            while (charAt != ',' && charAt != '}') {
                if (isWhitespace(charAt)) {
                    indexOf++;
                    charAt = charAt(indexOf + 1);
                } else {
                    this.matchStat = -1;
                    return stringDefaultValue();
                }
            }
            this.bp = indexOf + 1;
            this.ch = charAt;
            if (charAt == ',') {
                int i5 = this.bp + 1;
                this.bp = i5;
                this.ch = charAt(i5);
                this.matchStat = 3;
                return subString;
            }
            int i6 = this.bp + 1;
            this.bp = i6;
            char charAt2 = charAt(i6);
            if (charAt2 == ',') {
                this.token = 16;
                int i7 = this.bp + 1;
                this.bp = i7;
                this.ch = charAt(i7);
            } else if (charAt2 == ']') {
                this.token = 15;
                int i8 = this.bp + 1;
                this.bp = i8;
                this.ch = charAt(i8);
            } else if (charAt2 == '}') {
                this.token = 13;
                int i9 = this.bp + 1;
                this.bp = i9;
                this.ch = charAt(i9);
            } else if (charAt2 == 26) {
                this.token = 20;
            } else {
                this.bp = i;
                this.ch = c;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.matchStat = 4;
            return subString;
        }
        throw new JSONException("unclosed str");
    }

    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00e5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Date scanFieldDate(char[] r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = 0
            r0.matchStat = r2
            int r3 = r0.bp
            char r4 = r0.ch
            java.lang.String r5 = r0.text
            int r6 = r0.bp
            boolean r5 = charArrayCompare(r5, r6, r1)
            r6 = 0
            if (r5 != 0) goto L_0x001a
            r1 = -2
            r0.matchStat = r1
            return r6
        L_0x001a:
            int r5 = r0.bp
            int r1 = r1.length
            int r5 = r5 + r1
            int r1 = r5 + 1
            char r5 = r0.charAt(r5)
            r7 = 34
            r8 = 125(0x7d, float:1.75E-43)
            r9 = 44
            r10 = -1
            r11 = 1
            if (r5 != r7) goto L_0x007b
            int r5 = r0.indexOf(r7, r1)
            if (r5 == r10) goto L_0x0073
            int r7 = r5 - r1
            r0.bp = r1
            boolean r1 = r0.scanISO8601DateIfMatch(r2, r7)
            if (r1 == 0) goto L_0x006e
            java.util.Calendar r1 = r0.calendar
            java.util.Date r1 = r1.getTime()
            int r2 = r5 + 1
            char r2 = r0.charAt(r2)
            r0.bp = r3
        L_0x004c:
            if (r2 == r9) goto L_0x0063
            if (r2 != r8) goto L_0x0051
            goto L_0x0063
        L_0x0051:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x0060
            int r5 = r5 + 1
            int r2 = r5 + 1
            char r2 = r0.charAt(r2)
            goto L_0x004c
        L_0x0060:
            r0.matchStat = r10
            return r6
        L_0x0063:
            int r5 = r5 + r11
            r0.bp = r5
            r0.ch = r2
            r18 = r2
            r2 = r1
            r1 = r18
            goto L_0x00d0
        L_0x006e:
            r0.bp = r3
            r0.matchStat = r10
            return r6
        L_0x0073:
            com.alibaba.fastjson.JSONException r1 = new com.alibaba.fastjson.JSONException
            java.lang.String r2 = "unclosed str"
            r1.<init>(r2)
            throw r1
        L_0x007b:
            r7 = 45
            r12 = 57
            r13 = 48
            if (r5 == r7) goto L_0x008b
            if (r5 < r13) goto L_0x0088
            if (r5 > r12) goto L_0x0088
            goto L_0x008b
        L_0x0088:
            r0.matchStat = r10
            return r6
        L_0x008b:
            if (r5 != r7) goto L_0x0095
            int r2 = r1 + 1
            char r5 = r0.charAt(r1)
            r1 = r2
            r2 = 1
        L_0x0095:
            r14 = 0
            if (r5 < r13) goto L_0x00be
            if (r5 > r12) goto L_0x00be
            int r5 = r5 + -48
            long r6 = (long) r5
        L_0x009e:
            int r5 = r1 + 1
            char r1 = r0.charAt(r1)
            if (r1 < r13) goto L_0x00b6
            if (r1 > r12) goto L_0x00b6
            r16 = 10
            long r6 = r6 * r16
            int r1 = r1 + -48
            long r12 = (long) r1
            long r6 = r6 + r12
            r1 = r5
            r12 = 57
            r13 = 48
            goto L_0x009e
        L_0x00b6:
            if (r1 == r9) goto L_0x00ba
            if (r1 != r8) goto L_0x00c0
        L_0x00ba:
            int r5 = r5 - r11
            r0.bp = r5
            goto L_0x00c0
        L_0x00be:
            r1 = r5
            r6 = r14
        L_0x00c0:
            int r5 = (r6 > r14 ? 1 : (r6 == r14 ? 0 : -1))
            if (r5 >= 0) goto L_0x00c8
            r0.matchStat = r10
        L_0x00c6:
            r1 = 0
            return r1
        L_0x00c8:
            if (r2 == 0) goto L_0x00cb
            long r6 = -r6
        L_0x00cb:
            java.util.Date r2 = new java.util.Date
            r2.<init>(r6)
        L_0x00d0:
            r5 = 16
            if (r1 != r9) goto L_0x00e5
            int r1 = r0.bp
            int r1 = r1 + r11
            r0.bp = r1
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r1 = 3
            r0.matchStat = r1
            r0.token = r5
            return r2
        L_0x00e5:
            int r1 = r0.bp
            int r1 = r1 + r11
            r0.bp = r1
            char r1 = r0.charAt(r1)
            if (r1 != r9) goto L_0x00fe
            r0.token = r5
            int r1 = r0.bp
            int r1 = r1 + r11
            r0.bp = r1
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x012c
        L_0x00fe:
            r5 = 93
            if (r1 != r5) goto L_0x0112
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r11
            r0.bp = r1
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x012c
        L_0x0112:
            if (r1 != r8) goto L_0x0124
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r11
            r0.bp = r1
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x012c
        L_0x0124:
            r5 = 26
            if (r1 != r5) goto L_0x0130
            r1 = 20
            r0.token = r1
        L_0x012c:
            r1 = 4
            r0.matchStat = r1
            return r2
        L_0x0130:
            r0.bp = r3
            r0.ch = r4
            r0.matchStat = r10
            goto L_0x00c6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldDate(char[]):java.util.Date");
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = this.bp + cArr.length;
        int i = length + 1;
        if (charAt(length) != '\"') {
            this.matchStat = -1;
            return 0;
        }
        long j = -3750763034362895579L;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(i);
            if (charAt == '\"') {
                this.bp = i2;
                char charAt2 = charAt(this.bp);
                this.ch = charAt2;
                while (charAt2 != ',') {
                    if (charAt2 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i3 = this.bp + 1;
                            this.bp = i3;
                            this.ch = charAt(i3);
                        } else if (current == ']') {
                            this.token = 15;
                            int i4 = this.bp + 1;
                            this.bp = i4;
                            this.ch = charAt(i4);
                        } else if (current == '}') {
                            this.token = 13;
                            int i5 = this.bp + 1;
                            this.bp = i5;
                            this.ch = charAt(i5);
                        } else if (current == 26) {
                            this.token = 20;
                        } else {
                            this.matchStat = -1;
                            return 0;
                        }
                        this.matchStat = 4;
                        return j;
                    } else if (isWhitespace(charAt2)) {
                        int i6 = this.bp + 1;
                        this.bp = i6;
                        charAt2 = charAt(i6);
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                }
                int i7 = this.bp + 1;
                this.bp = i7;
                this.ch = charAt(i7);
                this.matchStat = 3;
                return j;
            } else if (i2 > this.len) {
                this.matchStat = -1;
                return 0;
            } else {
                j = (j ^ ((long) charAt)) * 1099511628211L;
                i = i2;
            }
        }
    }

    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public Collection<String> scanFieldStringArray(char[] cArr, Class<?> cls) {
        char c;
        int i;
        int i2;
        char c2;
        char[] cArr2 = cArr;
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr2)) {
            this.matchStat = -2;
            return null;
        }
        Collection<String> newCollectionByType = newCollectionByType(cls);
        int length = this.bp + cArr2.length;
        int i3 = length + 1;
        String str = "ull";
        if (charAt(length) == '[') {
            int i4 = i3 + 1;
            char charAt = charAt(i3);
            while (true) {
                if (charAt == '\"') {
                    int indexOf = indexOf('\"', i4);
                    if (indexOf != -1) {
                        String subString = subString(i4, indexOf - i4);
                        if (subString.indexOf(92) != -1) {
                            while (true) {
                                int i5 = indexOf - 1;
                                int i6 = 0;
                                while (i5 >= 0 && charAt(i5) == '\\') {
                                    i6++;
                                    i5--;
                                }
                                if (i6 % 2 == 0) {
                                    break;
                                }
                                indexOf = indexOf('\"', indexOf + 1);
                            }
                            int i7 = indexOf - i4;
                            subString = readString(sub_chars(i4, i7), i7);
                        }
                        int i8 = indexOf + 1;
                        i2 = i8 + 1;
                        c2 = charAt(i8);
                        newCollectionByType.add(subString);
                    } else {
                        throw new JSONException("unclosed str");
                    }
                } else if (charAt == 'n' && this.text.startsWith(str, i4)) {
                    int i9 = i4 + 3;
                    i2 = i9 + 1;
                    c2 = charAt(i9);
                    newCollectionByType.add(null);
                } else if (charAt == ']' && newCollectionByType.size() == 0) {
                    i = i4 + 1;
                    c = charAt(i4);
                } else {
                    this.matchStat = -1;
                    return null;
                }
                if (c2 == ',') {
                    i4 = i2 + 1;
                    charAt = charAt(i2);
                } else if (c2 == ']') {
                    i = i2 + 1;
                    c = charAt(i2);
                    while (isWhitespace(c)) {
                        int i10 = i + 1;
                        c = charAt(i);
                        i = i10;
                    }
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        } else if (this.text.startsWith(str, i3)) {
            int i11 = i3 + 3;
            newCollectionByType = null;
            int i12 = i11 + 1;
            c = charAt(i11);
            i = i12;
        } else {
            this.matchStat = -1;
            return null;
        }
        this.bp = i;
        if (c == ',') {
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            return newCollectionByType;
        } else if (c == '}') {
            char charAt2 = charAt(this.bp);
            while (true) {
                if (charAt2 == ',') {
                    this.token = 16;
                    int i13 = this.bp + 1;
                    this.bp = i13;
                    this.ch = charAt(i13);
                    break;
                } else if (charAt2 == ']') {
                    this.token = 15;
                    int i14 = this.bp + 1;
                    this.bp = i14;
                    this.ch = charAt(i14);
                    break;
                } else if (charAt2 == '}') {
                    this.token = 13;
                    int i15 = this.bp + 1;
                    this.bp = i15;
                    this.ch = charAt(i15);
                    break;
                } else if (charAt2 == 26) {
                    this.token = 20;
                    this.ch = charAt2;
                    break;
                } else {
                    int i16 = i;
                    boolean z = false;
                    while (isWhitespace(charAt2)) {
                        int i17 = i16 + 1;
                        charAt2 = charAt(i16);
                        this.bp = i17;
                        i16 = i17;
                        z = true;
                    }
                    if (z) {
                        i = i16;
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
            this.matchStat = 4;
            return newCollectionByType;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public long scanFieldLong(char[] cArr) {
        int i;
        char c;
        boolean z;
        int i2;
        char charAt;
        int i3;
        char c2;
        char[] cArr2 = cArr;
        this.matchStat = 0;
        int i4 = this.bp;
        char c3 = this.ch;
        if (!charArrayCompare(this.text, this.bp, cArr2)) {
            this.matchStat = -2;
            return 0;
        }
        int length = this.bp + cArr2.length;
        int i5 = length + 1;
        char charAt2 = charAt(length);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            i = i5 + 1;
            c = charAt(i5);
        } else {
            char c4 = charAt2;
            i = i5;
            c = c4;
        }
        if (c == '-') {
            int i6 = i + 1;
            z = true;
            char charAt3 = charAt(i);
            i = i6;
            c = charAt3;
        } else {
            z = false;
        }
        if (c >= '0') {
            char c5 = '9';
            if (c <= '9') {
                int i7 = i4;
                long j = (long) (c - '0');
                while (true) {
                    i2 = i + 1;
                    charAt = charAt(i);
                    if (charAt >= '0' && charAt <= c5) {
                        j = (j * 10) + ((long) (charAt - '0'));
                        i = i2;
                        c5 = '9';
                    }
                }
                if (charAt == '.') {
                    this.matchStat = -1;
                    return 0;
                }
                if (!z2) {
                    char c6 = charAt;
                    i3 = i2;
                    c2 = c6;
                } else if (charAt != '\"') {
                    this.matchStat = -1;
                    return 0;
                } else {
                    i3 = i2 + 1;
                    c2 = charAt(i2);
                }
                if (c2 == ',' || c2 == '}') {
                    this.bp = i3 - 1;
                }
                if (!(j >= 0 || (j == Long.MIN_VALUE && z))) {
                    this.bp = i7;
                    this.ch = c3;
                    this.matchStat = -1;
                    return 0;
                }
                int i8 = i7;
                while (c2 != ',') {
                    if (c2 == '}') {
                        int i9 = this.bp + 1;
                        this.bp = i9;
                        char charAt4 = charAt(i9);
                        while (true) {
                            if (charAt4 == ',') {
                                this.token = 16;
                                int i10 = this.bp + 1;
                                this.bp = i10;
                                this.ch = charAt(i10);
                                break;
                            } else if (charAt4 == ']') {
                                this.token = 15;
                                int i11 = this.bp + 1;
                                this.bp = i11;
                                this.ch = charAt(i11);
                                break;
                            } else if (charAt4 == '}') {
                                this.token = 13;
                                int i12 = this.bp + 1;
                                this.bp = i12;
                                this.ch = charAt(i12);
                                break;
                            } else if (charAt4 == 26) {
                                this.token = 20;
                                break;
                            } else if (isWhitespace(charAt4)) {
                                int i13 = this.bp + 1;
                                this.bp = i13;
                                charAt4 = charAt(i13);
                            } else {
                                this.bp = i8;
                                this.ch = c3;
                                this.matchStat = -1;
                                return 0;
                            }
                        }
                        this.matchStat = 4;
                        if (z) {
                            j = -j;
                        }
                        return j;
                    } else if (isWhitespace(c2)) {
                        this.bp = i3;
                        int i14 = i3 + 1;
                        char charAt5 = charAt(i3);
                        i3 = i14;
                        c2 = charAt5;
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                }
                int i15 = this.bp + 1;
                this.bp = i15;
                this.ch = charAt(i15);
                this.matchStat = 3;
                this.token = 16;
                if (z) {
                    j = -j;
                }
                return j;
            }
        }
        this.bp = i4;
        this.ch = c3;
        this.matchStat = -1;
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x00fe A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x010f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean scanFieldBoolean(char[] r11) {
        /*
            r10 = this;
            r0 = 0
            r10.matchStat = r0
            java.lang.String r1 = r10.text
            int r2 = r10.bp
            boolean r1 = charArrayCompare(r1, r2, r11)
            if (r1 != 0) goto L_0x0011
            r11 = -2
            r10.matchStat = r11
            return r0
        L_0x0011:
            int r1 = r10.bp
            int r2 = r10.bp
            int r11 = r11.length
            int r2 = r2 + r11
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            r3 = 34
            r4 = 1
            if (r2 != r3) goto L_0x0024
            r5 = 1
            goto L_0x0025
        L_0x0024:
            r5 = 0
        L_0x0025:
            if (r5 == 0) goto L_0x002e
            int r2 = r11 + 1
            char r11 = r10.charAt(r11)
            goto L_0x0031
        L_0x002e:
            r9 = r2
            r2 = r11
            r11 = r9
        L_0x0031:
            r6 = 116(0x74, float:1.63E-43)
            r7 = 101(0x65, float:1.42E-43)
            r8 = -1
            if (r11 != r6) goto L_0x0074
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            r6 = 114(0x72, float:1.6E-43)
            if (r2 == r6) goto L_0x0045
            r10.matchStat = r8
            return r0
        L_0x0045:
            int r2 = r11 + 1
            char r11 = r10.charAt(r11)
            r6 = 117(0x75, float:1.64E-43)
            if (r11 == r6) goto L_0x0052
            r10.matchStat = r8
            return r0
        L_0x0052:
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            if (r2 == r7) goto L_0x005d
            r10.matchStat = r8
            return r0
        L_0x005d:
            if (r5 == 0) goto L_0x006b
            int r2 = r11 + 1
            char r11 = r10.charAt(r11)
            if (r11 == r3) goto L_0x006a
            r10.matchStat = r8
            return r0
        L_0x006a:
            r11 = r2
        L_0x006b:
            r10.bp = r11
            int r11 = r10.bp
            char r11 = r10.charAt(r11)
            goto L_0x00db
        L_0x0074:
            r6 = 102(0x66, float:1.43E-43)
            if (r11 != r6) goto L_0x00c1
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            r6 = 97
            if (r2 == r6) goto L_0x0085
            r10.matchStat = r8
            return r0
        L_0x0085:
            int r2 = r11 + 1
            char r11 = r10.charAt(r11)
            r6 = 108(0x6c, float:1.51E-43)
            if (r11 == r6) goto L_0x0092
            r10.matchStat = r8
            return r0
        L_0x0092:
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            r6 = 115(0x73, float:1.61E-43)
            if (r2 == r6) goto L_0x009f
            r10.matchStat = r8
            return r0
        L_0x009f:
            int r2 = r11 + 1
            char r11 = r10.charAt(r11)
            if (r11 == r7) goto L_0x00aa
            r10.matchStat = r8
            return r0
        L_0x00aa:
            if (r5 == 0) goto L_0x00b7
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            if (r2 == r3) goto L_0x00b8
            r10.matchStat = r8
            return r0
        L_0x00b7:
            r11 = r2
        L_0x00b8:
            r10.bp = r11
            int r11 = r10.bp
            char r11 = r10.charAt(r11)
            goto L_0x00f7
        L_0x00c1:
            r6 = 49
            if (r11 != r6) goto L_0x00dd
            if (r5 == 0) goto L_0x00d2
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            if (r2 == r3) goto L_0x00d3
            r10.matchStat = r8
            return r0
        L_0x00d2:
            r11 = r2
        L_0x00d3:
            r10.bp = r11
            int r11 = r10.bp
            char r11 = r10.charAt(r11)
        L_0x00db:
            r2 = 1
            goto L_0x00f8
        L_0x00dd:
            r6 = 48
            if (r11 != r6) goto L_0x018c
            if (r5 == 0) goto L_0x00ee
            int r11 = r2 + 1
            char r2 = r10.charAt(r2)
            if (r2 == r3) goto L_0x00ef
            r10.matchStat = r8
            return r0
        L_0x00ee:
            r11 = r2
        L_0x00ef:
            r10.bp = r11
            int r11 = r10.bp
            char r11 = r10.charAt(r11)
        L_0x00f7:
            r2 = 0
        L_0x00f8:
            r3 = 16
            r5 = 44
            if (r11 != r5) goto L_0x010f
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            r10.ch = r11
            r11 = 3
            r10.matchStat = r11
            r10.token = r3
            goto L_0x015d
        L_0x010f:
            r6 = 125(0x7d, float:1.75E-43)
            if (r11 != r6) goto L_0x0171
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
        L_0x011c:
            if (r11 != r5) goto L_0x012c
            r10.token = r3
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            r10.ch = r11
            goto L_0x015a
        L_0x012c:
            r1 = 93
            if (r11 != r1) goto L_0x0140
            r11 = 15
            r10.token = r11
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            r10.ch = r11
            goto L_0x015a
        L_0x0140:
            if (r11 != r6) goto L_0x0152
            r11 = 13
            r10.token = r11
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            r10.ch = r11
            goto L_0x015a
        L_0x0152:
            r1 = 26
            if (r11 != r1) goto L_0x015e
            r11 = 20
            r10.token = r11
        L_0x015a:
            r11 = 4
            r10.matchStat = r11
        L_0x015d:
            return r2
        L_0x015e:
            boolean r11 = isWhitespace(r11)
            if (r11 == 0) goto L_0x016e
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            goto L_0x011c
        L_0x016e:
            r10.matchStat = r8
            return r0
        L_0x0171:
            boolean r11 = isWhitespace(r11)
            if (r11 == 0) goto L_0x0182
            int r11 = r10.bp
            int r11 = r11 + r4
            r10.bp = r11
            char r11 = r10.charAt(r11)
            goto L_0x00f8
        L_0x0182:
            r10.bp = r1
            int r11 = r10.bp
            r10.charAt(r11)
            r10.matchStat = r8
            return r0
        L_0x018c:
            r10.matchStat = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:66:0x00ea  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int scanInt(char r13) {
        /*
            r12 = this;
            r0 = 0
            r12.matchStat = r0
            int r1 = r12.bp
            int r2 = r1 + 1
            char r1 = r12.charAt(r1)
        L_0x000b:
            boolean r3 = isWhitespace(r1)
            if (r3 == 0) goto L_0x001b
            int r1 = r2 + 1
            char r2 = r12.charAt(r2)
            r11 = r2
            r2 = r1
            r1 = r11
            goto L_0x000b
        L_0x001b:
            r3 = 34
            r4 = 1
            if (r1 != r3) goto L_0x0022
            r5 = 1
            goto L_0x0023
        L_0x0022:
            r5 = 0
        L_0x0023:
            if (r5 == 0) goto L_0x002e
            int r1 = r2 + 1
            char r2 = r12.charAt(r2)
            r11 = r2
            r2 = r1
            r1 = r11
        L_0x002e:
            r6 = 45
            if (r1 != r6) goto L_0x0033
            goto L_0x0034
        L_0x0033:
            r4 = 0
        L_0x0034:
            if (r4 == 0) goto L_0x003f
            int r1 = r2 + 1
            char r2 = r12.charAt(r2)
            r11 = r2
            r2 = r1
            r1 = r11
        L_0x003f:
            r6 = 16
            r7 = 48
            r8 = -1
            if (r1 < r7) goto L_0x00a1
            r9 = 57
            if (r1 > r9) goto L_0x00a1
            int r1 = r1 - r7
        L_0x004b:
            int r10 = r2 + 1
            char r2 = r12.charAt(r2)
            if (r2 < r7) goto L_0x005c
            if (r2 > r9) goto L_0x005c
            int r1 = r1 * 10
            int r2 = r2 + -48
            int r1 = r1 + r2
            r2 = r10
            goto L_0x004b
        L_0x005c:
            r7 = 46
            if (r2 != r7) goto L_0x0063
            r12.matchStat = r8
            return r0
        L_0x0063:
            if (r5 == 0) goto L_0x0071
            if (r2 == r3) goto L_0x006a
            r12.matchStat = r8
            return r0
        L_0x006a:
            int r2 = r10 + 1
            char r3 = r12.charAt(r10)
            goto L_0x0073
        L_0x0071:
            r3 = r2
            r2 = r10
        L_0x0073:
            if (r1 >= 0) goto L_0x0078
            r12.matchStat = r8
            return r0
        L_0x0078:
            if (r3 != r13) goto L_0x008d
            r12.bp = r2
            int r13 = r12.bp
            char r13 = r12.charAt(r13)
            r12.ch = r13
            r13 = 3
            r12.matchStat = r13
            r12.token = r6
            if (r4 == 0) goto L_0x008c
            int r1 = -r1
        L_0x008c:
            return r1
        L_0x008d:
            boolean r0 = isWhitespace(r3)
            if (r0 == 0) goto L_0x009b
            int r0 = r2 + 1
            char r3 = r12.charAt(r2)
            r2 = r0
            goto L_0x0078
        L_0x009b:
            r12.matchStat = r8
            if (r4 == 0) goto L_0x00a0
            int r1 = -r1
        L_0x00a0:
            return r1
        L_0x00a1:
            r13 = 110(0x6e, float:1.54E-43)
            if (r1 != r13) goto L_0x010f
            int r13 = r2 + 1
            char r1 = r12.charAt(r2)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x010f
            int r1 = r13 + 1
            char r13 = r12.charAt(r13)
            r2 = 108(0x6c, float:1.51E-43)
            if (r13 != r2) goto L_0x010f
            int r13 = r1 + 1
            char r1 = r12.charAt(r1)
            if (r1 != r2) goto L_0x010f
            r1 = 5
            r12.matchStat = r1
            int r2 = r13 + 1
            char r13 = r12.charAt(r13)
            if (r5 == 0) goto L_0x00d7
            if (r13 != r3) goto L_0x00d7
            int r13 = r2 + 1
            char r2 = r12.charAt(r2)
        L_0x00d4:
            r11 = r2
            r2 = r13
            r13 = r11
        L_0x00d7:
            r3 = 44
            if (r13 != r3) goto L_0x00ea
            r12.bp = r2
            int r13 = r12.bp
            char r13 = r12.charAt(r13)
            r12.ch = r13
            r12.matchStat = r1
            r12.token = r6
            return r0
        L_0x00ea:
            r3 = 93
            if (r13 != r3) goto L_0x00ff
            r12.bp = r2
            int r13 = r12.bp
            char r13 = r12.charAt(r13)
            r12.ch = r13
            r12.matchStat = r1
            r13 = 15
            r12.token = r13
            return r0
        L_0x00ff:
            boolean r13 = isWhitespace(r13)
            if (r13 == 0) goto L_0x010c
            int r13 = r2 + 1
            char r2 = r12.charAt(r2)
            goto L_0x00d4
        L_0x010c:
            r12.matchStat = r8
            return r0
        L_0x010f:
            r12.matchStat = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public double scanDouble(char r22) {
        /*
            r21 = this;
            r0 = r21
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r3 = r2 + 1
            char r2 = r0.charAt(r2)
            r4 = 34
            if (r2 != r4) goto L_0x0013
            r6 = 1
            goto L_0x0014
        L_0x0013:
            r6 = 0
        L_0x0014:
            if (r6 == 0) goto L_0x0021
            int r2 = r3 + 1
            char r3 = r0.charAt(r3)
            r20 = r3
            r3 = r2
            r2 = r20
        L_0x0021:
            r7 = 45
            if (r2 != r7) goto L_0x0027
            r8 = 1
            goto L_0x0028
        L_0x0027:
            r8 = 0
        L_0x0028:
            if (r8 == 0) goto L_0x0035
            int r2 = r3 + 1
            char r3 = r0.charAt(r3)
            r20 = r3
            r3 = r2
            r2 = r20
        L_0x0035:
            r9 = 16
            r10 = 0
            r12 = -1
            r13 = 48
            if (r2 < r13) goto L_0x011e
            r14 = 57
            if (r2 > r14) goto L_0x011e
            int r2 = r2 - r13
            long r1 = (long) r2
        L_0x0044:
            int r15 = r3 + 1
            char r3 = r0.charAt(r3)
            r17 = 10
            if (r3 < r13) goto L_0x005a
            if (r3 > r14) goto L_0x005a
            long r1 = r1 * r17
            int r3 = r3 + -48
            long r4 = (long) r3
            long r1 = r1 + r4
            r3 = r15
            r4 = 34
            goto L_0x0044
        L_0x005a:
            r4 = 46
            if (r3 != r4) goto L_0x0060
            r4 = 1
            goto L_0x0061
        L_0x0060:
            r4 = 0
        L_0x0061:
            if (r4 == 0) goto L_0x0095
            int r3 = r15 + 1
            char r4 = r0.charAt(r15)
            if (r4 < r13) goto L_0x0092
            if (r4 > r14) goto L_0x0092
            long r1 = r1 * r17
            int r4 = r4 - r13
            long r4 = (long) r4
            long r1 = r1 + r4
            r4 = r17
        L_0x0074:
            int r15 = r3 + 1
            char r3 = r0.charAt(r3)
            if (r3 < r13) goto L_0x008d
            if (r3 > r14) goto L_0x008d
            long r1 = r1 * r17
            int r3 = r3 + -48
            r19 = r15
            long r14 = (long) r3
            long r1 = r1 + r14
            long r4 = r4 * r17
            r3 = r19
            r14 = 57
            goto L_0x0074
        L_0x008d:
            r19 = r15
            r15 = r19
            goto L_0x0097
        L_0x0092:
            r0.matchStat = r12
            return r10
        L_0x0095:
            r4 = 1
        L_0x0097:
            r14 = 101(0x65, float:1.42E-43)
            if (r3 == r14) goto L_0x00a3
            r14 = 69
            if (r3 != r14) goto L_0x00a0
            goto L_0x00a3
        L_0x00a0:
            r16 = 0
            goto L_0x00a5
        L_0x00a3:
            r16 = 1
        L_0x00a5:
            if (r16 == 0) goto L_0x00cb
            int r3 = r15 + 1
            char r14 = r0.charAt(r15)
            r15 = 43
            if (r14 == r15) goto L_0x00b7
            if (r14 != r7) goto L_0x00b4
            goto L_0x00b7
        L_0x00b4:
            r15 = r3
            r3 = r14
            goto L_0x00be
        L_0x00b7:
            int r7 = r3 + 1
            char r3 = r0.charAt(r3)
            r15 = r7
        L_0x00be:
            if (r3 < r13) goto L_0x00cb
            r7 = 57
            if (r3 > r7) goto L_0x00cb
            int r3 = r15 + 1
            char r14 = r0.charAt(r15)
            goto L_0x00b4
        L_0x00cb:
            if (r6 == 0) goto L_0x00e5
            r6 = 34
            if (r3 == r6) goto L_0x00d4
            r0.matchStat = r12
            return r10
        L_0x00d4:
            int r3 = r15 + 1
            char r6 = r0.charAt(r15)
            int r7 = r0.bp
            r10 = 1
            int r7 = r7 + r10
            int r10 = r3 - r7
            int r10 = r10 + -2
            r15 = r3
            r3 = r6
            goto L_0x00ec
        L_0x00e5:
            r10 = 1
            int r7 = r0.bp
            int r6 = r15 - r7
            int r10 = r6 + -1
        L_0x00ec:
            if (r16 != 0) goto L_0x00ff
            r6 = 20
            if (r10 >= r6) goto L_0x00ff
            double r1 = (double) r1
            double r4 = (double) r4
            java.lang.Double.isNaN(r1)
            java.lang.Double.isNaN(r4)
            double r1 = r1 / r4
            if (r8 == 0) goto L_0x0107
            double r1 = -r1
            goto L_0x0107
        L_0x00ff:
            java.lang.String r1 = r0.subString(r7, r10)
            double r1 = java.lang.Double.parseDouble(r1)
        L_0x0107:
            r4 = r22
            if (r3 != r4) goto L_0x011b
            r0.bp = r15
            int r3 = r0.bp
            char r3 = r0.charAt(r3)
            r0.ch = r3
            r3 = 3
            r0.matchStat = r3
            r0.token = r9
            return r1
        L_0x011b:
            r0.matchStat = r12
            return r1
        L_0x011e:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x0190
            int r1 = r3 + 1
            char r2 = r0.charAt(r3)
            r3 = 117(0x75, float:1.64E-43)
            if (r2 != r3) goto L_0x0190
            int r2 = r1 + 1
            char r1 = r0.charAt(r1)
            r3 = 108(0x6c, float:1.51E-43)
            if (r1 != r3) goto L_0x0190
            int r1 = r2 + 1
            char r2 = r0.charAt(r2)
            if (r2 != r3) goto L_0x0190
            r2 = 5
            r0.matchStat = r2
            int r3 = r1 + 1
            char r1 = r0.charAt(r1)
            if (r6 == 0) goto L_0x0158
            r4 = 34
            if (r1 != r4) goto L_0x0158
            int r1 = r3 + 1
            char r3 = r0.charAt(r3)
        L_0x0153:
            r20 = r3
            r3 = r1
            r1 = r20
        L_0x0158:
            r4 = 44
            if (r1 != r4) goto L_0x016b
            r0.bp = r3
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r2
            r0.token = r9
            return r10
        L_0x016b:
            r4 = 93
            if (r1 != r4) goto L_0x0180
            r0.bp = r3
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r2
            r1 = 15
            r0.token = r1
            return r10
        L_0x0180:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto L_0x018d
            int r1 = r3 + 1
            char r3 = r0.charAt(r3)
            goto L_0x0153
        L_0x018d:
            r0.matchStat = r12
            return r10
        L_0x0190:
            r0.matchStat = r12
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    /* JADX WARNING: Removed duplicated region for block: B:67:0x00ff  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long scanLong(char r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r3 = r2 + 1
            char r2 = r0.charAt(r2)
            r4 = 34
            r5 = 1
            if (r2 != r4) goto L_0x0014
            r6 = 1
            goto L_0x0015
        L_0x0014:
            r6 = 0
        L_0x0015:
            if (r6 == 0) goto L_0x0022
            int r2 = r3 + 1
            char r3 = r0.charAt(r3)
            r18 = r3
            r3 = r2
            r2 = r18
        L_0x0022:
            r7 = 45
            if (r2 != r7) goto L_0x0028
            r7 = 1
            goto L_0x0029
        L_0x0028:
            r7 = 0
        L_0x0029:
            if (r7 == 0) goto L_0x0036
            int r2 = r3 + 1
            char r3 = r0.charAt(r3)
            r18 = r3
            r3 = r2
            r2 = r18
        L_0x0036:
            r9 = 48
            r10 = -1
            r11 = 0
            if (r2 < r9) goto L_0x00b2
            r13 = 57
            if (r2 > r13) goto L_0x00b2
            int r2 = r2 - r9
            long r14 = (long) r2
        L_0x0043:
            int r2 = r3 + 1
            char r3 = r0.charAt(r3)
            if (r3 < r9) goto L_0x0059
            if (r3 > r13) goto L_0x0059
            r16 = 10
            long r14 = r14 * r16
            int r3 = r3 + -48
            long r8 = (long) r3
            long r14 = r14 + r8
            r3 = r2
            r9 = 48
            goto L_0x0043
        L_0x0059:
            r8 = 46
            if (r3 != r8) goto L_0x0060
            r0.matchStat = r10
            return r11
        L_0x0060:
            if (r6 == 0) goto L_0x0072
            if (r3 == r4) goto L_0x0067
            r0.matchStat = r10
            return r11
        L_0x0067:
            int r3 = r2 + 1
            char r2 = r0.charAt(r2)
            r18 = r3
            r3 = r2
            r2 = r18
        L_0x0072:
            int r4 = (r14 > r11 ? 1 : (r14 == r11 ? 0 : -1))
            if (r4 >= 0) goto L_0x007e
            r8 = -9223372036854775808
            int r4 = (r14 > r8 ? 1 : (r14 == r8 ? 0 : -1))
            if (r4 != 0) goto L_0x007f
            if (r7 == 0) goto L_0x007f
        L_0x007e:
            r1 = 1
        L_0x007f:
            if (r1 != 0) goto L_0x0084
            r0.matchStat = r10
            return r11
        L_0x0084:
            r1 = r20
        L_0x0086:
            if (r3 != r1) goto L_0x009d
            r0.bp = r2
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r1 = 3
            r0.matchStat = r1
            r1 = 16
            r0.token = r1
            if (r7 == 0) goto L_0x009c
            long r14 = -r14
        L_0x009c:
            return r14
        L_0x009d:
            boolean r3 = isWhitespace(r3)
            if (r3 == 0) goto L_0x00af
            int r3 = r2 + 1
            char r2 = r0.charAt(r2)
            r18 = r3
            r3 = r2
            r2 = r18
            goto L_0x0086
        L_0x00af:
            r0.matchStat = r10
            return r14
        L_0x00b2:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x0126
            int r1 = r3 + 1
            char r2 = r0.charAt(r3)
            r3 = 117(0x75, float:1.64E-43)
            if (r2 != r3) goto L_0x0126
            int r2 = r1 + 1
            char r1 = r0.charAt(r1)
            r3 = 108(0x6c, float:1.51E-43)
            if (r1 != r3) goto L_0x0126
            int r1 = r2 + 1
            char r2 = r0.charAt(r2)
            if (r2 != r3) goto L_0x0126
            r2 = 5
            r0.matchStat = r2
            int r3 = r1 + 1
            char r1 = r0.charAt(r1)
            if (r6 == 0) goto L_0x00ea
            if (r1 != r4) goto L_0x00ea
            int r1 = r3 + 1
            char r3 = r0.charAt(r3)
        L_0x00e5:
            r18 = r3
            r3 = r1
            r1 = r18
        L_0x00ea:
            r4 = 44
            if (r1 != r4) goto L_0x00ff
            r0.bp = r3
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r2
            r4 = 16
            r0.token = r4
            return r11
        L_0x00ff:
            r4 = 16
            r5 = 93
            if (r1 != r5) goto L_0x0116
            r0.bp = r3
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r2
            r1 = 15
            r0.token = r1
            return r11
        L_0x0116:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto L_0x0123
            int r1 = r3 + 1
            char r3 = r0.charAt(r3)
            goto L_0x00e5
        L_0x0123:
            r0.matchStat = r10
            return r11
        L_0x0126:
            r0.matchStat = r10
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanLong(char):long");
    }

    public Date scanDate(char c) {
        char c2;
        Date date;
        boolean z;
        int i;
        long j;
        char c3;
        int i2;
        this.matchStat = 0;
        int i3 = this.bp;
        char c4 = this.ch;
        int i4 = this.bp;
        int i5 = i4 + 1;
        char charAt = charAt(i4);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', i5);
            if (indexOf != -1) {
                int i6 = indexOf - i5;
                this.bp = i5;
                if (scanISO8601DateIfMatch(false, i6)) {
                    date = this.calendar.getTime();
                    c2 = charAt(indexOf + 1);
                    this.bp = i3;
                    while (c2 != ',' && c2 != ']') {
                        if (isWhitespace(c2)) {
                            indexOf++;
                            c2 = charAt(indexOf + 1);
                        } else {
                            this.bp = i3;
                            this.ch = c4;
                            this.matchStat = -1;
                            return null;
                        }
                    }
                    this.bp = indexOf + 1;
                    this.ch = c2;
                } else {
                    this.bp = i3;
                    this.ch = c4;
                    this.matchStat = -1;
                    return null;
                }
            } else {
                throw new JSONException("unclosed str");
            }
        } else {
            char c5 = '9';
            char c6 = '0';
            if (charAt == '-' || (charAt >= '0' && charAt <= '9')) {
                if (charAt == '-') {
                    i = i5 + 1;
                    charAt = charAt(i5);
                    z = true;
                } else {
                    i = i5;
                    z = false;
                }
                if (charAt < '0' || charAt > '9') {
                    c3 = charAt;
                    j = 0;
                } else {
                    j = (long) (charAt - '0');
                    while (true) {
                        i2 = i + 1;
                        c3 = charAt(i);
                        if (c3 >= c6 && c3 <= c5) {
                            j = (j * 10) + ((long) (c3 - '0'));
                            i = i2;
                            c5 = '9';
                            c6 = '0';
                        } else if (c3 == ',' || c3 == ']') {
                            this.bp = i2 - 1;
                        }
                    }
                    this.bp = i2 - 1;
                }
                if (j < 0) {
                    this.bp = i3;
                    this.ch = c4;
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                c2 = c3;
                date = new Date(j);
            } else {
                if (charAt == 'n') {
                    int i7 = i5 + 1;
                    if (charAt(i5) == 'u') {
                        int i8 = i7 + 1;
                        if (charAt(i7) == 'l') {
                            int i9 = i8 + 1;
                            if (charAt(i8) == 'l') {
                                c2 = charAt(i9);
                                this.bp = i9;
                                date = null;
                            }
                        }
                    }
                }
                this.bp = i3;
                this.ch = c4;
                this.matchStat = -1;
                return null;
            }
        }
        if (c2 == ',') {
            int i10 = this.bp + 1;
            this.bp = i10;
            this.ch = charAt(i10);
            this.matchStat = 3;
            return date;
        }
        int i11 = this.bp + 1;
        this.bp = i11;
        char charAt2 = charAt(i11);
        if (charAt2 == ',') {
            this.token = 16;
            int i12 = this.bp + 1;
            this.bp = i12;
            this.ch = charAt(i12);
        } else if (charAt2 == ']') {
            this.token = 15;
            int i13 = this.bp + 1;
            this.bp = i13;
            this.ch = charAt(i13);
        } else if (charAt2 == '}') {
            this.token = 13;
            int i14 = this.bp + 1;
            this.bp = i14;
            this.ch = charAt(i14);
        } else if (charAt2 == 26) {
            this.ch = JSONLexer.EOI;
            this.token = 20;
        } else {
            this.bp = i3;
            this.ch = c4;
            this.matchStat = -1;
            return null;
        }
        this.matchStat = 4;
        return date;
    }

    /* access modifiers changed from: protected */
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }

    public String info() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("pos ");
        sb.append(this.bp);
        sb.append(", json : ");
        if (this.text.length() < 65536) {
            str = this.text;
        } else {
            str = this.text.substring(0, 65536);
        }
        sb.append(str);
        return sb.toString();
    }

    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        char c;
        int i2;
        int i3 = this.bp;
        char c2 = this.ch;
        while (isWhitespace(this.ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.bp + cArr.length;
            int i4 = length + 1;
            char charAt = this.text.charAt(length);
            while (isWhitespace(charAt)) {
                int i5 = i4 + 1;
                charAt = this.text.charAt(i4);
                i4 = i5;
            }
            if (charAt == ':') {
                i2 = i4 + 1;
                c = this.text.charAt(i4);
                while (isWhitespace(c)) {
                    int i6 = i2 + 1;
                    c = this.text.charAt(i2);
                    i2 = i6;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            i2 = this.bp + 1;
            c = this.ch;
        }
        if (c == '[') {
            this.bp = i2;
            this.ch = this.text.charAt(this.bp);
            String[] strArr = i >= 0 ? new String[i] : new String[4];
            int i7 = 0;
            while (true) {
                if (isWhitespace(this.ch)) {
                    next();
                } else if (this.ch != '\"') {
                    this.bp = i3;
                    this.ch = c2;
                    this.matchStat = -1;
                    return null;
                } else {
                    String scanSymbol = scanSymbol(symbolTable, '\"');
                    if (i7 == strArr.length) {
                        String[] strArr2 = new String[(strArr.length + (strArr.length >> 1) + 1)];
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int i8 = i7 + 1;
                    strArr[i7] = scanSymbol;
                    while (isWhitespace(this.ch)) {
                        next();
                    }
                    if (this.ch == ',') {
                        next();
                        i7 = i8;
                    } else {
                        if (strArr.length != i8) {
                            String[] strArr3 = new String[i8];
                            System.arraycopy(strArr, 0, strArr3, 0, i8);
                            strArr = strArr3;
                        }
                        while (isWhitespace(this.ch)) {
                            next();
                        }
                        if (this.ch == ']') {
                            next();
                            return strArr;
                        }
                        this.bp = i3;
                        this.ch = c2;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (c == 'n') {
                if (this.text.startsWith("ull", this.bp + 1)) {
                    this.bp += 4;
                    this.ch = this.text.charAt(this.bp);
                    return null;
                }
            }
            this.matchStat = -1;
            return null;
        }
    }

    public boolean matchField2(char[] cArr) {
        while (isWhitespace(this.ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.bp + cArr.length;
        int i = length + 1;
        char charAt = this.text.charAt(length);
        while (isWhitespace(charAt)) {
            int i2 = i + 1;
            charAt = this.text.charAt(i);
            i = i2;
        }
        if (charAt == ':') {
            this.bp = i;
            this.ch = charAt(this.bp);
            return true;
        }
        this.matchStat = -2;
        return false;
    }
}
