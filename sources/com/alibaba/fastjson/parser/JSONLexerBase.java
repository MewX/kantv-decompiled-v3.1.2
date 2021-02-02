package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.avos.avoscloud.AVException;
import com.google.android.exoplayer2.C;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    private static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal<>();
    protected static final int[] digits = new int[103];
    protected static final char[] typeFieldName;
    protected int bp;
    protected Calendar calendar = null;
    protected char ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;
    protected Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    protected int np;
    protected int pos;
    protected char[] sbuf;
    protected int sp;
    protected String stringDefaultValue = null;
    protected TimeZone timeZone = JSON.defaultTimeZone;
    protected int token;

    public static boolean isWhitespace(char c) {
        return c <= ' ' && (c == ' ' || c == 10 || c == 13 || c == 9 || c == 12 || c == 8);
    }

    public abstract String addSymbol(int i, int i2, int i3, SymbolTable symbolTable);

    /* access modifiers changed from: protected */
    public abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    public abstract byte[] bytesValue();

    /* access modifiers changed from: protected */
    public abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    /* access modifiers changed from: protected */
    public abstract void copyTo(int i, int i2, char[] cArr);

    public abstract BigDecimal decimalValue();

    public abstract int indexOf(char c, int i);

    public String info() {
        return "";
    }

    public abstract boolean isEOF();

    public abstract char next();

    public abstract String numberString();

    public abstract String stringVal();

    public abstract String subString(int i, int i2);

    /* access modifiers changed from: protected */
    public abstract char[] sub_chars(int i, int i2);

    /* access modifiers changed from: protected */
    public void lexError(String str, Object... objArr) {
        this.token = 1;
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        sb.append(JSON.DEFAULT_TYPE_KEY);
        sb.append("\":\"");
        typeFieldName = sb.toString().toCharArray();
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = (i2 - 97) + 10;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = (i3 - 65) + 10;
        }
    }

    public JSONLexerBase(int i) {
        this.features = i;
        if ((i & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        this.sbuf = (char[]) SBUF_LOCAL.get();
        if (this.sbuf == null) {
            this.sbuf = new char[512];
        }
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public void setToken(int i) {
        this.token = i;
    }

    public final void nextToken() {
        this.sp = 0;
        while (true) {
            this.pos = this.bp;
            char c = this.ch;
            if (c == '/') {
                skipComment();
            } else if (c == '\"') {
                scanString();
                return;
            } else if (c == ',') {
                next();
                this.token = 16;
                return;
            } else if (c < '0' || c > '9') {
                char c2 = this.ch;
                if (c2 != '-') {
                    switch (c2) {
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 13:
                        case ' ':
                            next();
                            break;
                        case '\'':
                            if (isEnabled(Feature.AllowSingleQuotes)) {
                                scanStringSingleQuote();
                                return;
                            }
                            throw new JSONException("Feature.AllowSingleQuotes is false");
                        case '(':
                            next();
                            this.token = 10;
                            return;
                        case ')':
                            next();
                            this.token = 11;
                            return;
                        case '+':
                            next();
                            scanNumber();
                            return;
                        case '.':
                            next();
                            this.token = 25;
                            return;
                        case ':':
                            next();
                            this.token = 17;
                            return;
                        case ';':
                            next();
                            this.token = 24;
                            return;
                        case 'N':
                        case 'S':
                        case 'T':
                        case 'u':
                            scanIdent();
                            return;
                        case '[':
                            next();
                            this.token = 14;
                            return;
                        case ']':
                            next();
                            this.token = 15;
                            return;
                        case 'f':
                            scanFalse();
                            return;
                        case 'n':
                            scanNullOrNew();
                            return;
                        case 't':
                            scanTrue();
                            return;
                        case 'x':
                            scanHex();
                            return;
                        case '{':
                            next();
                            this.token = 12;
                            return;
                        case AVException.INVALID_EMAIL_ADDRESS /*125*/:
                            next();
                            this.token = 13;
                            return;
                        default:
                            if (!isEOF()) {
                                char c3 = this.ch;
                                if (c3 > 31 && c3 != 127) {
                                    lexError("illegal.char", String.valueOf(c3));
                                    next();
                                    break;
                                } else {
                                    next();
                                    break;
                                }
                            } else if (this.token != 20) {
                                this.token = 20;
                                int i = this.eofPos;
                                this.bp = i;
                                this.pos = i;
                                break;
                            } else {
                                throw new JSONException("EOF error");
                            }
                    }
                } else {
                    scanNumber();
                    return;
                }
            } else {
                scanNumber();
                return;
            }
        }
    }

    public final void nextToken(int i) {
        this.sp = 0;
        while (true) {
            if (i == 2) {
                char c = this.ch;
                if (c < '0' || c > '9') {
                    char c2 = this.ch;
                    if (c2 == '\"') {
                        this.pos = this.bp;
                        scanString();
                        return;
                    } else if (c2 == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else if (c2 == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                } else {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                }
            } else if (i == 4) {
                char c3 = this.ch;
                if (c3 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                } else if (c3 < '0' || c3 > '9') {
                    char c4 = this.ch;
                    if (c4 == '[') {
                        this.token = 14;
                        next();
                        return;
                    } else if (c4 == '{') {
                        this.token = 12;
                        next();
                        return;
                    }
                } else {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                }
            } else if (i == 12) {
                char c5 = this.ch;
                if (c5 == '{') {
                    this.token = 12;
                    next();
                    return;
                } else if (c5 == '[') {
                    this.token = 14;
                    next();
                    return;
                }
            } else if (i != 18) {
                if (i != 20) {
                    switch (i) {
                        case 14:
                            char c6 = this.ch;
                            if (c6 == '[') {
                                this.token = 14;
                                next();
                                return;
                            } else if (c6 == '{') {
                                this.token = 12;
                                next();
                                return;
                            }
                            break;
                        case 15:
                            if (this.ch == ']') {
                                this.token = 15;
                                next();
                                return;
                            }
                            break;
                        case 16:
                            char c7 = this.ch;
                            if (c7 == ',') {
                                this.token = 16;
                                next();
                                return;
                            } else if (c7 == '}') {
                                this.token = 13;
                                next();
                                return;
                            } else if (c7 == ']') {
                                this.token = 15;
                                next();
                                return;
                            } else if (c7 == 26) {
                                this.token = 20;
                                return;
                            }
                            break;
                    }
                }
                if (this.ch == 26) {
                    this.token = 20;
                    return;
                }
            } else {
                nextIdent();
                return;
            }
            char c8 = this.ch;
            if (c8 == ' ' || c8 == 10 || c8 == 13 || c8 == 9 || c8 == 12 || c8 == 8) {
                next();
            } else {
                nextToken();
                return;
            }
        }
    }

    public final void nextIdent() {
        while (isWhitespace(this.ch)) {
            next();
        }
        char c = this.ch;
        if (c == '_' || c == '$' || Character.isLetter(c)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    public final void nextTokenWithChar(char c) {
        this.sp = 0;
        while (true) {
            char c2 = this.ch;
            if (c2 == c) {
                next();
                nextToken();
                return;
            } else if (c2 == ' ' || c2 == 10 || c2 == 13 || c2 == 9 || c2 == 12 || c2 == 8) {
                next();
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("not match ");
                sb.append(c);
                sb.append(" - ");
                sb.append(this.ch);
                sb.append(", info : ");
                sb.append(info());
                throw new JSONException(sb.toString());
            }
        }
    }

    public final int token() {
        return this.token;
    }

    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    public final int pos() {
        return this.pos;
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    public final Number integerValue() throws NumberFormatException {
        long j;
        long j2;
        boolean z = false;
        if (this.np == -1) {
            this.np = 0;
        }
        int i = this.np;
        int i2 = this.sp + i;
        char c = ' ';
        char charAt = charAt(i2 - 1);
        if (charAt == 'B') {
            i2--;
            c = 'B';
        } else if (charAt == 'L') {
            i2--;
            c = 'L';
        } else if (charAt == 'S') {
            i2--;
            c = 'S';
        }
        if (charAt(this.np) == '-') {
            j = Long.MIN_VALUE;
            i++;
            z = true;
        } else {
            j = C.TIME_UNSET;
        }
        long j3 = MULTMIN_RADIX_TEN;
        if (i < i2) {
            j2 = (long) (-(charAt(i) - '0'));
            i++;
        } else {
            j2 = 0;
        }
        while (i < i2) {
            int i3 = i + 1;
            int charAt2 = charAt(i) - '0';
            if (j2 < j3) {
                return new BigInteger(numberString());
            }
            long j4 = j2 * 10;
            long j5 = (long) charAt2;
            if (j4 < j + j5) {
                return new BigInteger(numberString());
            }
            j2 = j4 - j5;
            i = i3;
            j3 = MULTMIN_RADIX_TEN;
        }
        if (!z) {
            long j6 = -j2;
            if (j6 > 2147483647L || c == 'L') {
                return Long.valueOf(j6);
            }
            if (c == 'S') {
                return Short.valueOf((short) ((int) j6));
            }
            if (c == 'B') {
                return Byte.valueOf((byte) ((int) j6));
            }
            return Integer.valueOf((int) j6);
        } else if (i <= this.np + 1) {
            throw new NumberFormatException(numberString());
        } else if (j2 < -2147483648L || c == 'L') {
            return Long.valueOf(j2);
        } else {
            if (c == 'S') {
                return Short.valueOf((short) ((int) j2));
            }
            if (c == 'B') {
                return Byte.valueOf((byte) ((int) j2));
            }
            return Integer.valueOf((int) j2);
        }
    }

    public final void nextTokenWithColon(int i) {
        nextTokenWithChar(':');
    }

    public float floatValue() {
        String numberString = numberString();
        float parseFloat = Float.parseFloat(numberString);
        if (parseFloat == 0.0f || parseFloat == Float.POSITIVE_INFINITY) {
            char charAt = numberString.charAt(0);
            if (charAt > '0' && charAt <= '9') {
                StringBuilder sb = new StringBuilder();
                sb.append("float overflow : ");
                sb.append(numberString);
                throw new JSONException(sb.toString());
            }
        }
        return parseFloat;
    }

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    public void config(Feature feature, boolean z) {
        this.features = Feature.config(this.features, feature, z);
        if ((this.features & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    public final boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public final boolean isEnabled(int i, int i2) {
        return ((this.features & i2) == 0 && (i & i2) == 0) ? false : true;
    }

    public final char getCurrent() {
        return this.ch;
    }

    /* access modifiers changed from: protected */
    public void skipComment() {
        char c;
        next();
        char c2 = this.ch;
        if (c2 == '/') {
            do {
                next();
                c = this.ch;
                if (c == 10) {
                    next();
                    return;
                }
            } while (c != 26);
        } else if (c2 == '*') {
            next();
            while (true) {
                char c3 = this.ch;
                if (c3 == 26) {
                    return;
                }
                if (c3 == '*') {
                    next();
                    if (this.ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        } else {
            throw new JSONException("invalid comment");
        }
    }

    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        char c = this.ch;
        if (c == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        String str = "syntax error";
        if (c == '\'') {
            if (isEnabled(Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, '\'');
            }
            throw new JSONException(str);
        } else if (c == '}') {
            next();
            this.token = 13;
            return null;
        } else if (c == ',') {
            next();
            this.token = 16;
            return null;
        } else if (c == 26) {
            this.token = 20;
            return null;
        } else if (isEnabled(Feature.AllowUnQuotedFieldNames)) {
            return scanSymbolUnQuoted(symbolTable);
        } else {
            throw new JSONException(str);
        }
    }

    public final String scanSymbol(SymbolTable symbolTable, char c) {
        String str;
        this.np = this.bp;
        this.sp = 0;
        boolean z = false;
        int i = 0;
        while (true) {
            char next = next();
            if (next == c) {
                this.token = 4;
                if (!z) {
                    int i2 = this.np;
                    str = addSymbol(i2 == -1 ? 0 : i2 + 1, this.sp, i, symbolTable);
                } else {
                    str = symbolTable.addSymbol(this.sbuf, 0, this.sp, i);
                }
                this.sp = 0;
                next();
                return str;
            } else if (next == 26) {
                throw new JSONException("unclosed.str");
            } else if (next == '\\') {
                if (!z) {
                    int i3 = this.sp;
                    char[] cArr = this.sbuf;
                    if (i3 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i3 <= length) {
                            i3 = length;
                        }
                        char[] cArr2 = new char[i3];
                        char[] cArr3 = this.sbuf;
                        System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
                    z = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i = (i * 31) + 34;
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i = (i * 31) + 92;
                            putChar('\\');
                        } else if (next2 == 'b') {
                            i = (i * 31) + 8;
                            putChar(8);
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i = (i * 31) + 10;
                                putChar(10);
                            } else if (next2 == 'r') {
                                i = (i * 31) + 13;
                                putChar(13);
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i = (i * 31) + 47;
                                        putChar('/');
                                        break;
                                    case '0':
                                        i = (i * 31) + next2;
                                        putChar(0);
                                        break;
                                    case '1':
                                        i = (i * 31) + next2;
                                        putChar(1);
                                        break;
                                    case '2':
                                        i = (i * 31) + next2;
                                        putChar(2);
                                        break;
                                    case '3':
                                        i = (i * 31) + next2;
                                        putChar(3);
                                        break;
                                    case '4':
                                        i = (i * 31) + next2;
                                        putChar(4);
                                        break;
                                    case '5':
                                        i = (i * 31) + next2;
                                        putChar(5);
                                        break;
                                    case '6':
                                        i = (i * 31) + next2;
                                        putChar(6);
                                        break;
                                    case '7':
                                        i = (i * 31) + next2;
                                        putChar(7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                i = (i * 31) + 9;
                                                putChar(9);
                                                break;
                                            case 'u':
                                                int parseInt = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i = (i * 31) + parseInt;
                                                putChar((char) parseInt);
                                                break;
                                            case 'v':
                                                i = (i * 31) + 11;
                                                putChar(11);
                                                break;
                                            default:
                                                this.ch = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                char next3 = next();
                                this.ch = next3;
                                char next4 = next();
                                this.ch = next4;
                                int[] iArr = digits;
                                char c2 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i = (i * 31) + c2;
                                putChar(c2);
                            }
                        }
                    }
                    i = (i * 31) + 12;
                    putChar(12);
                } else {
                    i = (i * 31) + 39;
                    putChar('\'');
                }
            } else {
                i = (i * 31) + next;
                if (!z) {
                    this.sp++;
                } else {
                    int i4 = this.sp;
                    char[] cArr4 = this.sbuf;
                    if (i4 == cArr4.length) {
                        putChar(next);
                    } else {
                        this.sp = i4 + 1;
                        cArr4[i4] = next;
                    }
                }
            }
        }
    }

    public final void resetStringPosition() {
        this.sp = 0;
    }

    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        boolean z = false;
        if (this.token == 1 && this.pos == 0 && this.bp == 1) {
            this.bp = 0;
        }
        boolean[] zArr = IOUtils.firstIdentifierFlags;
        int i = this.ch;
        if (i >= zArr.length || zArr[i]) {
            z = true;
        }
        if (z) {
            boolean[] zArr2 = IOUtils.identifierFlags;
            this.np = this.bp;
            this.sp = 1;
            while (true) {
                char next = next();
                if (next < zArr2.length && !zArr2[next]) {
                    break;
                }
                i = (i * 31) + next;
                this.sp++;
            }
            this.ch = charAt(this.bp);
            this.token = 18;
            if (this.sp == 4 && i == 3392903 && charAt(this.np) == 'n' && charAt(this.np + 1) == 'u' && charAt(this.np + 2) == 'l' && charAt(this.np + 3) == 'l') {
                return null;
            }
            if (symbolTable == null) {
                return subString(this.np, this.sp);
            }
            return addSymbol(this.np, this.sp, i, symbolTable);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("illegal identifier : ");
        sb.append(this.ch);
        sb.append(info());
        throw new JSONException(sb.toString());
    }

    public final void scanString() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next = next();
            if (next == '\"') {
                this.token = 4;
                this.ch = next();
                return;
            }
            String str = "unclosed string : ";
            if (next == 26) {
                if (!isEOF()) {
                    putChar(JSONLexer.EOI);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(next);
                    throw new JSONException(sb.toString());
                }
            } else if (next == '\\') {
                if (!this.hasSpecial) {
                    this.hasSpecial = true;
                    int i = this.sp;
                    char[] cArr = this.sbuf;
                    if (i >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i <= length) {
                            i = length;
                        }
                        char[] cArr2 = new char[i];
                        char[] cArr3 = this.sbuf;
                        System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                        this.sbuf = cArr2;
                    }
                    copyTo(this.np + 1, this.sp, this.sbuf);
                }
                char next2 = next();
                if (next2 == '\"') {
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            putChar('\\');
                        } else if (next2 == 'b') {
                            putChar(8);
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                putChar(10);
                            } else if (next2 == 'r') {
                                putChar(13);
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        putChar('/');
                                        break;
                                    case '0':
                                        putChar(0);
                                        break;
                                    case '1':
                                        putChar(1);
                                        break;
                                    case '2':
                                        putChar(2);
                                        break;
                                    case '3':
                                        putChar(3);
                                        break;
                                    case '4':
                                        putChar(4);
                                        break;
                                    case '5':
                                        putChar(5);
                                        break;
                                    case '6':
                                        putChar(6);
                                        break;
                                    case '7':
                                        putChar(7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                putChar(9);
                                                break;
                                            case 'u':
                                                putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case 'v':
                                                putChar(11);
                                                break;
                                            default:
                                                this.ch = next2;
                                                StringBuilder sb2 = new StringBuilder();
                                                sb2.append(str);
                                                sb2.append(next2);
                                                throw new JSONException(sb2.toString());
                                        }
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                int[] iArr = digits;
                                putChar((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    putChar(12);
                } else {
                    putChar('\'');
                }
            } else if (!this.hasSpecial) {
                this.sp++;
            } else {
                int i2 = this.sp;
                char[] cArr4 = this.sbuf;
                if (i2 == cArr4.length) {
                    putChar(next);
                } else {
                    this.sp = i2 + 1;
                    cArr4[i2] = next;
                }
            }
        }
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(TimeZone timeZone2) {
        this.timeZone = timeZone2;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public void setLocale(Locale locale2) {
        this.locale = locale2;
    }

    public final int intValue() {
        int i;
        boolean z;
        int i2;
        int i3 = 0;
        if (this.np == -1) {
            this.np = 0;
        }
        int i4 = this.np;
        int i5 = this.sp + i4;
        if (charAt(i4) == '-') {
            i4++;
            z = true;
            i = Integer.MIN_VALUE;
        } else {
            z = false;
            i = -2147483647;
        }
        if (i4 < i5) {
            int i6 = i4 + 1;
            i3 = -(charAt(i4) - '0');
            i4 = i6;
        }
        while (true) {
            if (i4 >= i5) {
                break;
            }
            i2 = i4 + 1;
            char charAt = charAt(i4);
            if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                i4 = i2;
            } else {
                int i7 = charAt - '0';
                if (((long) i3) >= -214748364) {
                    int i8 = i3 * 10;
                    if (i8 >= i + i7) {
                        i3 = i8 - i7;
                        i4 = i2;
                    } else {
                        throw new NumberFormatException(numberString());
                    }
                } else {
                    throw new NumberFormatException(numberString());
                }
            }
        }
        i4 = i2;
        if (!z) {
            return -i3;
        }
        if (i4 > this.np + 1) {
            return i3;
        }
        throw new NumberFormatException(numberString());
    }

    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    public final boolean isRef() {
        boolean z = false;
        if (this.sp != 4) {
            return false;
        }
        if (charAt(this.np + 1) == '$' && charAt(this.np + 2) == 'r' && charAt(this.np + 3) == 'e' && charAt(this.np + 4) == 'f') {
            z = true;
        }
        return z;
    }

    public final int scanType(String str) {
        this.matchStat = 0;
        if (!charArrayCompare(typeFieldName)) {
            return -2;
        }
        int length = this.bp + typeFieldName.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            if (str.charAt(i) != charAt(length + i)) {
                return -1;
            }
        }
        int i2 = length + length2;
        if (charAt(i2) != '\"') {
            return -1;
        }
        int i3 = i2 + 1;
        this.ch = charAt(i3);
        char c = this.ch;
        if (c == ',') {
            int i4 = i3 + 1;
            this.ch = charAt(i4);
            this.bp = i4;
            this.token = 16;
            return 3;
        }
        if (c == '}') {
            i3++;
            this.ch = charAt(i3);
            char c2 = this.ch;
            if (c2 == ',') {
                this.token = 16;
                i3++;
                this.ch = charAt(i3);
            } else if (c2 == ']') {
                this.token = 15;
                i3++;
                this.ch = charAt(i3);
            } else if (c2 == '}') {
                this.token = 13;
                i3++;
                this.ch = charAt(i3);
            } else if (c2 != 26) {
                return -1;
            } else {
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.bp = i3;
        return this.matchStat;
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.ch)) {
                return false;
            }
            next();
        }
        this.bp += cArr.length;
        this.ch = charAt(this.bp);
        char c = this.ch;
        if (c == '{') {
            next();
            this.token = 12;
        } else if (c == '[') {
            next();
            this.token = 14;
        } else if (c == 'S' && charAt(this.bp + 1) == 'e' && charAt(this.bp + 2) == 't' && charAt(this.bp + 3) == '[') {
            this.bp += 3;
            this.ch = charAt(this.bp);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int indexOf = indexOf('\"', this.bp + cArr.length + 1);
        if (indexOf != -1) {
            int length2 = this.bp + cArr.length + 1;
            String subString = subString(length2, indexOf - length2);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i2 = indexOf - 1;
                    int i3 = 0;
                    while (i2 >= 0 && charAt(i2) == '\\') {
                        i3++;
                        i2--;
                    }
                    if (i3 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i4 = this.bp;
                int length3 = indexOf - ((cArr.length + i4) + 1);
                subString = readString(sub_chars(i4 + cArr.length + 1, length3), length3);
            }
            int i5 = this.bp;
            int length4 = i + (indexOf - ((cArr.length + i5) + 1)) + 1;
            int i6 = length4 + 1;
            char charAt = charAt(i5 + length4);
            if (charAt == ',') {
                this.bp += i6;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return subString;
            } else if (charAt == '}') {
                int i7 = i6 + 1;
                char charAt2 = charAt(this.bp + i6);
                if (charAt2 == ',') {
                    this.token = 16;
                    this.bp += i7;
                    this.ch = charAt(this.bp);
                } else if (charAt2 == ']') {
                    this.token = 15;
                    this.bp += i7;
                    this.ch = charAt(this.bp);
                } else if (charAt2 == '}') {
                    this.token = 13;
                    this.bp += i7;
                    this.ch = charAt(this.bp);
                } else if (charAt2 == 26) {
                    this.token = 20;
                    this.bp += i7 - 1;
                    this.ch = JSONLexer.EOI;
                } else {
                    this.matchStat = -1;
                    return stringDefaultValue();
                }
                this.matchStat = 4;
                return subString;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        } else {
            throw new JSONException("unclosed str");
        }
    }

    public String scanString(char c) {
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        if (charAt != 'n') {
            int i = 1;
            while (charAt != '\"') {
                if (isWhitespace(charAt)) {
                    int i2 = i + 1;
                    charAt = charAt(this.bp + i);
                    i = i2;
                } else {
                    this.matchStat = -1;
                    return stringDefaultValue();
                }
            }
            int i3 = this.bp + i;
            int indexOf = indexOf('\"', i3);
            if (indexOf != -1) {
                String subString = subString(this.bp + i, indexOf - i3);
                if (subString.indexOf(92) != -1) {
                    while (true) {
                        int i4 = indexOf - 1;
                        int i5 = 0;
                        while (i4 >= 0 && charAt(i4) == '\\') {
                            i5++;
                            i4--;
                        }
                        if (i5 % 2 == 0) {
                            break;
                        }
                        indexOf = indexOf('\"', indexOf + 1);
                    }
                    int i6 = indexOf - i3;
                    subString = readString(sub_chars(this.bp + 1, i6), i6);
                }
                int i7 = i + (indexOf - i3) + 1;
                int i8 = i7 + 1;
                char charAt2 = charAt(this.bp + i7);
                while (charAt2 != c) {
                    if (isWhitespace(charAt2)) {
                        int i9 = i8 + 1;
                        charAt2 = charAt(this.bp + i8);
                        i8 = i9;
                    } else {
                        this.matchStat = -1;
                        return subString;
                    }
                }
                this.bp += i8;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return subString;
            }
            throw new JSONException("unclosed str");
        } else if (charAt(this.bp + 1) != 'u' || charAt(this.bp + 1 + 1) != 'l' || charAt(this.bp + 1 + 2) != 'l') {
            this.matchStat = -1;
            return null;
        } else if (charAt(this.bp + 4) == c) {
            this.bp += 5;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            return null;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0;
        }
        long j = -3750763034362895579L;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(this.bp + i);
            if (charAt == '\"') {
                int i3 = i2 + 1;
                char charAt2 = charAt(this.bp + i2);
                if (charAt2 == ',') {
                    this.bp += i3;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    return j;
                } else if (charAt2 == '}') {
                    int i4 = i3 + 1;
                    char charAt3 = charAt(this.bp + i3);
                    if (charAt3 == ',') {
                        this.token = 16;
                        this.bp += i4;
                        this.ch = charAt(this.bp);
                    } else if (charAt3 == ']') {
                        this.token = 15;
                        this.bp += i4;
                        this.ch = charAt(this.bp);
                    } else if (charAt3 == '}') {
                        this.token = 13;
                        this.bp += i4;
                        this.ch = charAt(this.bp);
                    } else if (charAt3 == 26) {
                        this.token = 20;
                        this.bp += i4 - 1;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0;
                    }
                    this.matchStat = 4;
                    return j;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
            } else {
                j = (j ^ ((long) charAt)) * 1099511628211L;
                if (charAt == '\\') {
                    this.matchStat = -1;
                    return 0;
                }
                i = i2;
            }
        }
    }

    public Enum<?> scanEnum(Class<?> cls, SymbolTable symbolTable, char c) {
        String scanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c);
        if (scanSymbolWithSeperator == null) {
            return null;
        }
        return Enum.valueOf(cls, scanSymbolWithSeperator);
    }

    public String scanSymbolWithSeperator(SymbolTable symbolTable, char c) {
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        if (charAt == 'n') {
            if (charAt(this.bp + 1) != 'u' || charAt(this.bp + 1 + 1) != 'l' || charAt(this.bp + 1 + 2) != 'l') {
                this.matchStat = -1;
                return null;
            } else if (charAt(this.bp + 4) == c) {
                this.bp += 5;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return null;
            } else {
                this.matchStat = -1;
                return null;
            }
        } else if (charAt != '\"') {
            this.matchStat = -1;
            return null;
        } else {
            int i = 1;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                char charAt2 = charAt(this.bp + i);
                if (charAt2 == '\"') {
                    int i4 = this.bp;
                    int i5 = i4 + 0 + 1;
                    String addSymbol = addSymbol(i5, ((i4 + i3) - i5) - 1, i2, symbolTable);
                    int i6 = i3 + 1;
                    char charAt3 = charAt(this.bp + i3);
                    while (charAt3 != c) {
                        if (isWhitespace(charAt3)) {
                            int i7 = i6 + 1;
                            charAt3 = charAt(this.bp + i6);
                            i6 = i7;
                        } else {
                            this.matchStat = -1;
                            return addSymbol;
                        }
                    }
                    this.bp += i6;
                    this.ch = charAt(this.bp);
                    this.matchStat = 3;
                    return addSymbol;
                }
                i2 = (i2 * 31) + charAt2;
                if (charAt2 == '\\') {
                    this.matchStat = -1;
                    return null;
                }
                i = i3;
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

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00fa, code lost:
        if (r12 != ',') goto L_0x010d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fc, code lost:
        r11.bp += r0;
        r11.ch = charAt(r11.bp);
        r11.matchStat = 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x010c, code lost:
        return r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x010f, code lost:
        if (r12 != '}') goto L_0x016e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0111, code lost:
        r6 = r0 + 1;
        r12 = charAt(r11.bp + r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x011a, code lost:
        if (r12 != ',') goto L_0x012e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x011c, code lost:
        r11.token = 16;
        r11.bp += r6;
        r11.ch = charAt(r11.bp);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012e, code lost:
        if (r12 != ']') goto L_0x0142;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0130, code lost:
        r11.token = 15;
        r11.bp += r6;
        r11.ch = charAt(r11.bp);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0142, code lost:
        if (r12 != '}') goto L_0x0156;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0144, code lost:
        r11.token = 13;
        r11.bp += r6;
        r11.ch = charAt(r11.bp);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0158, code lost:
        if (r12 != 26) goto L_0x016b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x015a, code lost:
        r11.bp += r6 - 1;
        r11.token = 20;
        r11.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0167, code lost:
        r11.matchStat = 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x016a, code lost:
        return r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x016b, code lost:
        r11.matchStat = -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x016d, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x016e, code lost:
        r11.matchStat = -1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0170, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r12, java.lang.Class<?> r13) {
        /*
            r11 = this;
            r0 = 0
            r11.matchStat = r0
            boolean r1 = r11.charArrayCompare(r12)
            r2 = 0
            if (r1 != 0) goto L_0x000e
            r12 = -2
            r11.matchStat = r12
            return r2
        L_0x000e:
            java.util.Collection r13 = r11.newCollectionByType(r13)
            int r12 = r12.length
            int r1 = r11.bp
            int r3 = r12 + 1
            int r1 = r1 + r12
            char r12 = r11.charAt(r1)
            r1 = 91
            r4 = -1
            if (r12 == r1) goto L_0x0024
            r11.matchStat = r4
            return r2
        L_0x0024:
            int r12 = r11.bp
            int r1 = r3 + 1
            int r12 = r12 + r3
            char r12 = r11.charAt(r12)
        L_0x002d:
            r3 = 44
            r5 = 93
            r6 = 34
            if (r12 != r6) goto L_0x0095
            int r12 = r11.bp
            int r12 = r12 + r1
            int r12 = r11.indexOf(r6, r12)
            if (r12 == r4) goto L_0x008d
            int r7 = r11.bp
            int r7 = r7 + r1
            int r8 = r12 - r7
            java.lang.String r7 = r11.subString(r7, r8)
            r8 = 92
            int r9 = r7.indexOf(r8)
            if (r9 == r4) goto L_0x007a
        L_0x004f:
            int r7 = r12 + -1
            r9 = 0
        L_0x0052:
            if (r7 < 0) goto L_0x005f
            char r10 = r11.charAt(r7)
            if (r10 != r8) goto L_0x005f
            int r9 = r9 + 1
            int r7 = r7 + -1
            goto L_0x0052
        L_0x005f:
            int r9 = r9 % 2
            if (r9 != 0) goto L_0x0073
            int r6 = r11.bp
            int r7 = r6 + r1
            int r7 = r12 - r7
            int r6 = r6 + r1
            char[] r6 = r11.sub_chars(r6, r7)
            java.lang.String r7 = readString(r6, r7)
            goto L_0x007a
        L_0x0073:
            int r12 = r12 + 1
            int r12 = r11.indexOf(r6, r12)
            goto L_0x004f
        L_0x007a:
            int r6 = r11.bp
            int r8 = r6 + r1
            int r12 = r12 - r8
            int r12 = r12 + 1
            int r1 = r1 + r12
            int r12 = r1 + 1
            int r6 = r6 + r1
            char r1 = r11.charAt(r6)
            r13.add(r7)
            goto L_0x00cb
        L_0x008d:
            com.alibaba.fastjson.JSONException r12 = new com.alibaba.fastjson.JSONException
            java.lang.String r13 = "unclosed str"
            r12.<init>(r13)
            throw r12
        L_0x0095:
            r6 = 110(0x6e, float:1.54E-43)
            if (r12 != r6) goto L_0x00e9
            int r6 = r11.bp
            int r6 = r6 + r1
            char r6 = r11.charAt(r6)
            r7 = 117(0x75, float:1.64E-43)
            if (r6 != r7) goto L_0x00e9
            int r6 = r11.bp
            int r6 = r6 + r1
            int r6 = r6 + 1
            char r6 = r11.charAt(r6)
            r7 = 108(0x6c, float:1.51E-43)
            if (r6 != r7) goto L_0x00e9
            int r6 = r11.bp
            int r6 = r6 + r1
            int r6 = r6 + 2
            char r6 = r11.charAt(r6)
            if (r6 != r7) goto L_0x00e9
            int r1 = r1 + 3
            int r12 = r11.bp
            int r6 = r1 + 1
            int r12 = r12 + r1
            char r1 = r11.charAt(r12)
            r13.add(r2)
            r12 = r6
        L_0x00cb:
            if (r1 != r3) goto L_0x00d9
            int r1 = r11.bp
            int r3 = r12 + 1
            int r1 = r1 + r12
            char r12 = r11.charAt(r1)
            r1 = r3
            goto L_0x002d
        L_0x00d9:
            if (r1 != r5) goto L_0x00e6
            int r0 = r11.bp
            int r1 = r12 + 1
            int r0 = r0 + r12
            char r12 = r11.charAt(r0)
            r0 = r1
            goto L_0x00fa
        L_0x00e6:
            r11.matchStat = r4
            return r2
        L_0x00e9:
            if (r12 != r5) goto L_0x0171
            int r12 = r13.size()
            if (r12 != 0) goto L_0x0171
            int r12 = r11.bp
            int r0 = r1 + 1
            int r12 = r12 + r1
            char r12 = r11.charAt(r12)
        L_0x00fa:
            if (r12 != r3) goto L_0x010d
            int r12 = r11.bp
            int r12 = r12 + r0
            r11.bp = r12
            int r12 = r11.bp
            char r12 = r11.charAt(r12)
            r11.ch = r12
            r12 = 3
            r11.matchStat = r12
            return r13
        L_0x010d:
            r1 = 125(0x7d, float:1.75E-43)
            if (r12 != r1) goto L_0x016e
            int r12 = r11.bp
            int r6 = r0 + 1
            int r12 = r12 + r0
            char r12 = r11.charAt(r12)
            if (r12 != r3) goto L_0x012e
            r12 = 16
            r11.token = r12
            int r12 = r11.bp
            int r12 = r12 + r6
            r11.bp = r12
            int r12 = r11.bp
            char r12 = r11.charAt(r12)
            r11.ch = r12
            goto L_0x0167
        L_0x012e:
            if (r12 != r5) goto L_0x0142
            r12 = 15
            r11.token = r12
            int r12 = r11.bp
            int r12 = r12 + r6
            r11.bp = r12
            int r12 = r11.bp
            char r12 = r11.charAt(r12)
            r11.ch = r12
            goto L_0x0167
        L_0x0142:
            if (r12 != r1) goto L_0x0156
            r12 = 13
            r11.token = r12
            int r12 = r11.bp
            int r12 = r12 + r6
            r11.bp = r12
            int r12 = r11.bp
            char r12 = r11.charAt(r12)
            r11.ch = r12
            goto L_0x0167
        L_0x0156:
            r0 = 26
            if (r12 != r0) goto L_0x016b
            int r12 = r11.bp
            int r6 = r6 + -1
            int r12 = r12 + r6
            r11.bp = r12
            r12 = 20
            r11.token = r12
            r11.ch = r0
        L_0x0167:
            r12 = 4
            r11.matchStat = r12
            return r13
        L_0x016b:
            r11.matchStat = r4
            return r2
        L_0x016e:
            r11.matchStat = r4
            return r2
        L_0x0171:
            com.alibaba.fastjson.JSONException r12 = new com.alibaba.fastjson.JSONException
            java.lang.String r13 = "illega str"
            r12.<init>(r13)
            goto L_0x017a
        L_0x0179:
            throw r12
        L_0x017a:
            goto L_0x0179
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    public void scanStringArray(Collection<String> collection, char c) {
        int i;
        char c2;
        int i2;
        char c3;
        Collection<String> collection2 = collection;
        char c4 = c;
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        char c5 = 'u';
        char c6 = 'n';
        if (charAt == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 1 + 1) == 'l' && charAt(this.bp + 1 + 2) == 'l' && charAt(this.bp + 1 + 3) == c4) {
            this.bp += 5;
            this.ch = charAt(this.bp);
            this.matchStat = 5;
        } else if (charAt != '[') {
            this.matchStat = -1;
        } else {
            char charAt2 = charAt(this.bp + 1);
            int i3 = 2;
            while (true) {
                if (charAt2 != c6 || charAt(this.bp + i3) != c5 || charAt(this.bp + i3 + 1) != 'l' || charAt(this.bp + i3 + 2) != 'l') {
                    if (charAt2 == ']' && collection.size() == 0) {
                        i = i3 + 1;
                        c2 = charAt(this.bp + i3);
                        break;
                    } else if (charAt2 != '\"') {
                        this.matchStat = -1;
                        return;
                    } else {
                        int i4 = this.bp + i3;
                        int indexOf = indexOf('\"', i4);
                        if (indexOf != -1) {
                            String subString = subString(this.bp + i3, indexOf - i4);
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
                                subString = readString(sub_chars(this.bp + i3, i7), i7);
                            }
                            int i8 = this.bp;
                            int i9 = i3 + (indexOf - (i8 + i3)) + 1;
                            i2 = i9 + 1;
                            c3 = charAt(i8 + i9);
                            collection2.add(subString);
                        } else {
                            throw new JSONException("unclosed str");
                        }
                    }
                } else {
                    int i10 = i3 + 3;
                    i2 = i10 + 1;
                    c3 = charAt(this.bp + i10);
                    collection2.add(null);
                }
                if (c3 == ',') {
                    i3 = i2 + 1;
                    charAt2 = charAt(this.bp + i2);
                    c5 = 'u';
                    c6 = 'n';
                } else if (c3 == ']') {
                    i = i2 + 1;
                    c2 = charAt(this.bp + i2);
                } else {
                    this.matchStat = -1;
                    return;
                }
            }
            if (c2 == c4) {
                this.bp += i;
                this.ch = charAt(this.bp);
                this.matchStat = 3;
                return;
            }
            this.matchStat = -1;
        }
    }

    public int scanFieldInt(char[] cArr) {
        int i;
        char charAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt2 = charAt(this.bp + length);
        boolean z = charAt2 == '-';
        if (z) {
            int i3 = i2 + 1;
            charAt2 = charAt(this.bp + i2);
            i2 = i3;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i4 = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            charAt = charAt(this.bp + i2);
            if (charAt >= '0' && charAt <= '9') {
                i4 = (i4 * 10) + (charAt - '0');
                i2 = i;
            }
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0;
        } else if ((i4 < 0 || i > cArr.length + 14) && !(i4 == Integer.MIN_VALUE && i == 17 && z)) {
            this.matchStat = -1;
            return 0;
        } else if (charAt == ',') {
            this.bp += i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            if (z) {
                i4 = -i4;
            }
            return i4;
        } else if (charAt == '}') {
            int i5 = i + 1;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                this.bp += i5;
                this.ch = charAt(this.bp);
            } else if (charAt3 == ']') {
                this.token = 15;
                this.bp += i5;
                this.ch = charAt(this.bp);
            } else if (charAt3 == '}') {
                this.token = 13;
                this.bp += i5;
                this.ch = charAt(this.bp);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i5 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = 4;
            if (z) {
                i4 = -i4;
            }
            return i4;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    public final int[] scanFieldIntArray(char[] cArr) {
        int i;
        int i2;
        char c;
        int[] iArr;
        boolean z;
        int i3;
        char charAt;
        char c2;
        int[] iArr2;
        this.matchStat = 0;
        int[] iArr3 = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i4 = length + 1;
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i5 = i4 + 1;
        char charAt2 = charAt(this.bp + i4);
        int[] iArr4 = new int[16];
        if (charAt2 == ']') {
            i = i5 + 1;
            c = charAt(this.bp + i5);
            i2 = 0;
        } else {
            int i6 = 0;
            while (true) {
                if (charAt2 == '-') {
                    int i7 = i5 + 1;
                    charAt2 = charAt(this.bp + i5);
                    i5 = i7;
                    z = true;
                } else {
                    z = false;
                }
                if (charAt2 < '0' || charAt2 > '9') {
                    int[] iArr5 = iArr3;
                    this.matchStat = -1;
                } else {
                    int i8 = charAt2 - '0';
                    while (true) {
                        i3 = i5 + 1;
                        charAt = charAt(this.bp + i5);
                        if (charAt >= '0' && charAt <= '9') {
                            i8 = (i8 * 10) + (charAt - '0');
                            i5 = i3;
                        }
                    }
                    if (i6 >= iArr4.length) {
                        int[] iArr6 = new int[((iArr4.length * 3) / 2)];
                        System.arraycopy(iArr4, 0, iArr6, 0, i6);
                        iArr4 = iArr6;
                    }
                    i2 = i6 + 1;
                    if (z) {
                        i8 = -i8;
                    }
                    iArr4[i6] = i8;
                    if (charAt == ',') {
                        i5 = i3 + 1;
                        c2 = charAt(this.bp + i3);
                        iArr2 = null;
                    } else if (charAt == ']') {
                        i = i3 + 1;
                        c = charAt(this.bp + i3);
                        break;
                    } else {
                        iArr2 = null;
                        c2 = charAt;
                        i5 = i3;
                    }
                    int i9 = i2;
                    iArr3 = iArr2;
                    charAt2 = c2;
                    i6 = i9;
                }
            }
            int[] iArr52 = iArr3;
            this.matchStat = -1;
            return iArr52;
        }
        if (i2 != iArr4.length) {
            iArr = new int[i2];
            System.arraycopy(iArr4, 0, iArr, 0, i2);
        } else {
            iArr = iArr4;
        }
        if (c == ',') {
            this.bp += i - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return iArr;
        } else if (c == '}') {
            int i10 = i + 1;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                this.bp += i10 - 1;
                next();
            } else if (charAt3 == ']') {
                this.token = 15;
                this.bp += i10 - 1;
                next();
            } else if (charAt3 == '}') {
                this.token = 13;
                this.bp += i10 - 1;
                next();
            } else if (charAt3 == 26) {
                this.bp += i10 - 1;
                this.token = 20;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return iArr;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public boolean scanBoolean(char c) {
        boolean z = false;
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        int i = 2;
        if (charAt == 't') {
            if (charAt(this.bp + 1) == 'r' && charAt(this.bp + 1 + 1) == 'u' && charAt(this.bp + 1 + 2) == 'e') {
                charAt = charAt(this.bp + 4);
                z = true;
                i = 5;
            } else {
                this.matchStat = -1;
                return false;
            }
        } else if (charAt == 'f') {
            if (charAt(this.bp + 1) == 'a' && charAt(this.bp + 1 + 1) == 'l' && charAt(this.bp + 1 + 2) == 's' && charAt(this.bp + 1 + 3) == 'e') {
                charAt = charAt(this.bp + 5);
                i = 6;
            } else {
                this.matchStat = -1;
                return false;
            }
        } else if (charAt == '1') {
            charAt = charAt(this.bp + 1);
            z = true;
        } else if (charAt == '0') {
            charAt = charAt(this.bp + 1);
        } else {
            i = 1;
        }
        while (charAt != c) {
            if (isWhitespace(charAt)) {
                int i2 = i + 1;
                charAt = charAt(this.bp + i);
                i = i2;
            } else {
                this.matchStat = -1;
                return z;
            }
        }
        this.bp += i;
        this.ch = charAt(this.bp);
        this.matchStat = 3;
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x00e5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int scanInt(char r14) {
        /*
            r13 = this;
            r0 = 0
            r13.matchStat = r0
            int r1 = r13.bp
            int r1 = r1 + r0
            char r1 = r13.charAt(r1)
            r2 = 34
            r3 = 1
            if (r1 != r2) goto L_0x0011
            r4 = 1
            goto L_0x0012
        L_0x0011:
            r4 = 0
        L_0x0012:
            r5 = 2
            if (r4 == 0) goto L_0x001e
            int r1 = r13.bp
            int r1 = r1 + r3
            char r1 = r13.charAt(r1)
            r6 = 2
            goto L_0x001f
        L_0x001e:
            r6 = 1
        L_0x001f:
            r7 = 45
            if (r1 != r7) goto L_0x0025
            r7 = 1
            goto L_0x0026
        L_0x0025:
            r7 = 0
        L_0x0026:
            if (r7 == 0) goto L_0x0032
            int r1 = r13.bp
            int r8 = r6 + 1
            int r1 = r1 + r6
            char r1 = r13.charAt(r1)
            r6 = r8
        L_0x0032:
            r8 = 16
            r9 = 3
            r10 = 48
            r11 = -1
            if (r1 < r10) goto L_0x008e
            r12 = 57
            if (r1 > r12) goto L_0x008e
            int r1 = r1 - r10
        L_0x003f:
            int r2 = r13.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r13.charAt(r2)
            if (r2 < r10) goto L_0x0053
            if (r2 > r12) goto L_0x0053
            int r1 = r1 * 10
            int r2 = r2 + -48
            int r1 = r1 + r2
            r6 = r3
            goto L_0x003f
        L_0x0053:
            r4 = 46
            if (r2 != r4) goto L_0x005a
            r13.matchStat = r11
            return r0
        L_0x005a:
            if (r1 >= 0) goto L_0x005f
            r13.matchStat = r11
            return r0
        L_0x005f:
            if (r2 != r14) goto L_0x0076
            int r14 = r13.bp
            int r14 = r14 + r3
            r13.bp = r14
            int r14 = r13.bp
            char r14 = r13.charAt(r14)
            r13.ch = r14
            r13.matchStat = r9
            r13.token = r8
            if (r7 == 0) goto L_0x0075
            int r1 = -r1
        L_0x0075:
            return r1
        L_0x0076:
            boolean r0 = isWhitespace(r2)
            if (r0 == 0) goto L_0x0088
            int r0 = r13.bp
            int r2 = r3 + 1
            int r0 = r0 + r3
            char r0 = r13.charAt(r0)
            r3 = r2
            r2 = r0
            goto L_0x005f
        L_0x0088:
            r13.matchStat = r11
            if (r7 == 0) goto L_0x008d
            int r1 = -r1
        L_0x008d:
            return r1
        L_0x008e:
            r14 = 110(0x6e, float:1.54E-43)
            if (r1 != r14) goto L_0x0110
            int r14 = r13.bp
            int r14 = r14 + r6
            char r14 = r13.charAt(r14)
            r1 = 117(0x75, float:1.64E-43)
            if (r14 != r1) goto L_0x0110
            int r14 = r13.bp
            int r14 = r14 + r6
            int r14 = r14 + r3
            char r14 = r13.charAt(r14)
            r1 = 108(0x6c, float:1.51E-43)
            if (r14 != r1) goto L_0x0110
            int r14 = r13.bp
            int r14 = r14 + r6
            int r14 = r14 + r5
            char r14 = r13.charAt(r14)
            if (r14 != r1) goto L_0x0110
            r14 = 5
            r13.matchStat = r14
            int r6 = r6 + r9
            int r1 = r13.bp
            int r3 = r6 + 1
            int r1 = r1 + r6
            char r1 = r13.charAt(r1)
            if (r4 == 0) goto L_0x00ce
            if (r1 != r2) goto L_0x00ce
            int r1 = r13.bp
            int r2 = r3 + 1
            int r1 = r1 + r3
            char r1 = r13.charAt(r1)
            goto L_0x00cf
        L_0x00ce:
            r2 = r3
        L_0x00cf:
            r3 = 44
            if (r1 != r3) goto L_0x00e5
            int r1 = r13.bp
            int r1 = r1 + r2
            r13.bp = r1
            int r1 = r13.bp
            char r1 = r13.charAt(r1)
            r13.ch = r1
            r13.matchStat = r14
            r13.token = r8
            return r0
        L_0x00e5:
            r3 = 93
            if (r1 != r3) goto L_0x00fd
            int r1 = r13.bp
            int r1 = r1 + r2
            r13.bp = r1
            int r1 = r13.bp
            char r1 = r13.charAt(r1)
            r13.ch = r1
            r13.matchStat = r14
            r14 = 15
            r13.token = r14
            return r0
        L_0x00fd:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto L_0x010d
            int r1 = r13.bp
            int r3 = r2 + 1
            int r1 = r1 + r2
            char r1 = r13.charAt(r1)
            goto L_0x00ce
        L_0x010d:
            r13.matchStat = r11
            return r0
        L_0x0110:
            r13.matchStat = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanInt(char):int");
    }

    public boolean scanFieldBoolean(char[] cArr) {
        boolean z;
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt = charAt(this.bp + length);
        if (charAt == 't') {
            int i3 = i2 + 1;
            if (charAt(this.bp + i2) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i4 = i3 + 1;
            if (charAt(this.bp + i3) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i = i4 + 1;
            if (charAt(this.bp + i4) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else if (charAt == 'f') {
            int i5 = i2 + 1;
            if (charAt(this.bp + i2) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i6 = i5 + 1;
            if (charAt(this.bp + i5) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i7 = i6 + 1;
            if (charAt(this.bp + i6) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(this.bp + i7) != 'e') {
                this.matchStat = -1;
                return false;
            }
            i = i8;
            z = false;
        } else {
            this.matchStat = -1;
            return false;
        }
        int i9 = i + 1;
        char charAt2 = charAt(this.bp + i);
        if (charAt2 == ',') {
            this.bp += i9;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            return z;
        } else if (charAt2 == '}') {
            int i10 = i9 + 1;
            char charAt3 = charAt(this.bp + i9);
            if (charAt3 == ',') {
                this.token = 16;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == ']') {
                this.token = 15;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == '}') {
                this.token = 13;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i10 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return false;
            }
            this.matchStat = 4;
            return z;
        } else {
            this.matchStat = -1;
            return false;
        }
    }

    public long scanFieldLong(char[] cArr) {
        boolean z;
        int i;
        int i2;
        char charAt;
        char[] cArr2 = cArr;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr2.length;
        int i3 = length + 1;
        char charAt2 = charAt(this.bp + length);
        if (charAt2 == '-') {
            i = i3 + 1;
            charAt2 = charAt(this.bp + i3);
            z = true;
        } else {
            i = i3;
            z = false;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        long j = (long) (charAt2 - '0');
        while (true) {
            i2 = i + 1;
            charAt = charAt(this.bp + i);
            if (charAt >= '0' && charAt <= '9') {
                j = (j * 10) + ((long) (charAt - '0'));
                i = i2;
            }
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (!(i2 - cArr2.length < 21 && (j >= 0 || (j == Long.MIN_VALUE && z)))) {
            this.matchStat = -1;
            return 0;
        } else if (charAt == ',') {
            this.bp += i2;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            if (z) {
                j = -j;
            }
            return j;
        } else if (charAt == '}') {
            int i4 = i2 + 1;
            char charAt3 = charAt(this.bp + i2);
            if (charAt3 == ',') {
                this.token = 16;
                this.bp += i4;
                this.ch = charAt(this.bp);
            } else if (charAt3 == ']') {
                this.token = 15;
                this.bp += i4;
                this.ch = charAt(this.bp);
            } else if (charAt3 == '}') {
                this.token = 13;
                this.bp += i4;
                this.ch = charAt(this.bp);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i4 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = 4;
            if (z) {
                j = -j;
            }
            return j;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x0122  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long scanLong(char r21) {
        /*
            r20 = this;
            r0 = r20
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r2 = r2 + r1
            char r2 = r0.charAt(r2)
            r3 = 34
            r4 = 1
            if (r2 != r3) goto L_0x0013
            r5 = 1
            goto L_0x0014
        L_0x0013:
            r5 = 0
        L_0x0014:
            r6 = 2
            if (r5 == 0) goto L_0x0020
            int r2 = r0.bp
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            r7 = 2
            goto L_0x0021
        L_0x0020:
            r7 = 1
        L_0x0021:
            r8 = 45
            if (r2 != r8) goto L_0x0027
            r8 = 1
            goto L_0x0028
        L_0x0027:
            r8 = 0
        L_0x0028:
            if (r8 == 0) goto L_0x0034
            int r2 = r0.bp
            int r9 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r7 = r9
        L_0x0034:
            r9 = 16
            r10 = 3
            r11 = 48
            r12 = -1
            r13 = 0
            if (r2 < r11) goto L_0x00cb
            r15 = 57
            if (r2 > r15) goto L_0x00cb
            int r2 = r2 - r11
            long r1 = (long) r2
        L_0x0044:
            int r6 = r0.bp
            int r17 = r7 + 1
            int r6 = r6 + r7
            char r6 = r0.charAt(r6)
            if (r6 < r11) goto L_0x005c
            if (r6 > r15) goto L_0x005c
            r18 = 10
            long r1 = r1 * r18
            int r6 = r6 + -48
            long r6 = (long) r6
            long r1 = r1 + r6
            r7 = r17
            goto L_0x0044
        L_0x005c:
            r7 = 46
            if (r6 != r7) goto L_0x0063
            r0.matchStat = r12
            return r13
        L_0x0063:
            int r7 = (r1 > r13 ? 1 : (r1 == r13 ? 0 : -1))
            if (r7 >= 0) goto L_0x0073
            r18 = -9223372036854775808
            int r7 = (r1 > r18 ? 1 : (r1 == r18 ? 0 : -1))
            if (r7 != 0) goto L_0x0070
            if (r8 == 0) goto L_0x0070
            goto L_0x0073
        L_0x0070:
            r16 = 0
            goto L_0x0075
        L_0x0073:
            r16 = 1
        L_0x0075:
            if (r16 == 0) goto L_0x00bd
            if (r5 == 0) goto L_0x008d
            if (r6 == r3) goto L_0x007e
            r0.matchStat = r12
            return r13
        L_0x007e:
            int r3 = r0.bp
            int r4 = r17 + 1
            int r3 = r3 + r17
            char r6 = r0.charAt(r3)
            r3 = r21
            r17 = r4
            goto L_0x008f
        L_0x008d:
            r3 = r21
        L_0x008f:
            if (r6 != r3) goto L_0x00a7
            int r3 = r0.bp
            int r3 = r3 + r17
            r0.bp = r3
            int r3 = r0.bp
            char r3 = r0.charAt(r3)
            r0.ch = r3
            r0.matchStat = r10
            r0.token = r9
            if (r8 == 0) goto L_0x00a6
            long r1 = -r1
        L_0x00a6:
            return r1
        L_0x00a7:
            boolean r4 = isWhitespace(r6)
            if (r4 == 0) goto L_0x00ba
            int r4 = r0.bp
            int r5 = r17 + 1
            int r4 = r4 + r17
            char r6 = r0.charAt(r4)
            r17 = r5
            goto L_0x008f
        L_0x00ba:
            r0.matchStat = r12
            return r1
        L_0x00bd:
            int r1 = r0.bp
            int r2 = r17 + -1
            java.lang.String r1 = r0.subString(r1, r2)
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            r2.<init>(r1)
            throw r2
        L_0x00cb:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x014d
            int r1 = r0.bp
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x014d
            int r1 = r0.bp
            int r1 = r1 + r7
            int r1 = r1 + r4
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x014d
            int r1 = r0.bp
            int r1 = r1 + r7
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x014d
            r1 = 5
            r0.matchStat = r1
            int r7 = r7 + r10
            int r2 = r0.bp
            int r4 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r5 == 0) goto L_0x010b
            if (r2 != r3) goto L_0x010b
            int r2 = r0.bp
            int r3 = r4 + 1
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            goto L_0x010c
        L_0x010b:
            r3 = r4
        L_0x010c:
            r4 = 44
            if (r2 != r4) goto L_0x0122
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r0.token = r9
            return r13
        L_0x0122:
            r4 = 93
            if (r2 != r4) goto L_0x013a
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 15
            r0.token = r1
            return r13
        L_0x013a:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x014a
            int r2 = r0.bp
            int r4 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            goto L_0x010b
        L_0x014a:
            r0.matchStat = r12
            return r13
        L_0x014d:
            r0.matchStat = r12
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanLong(char):long");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public final float scanFieldFloat(char[] r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = 0
            r0.matchStat = r2
            boolean r3 = r19.charArrayCompare(r20)
            r4 = 0
            if (r3 != 0) goto L_0x0012
            r1 = -2
            r0.matchStat = r1
            return r4
        L_0x0012:
            int r3 = r1.length
            int r5 = r0.bp
            int r6 = r3 + 1
            int r5 = r5 + r3
            char r3 = r0.charAt(r5)
            r5 = 34
            r7 = 1
            if (r3 != r5) goto L_0x0023
            r8 = 1
            goto L_0x0024
        L_0x0023:
            r8 = 0
        L_0x0024:
            if (r8 == 0) goto L_0x0030
            int r3 = r0.bp
            int r9 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r9
        L_0x0030:
            r9 = 45
            if (r3 != r9) goto L_0x0036
            r10 = 1
            goto L_0x0037
        L_0x0036:
            r10 = 0
        L_0x0037:
            if (r10 == 0) goto L_0x0043
            int r3 = r0.bp
            int r11 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r11
        L_0x0043:
            r14 = -1
            r15 = 48
            if (r3 < r15) goto L_0x019e
            r2 = 57
            if (r3 > r2) goto L_0x019e
            int r3 = r3 - r15
        L_0x004d:
            int r12 = r0.bp
            int r17 = r6 + 1
            int r12 = r12 + r6
            char r6 = r0.charAt(r12)
            if (r6 < r15) goto L_0x0062
            if (r6 > r2) goto L_0x0062
            int r3 = r3 * 10
            int r6 = r6 + -48
            int r3 = r3 + r6
            r6 = r17
            goto L_0x004d
        L_0x0062:
            r12 = 46
            if (r6 != r12) goto L_0x0068
            r12 = 1
            goto L_0x0069
        L_0x0068:
            r12 = 0
        L_0x0069:
            if (r12 == 0) goto L_0x009f
            int r6 = r0.bp
            int r12 = r17 + 1
            int r6 = r6 + r17
            char r6 = r0.charAt(r6)
            if (r6 < r15) goto L_0x009c
            if (r6 > r2) goto L_0x009c
            int r3 = r3 * 10
            int r6 = r6 - r15
            int r3 = r3 + r6
            r6 = 10
        L_0x007f:
            int r11 = r0.bp
            int r17 = r12 + 1
            int r11 = r11 + r12
            char r11 = r0.charAt(r11)
            if (r11 < r15) goto L_0x0096
            if (r11 > r2) goto L_0x0096
            int r3 = r3 * 10
            int r11 = r11 + -48
            int r3 = r3 + r11
            int r6 = r6 * 10
            r12 = r17
            goto L_0x007f
        L_0x0096:
            r18 = r11
            r11 = r6
            r6 = r18
            goto L_0x00a0
        L_0x009c:
            r0.matchStat = r14
            return r4
        L_0x009f:
            r11 = 1
        L_0x00a0:
            r12 = 101(0x65, float:1.42E-43)
            if (r6 == r12) goto L_0x00ac
            r12 = 69
            if (r6 != r12) goto L_0x00a9
            goto L_0x00ac
        L_0x00a9:
            r16 = 0
            goto L_0x00ae
        L_0x00ac:
            r16 = 1
        L_0x00ae:
            if (r16 == 0) goto L_0x00de
            int r6 = r0.bp
            int r12 = r17 + 1
            int r6 = r6 + r17
            char r6 = r0.charAt(r6)
            r13 = 43
            if (r6 == r13) goto L_0x00c4
            if (r6 != r9) goto L_0x00c1
            goto L_0x00c4
        L_0x00c1:
            r17 = r12
            goto L_0x00cf
        L_0x00c4:
            int r6 = r0.bp
            int r9 = r12 + 1
            int r6 = r6 + r12
            char r6 = r0.charAt(r6)
        L_0x00cd:
            r17 = r9
        L_0x00cf:
            if (r6 < r15) goto L_0x00de
            if (r6 > r2) goto L_0x00de
            int r6 = r0.bp
            int r9 = r17 + 1
            int r6 = r6 + r17
            char r6 = r0.charAt(r6)
            goto L_0x00cd
        L_0x00de:
            if (r8 == 0) goto L_0x00fb
            if (r6 == r5) goto L_0x00e5
            r0.matchStat = r14
            return r4
        L_0x00e5:
            int r2 = r0.bp
            int r5 = r17 + 1
            int r2 = r2 + r17
            char r6 = r0.charAt(r2)
            int r2 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r2
            int r1 = r1 + r7
            int r2 = r2 + r5
            int r2 = r2 - r1
            int r2 = r2 + -2
            r17 = r5
            goto L_0x0103
        L_0x00fb:
            int r2 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r2
            int r2 = r2 + r17
            int r2 = r2 - r1
            int r2 = r2 - r7
        L_0x0103:
            if (r16 != 0) goto L_0x0110
            r5 = 20
            if (r2 >= r5) goto L_0x0110
            float r1 = (float) r3
            float r2 = (float) r11
            float r1 = r1 / r2
            if (r10 == 0) goto L_0x0118
            float r1 = -r1
            goto L_0x0118
        L_0x0110:
            java.lang.String r1 = r0.subString(r1, r2)
            float r1 = java.lang.Float.parseFloat(r1)
        L_0x0118:
            r2 = 44
            if (r6 != r2) goto L_0x0132
            int r2 = r0.bp
            int r2 = r2 + r17
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r2 = 3
            r0.matchStat = r2
            r2 = 16
            r0.token = r2
            return r1
        L_0x0132:
            r2 = 16
            r3 = 125(0x7d, float:1.75E-43)
            if (r6 != r3) goto L_0x019b
            int r3 = r0.bp
            int r5 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            r6 = 44
            if (r3 != r6) goto L_0x0156
            r0.token = r2
            int r2 = r0.bp
            int r2 = r2 + r5
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            goto L_0x0194
        L_0x0156:
            r2 = 93
            if (r3 != r2) goto L_0x016c
            r2 = 15
            r0.token = r2
            int r2 = r0.bp
            int r2 = r2 + r5
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            goto L_0x0194
        L_0x016c:
            r2 = 125(0x7d, float:1.75E-43)
            if (r3 != r2) goto L_0x0182
            r2 = 13
            r0.token = r2
            int r2 = r0.bp
            int r2 = r2 + r5
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            goto L_0x0194
        L_0x0182:
            r2 = 26
            if (r3 != r2) goto L_0x0198
            int r2 = r0.bp
            int r5 = r5 - r7
            int r2 = r2 + r5
            r0.bp = r2
            r2 = 20
            r0.token = r2
            r2 = 26
            r0.ch = r2
        L_0x0194:
            r2 = 4
            r0.matchStat = r2
            return r1
        L_0x0198:
            r0.matchStat = r14
            return r4
        L_0x019b:
            r0.matchStat = r14
            return r4
        L_0x019e:
            r1 = 110(0x6e, float:1.54E-43)
            if (r3 != r1) goto L_0x0226
            int r1 = r0.bp
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x0226
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x0226
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + 2
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x0226
            r1 = 5
            r0.matchStat = r1
            int r6 = r6 + 3
            int r2 = r0.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r0.charAt(r2)
            if (r8 == 0) goto L_0x01e0
            if (r2 != r5) goto L_0x01e0
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
        L_0x01e0:
            r5 = 44
        L_0x01e2:
            if (r2 != r5) goto L_0x01f8
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r6 = 16
            r0.token = r6
            return r4
        L_0x01f8:
            r6 = 16
            r7 = 125(0x7d, float:1.75E-43)
            if (r2 != r7) goto L_0x0212
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 13
            r0.token = r1
            return r4
        L_0x0212:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x0223
            int r2 = r0.bp
            int r8 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r8
            goto L_0x01e2
        L_0x0223:
            r0.matchStat = r14
            return r4
        L_0x0226:
            r0.matchStat = r14
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloat(char[]):float");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public final float scanFloat(char r23) {
        /*
            r22 = this;
            r0 = r22
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r2 = r2 + r1
            char r2 = r0.charAt(r2)
            r3 = 34
            r4 = 1
            if (r2 != r3) goto L_0x0013
            r5 = 1
            goto L_0x0014
        L_0x0013:
            r5 = 0
        L_0x0014:
            if (r5 == 0) goto L_0x001f
            int r2 = r0.bp
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            r7 = 2
            goto L_0x0020
        L_0x001f:
            r7 = 1
        L_0x0020:
            r8 = 45
            if (r2 != r8) goto L_0x0026
            r9 = 1
            goto L_0x0027
        L_0x0026:
            r9 = 0
        L_0x0027:
            if (r9 == 0) goto L_0x0033
            int r2 = r0.bp
            int r10 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r7 = r10
        L_0x0033:
            r12 = 0
            r13 = -1
            r14 = 48
            if (r2 < r14) goto L_0x012b
            r15 = 57
            if (r2 > r15) goto L_0x012b
            int r2 = r2 - r14
            long r1 = (long) r2
        L_0x003f:
            int r10 = r0.bp
            int r17 = r7 + 1
            int r10 = r10 + r7
            char r7 = r0.charAt(r10)
            r18 = 10
            if (r7 < r14) goto L_0x0057
            if (r7 > r15) goto L_0x0057
            long r1 = r1 * r18
            int r7 = r7 + -48
            long r6 = (long) r7
            long r1 = r1 + r6
            r7 = r17
            goto L_0x003f
        L_0x0057:
            r20 = 1
            r6 = 46
            if (r7 != r6) goto L_0x005f
            r6 = 1
            goto L_0x0060
        L_0x005f:
            r6 = 0
        L_0x0060:
            if (r6 == 0) goto L_0x0094
            int r6 = r0.bp
            int r7 = r17 + 1
            int r6 = r6 + r17
            char r6 = r0.charAt(r6)
            if (r6 < r14) goto L_0x0091
            if (r6 > r15) goto L_0x0091
            long r1 = r1 * r18
            int r6 = r6 - r14
            long r10 = (long) r6
            long r1 = r1 + r10
            r20 = r18
        L_0x0077:
            int r6 = r0.bp
            int r10 = r7 + 1
            int r6 = r6 + r7
            char r7 = r0.charAt(r6)
            if (r7 < r14) goto L_0x008e
            if (r7 > r15) goto L_0x008e
            long r1 = r1 * r18
            int r7 = r7 + -48
            long r6 = (long) r7
            long r1 = r1 + r6
            long r20 = r20 * r18
            r7 = r10
            goto L_0x0077
        L_0x008e:
            r17 = r10
            goto L_0x0094
        L_0x0091:
            r0.matchStat = r13
            return r12
        L_0x0094:
            r10 = r20
            r6 = 101(0x65, float:1.42E-43)
            if (r7 == r6) goto L_0x00a2
            r6 = 69
            if (r7 != r6) goto L_0x009f
            goto L_0x00a2
        L_0x009f:
            r16 = 0
            goto L_0x00a4
        L_0x00a2:
            r16 = 1
        L_0x00a4:
            if (r16 == 0) goto L_0x00d6
            int r6 = r0.bp
            int r7 = r17 + 1
            int r6 = r6 + r17
            char r6 = r0.charAt(r6)
            r4 = 43
            if (r6 == r4) goto L_0x00bb
            if (r6 != r8) goto L_0x00b7
            goto L_0x00bb
        L_0x00b7:
            r17 = r7
            r7 = r6
            goto L_0x00c7
        L_0x00bb:
            int r4 = r0.bp
            int r6 = r7 + 1
            int r4 = r4 + r7
            char r4 = r0.charAt(r4)
            r7 = r4
        L_0x00c5:
            r17 = r6
        L_0x00c7:
            if (r7 < r14) goto L_0x00d6
            if (r7 > r15) goto L_0x00d6
            int r4 = r0.bp
            int r6 = r17 + 1
            int r4 = r4 + r17
            char r7 = r0.charAt(r4)
            goto L_0x00c5
        L_0x00d6:
            if (r5 == 0) goto L_0x00f2
            if (r7 == r3) goto L_0x00dd
            r0.matchStat = r13
            return r12
        L_0x00dd:
            int r3 = r0.bp
            int r4 = r17 + 1
            int r3 = r3 + r17
            char r7 = r0.charAt(r3)
            int r3 = r0.bp
            int r5 = r3 + 1
            int r3 = r3 + r4
            int r3 = r3 - r5
            r6 = 2
            int r3 = r3 - r6
            r17 = r4
            goto L_0x00f9
        L_0x00f2:
            int r5 = r0.bp
            int r3 = r5 + r17
            int r3 = r3 - r5
            r4 = 1
            int r3 = r3 - r4
        L_0x00f9:
            if (r16 != 0) goto L_0x0106
            r4 = 20
            if (r3 >= r4) goto L_0x0106
            float r1 = (float) r1
            float r2 = (float) r10
            float r1 = r1 / r2
            if (r9 == 0) goto L_0x010e
            float r1 = -r1
            goto L_0x010e
        L_0x0106:
            java.lang.String r1 = r0.subString(r5, r3)
            float r1 = java.lang.Float.parseFloat(r1)
        L_0x010e:
            r2 = r23
            if (r7 != r2) goto L_0x0128
            int r2 = r0.bp
            int r2 = r2 + r17
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r2 = 3
            r0.matchStat = r2
            r2 = 16
            r0.token = r2
            return r1
        L_0x0128:
            r0.matchStat = r13
            return r1
        L_0x012b:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x01b5
            int r1 = r0.bp
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x01b5
            int r1 = r0.bp
            int r1 = r1 + r7
            r2 = 1
            int r1 = r1 + r2
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x01b5
            int r1 = r0.bp
            int r1 = r1 + r7
            r4 = 2
            int r1 = r1 + r4
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01b5
            r1 = 5
            r0.matchStat = r1
            r2 = 3
            int r7 = r7 + r2
            int r2 = r0.bp
            int r4 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r5 == 0) goto L_0x016e
            if (r2 != r3) goto L_0x016e
            int r2 = r0.bp
            int r3 = r4 + 1
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            goto L_0x016f
        L_0x016e:
            r3 = r4
        L_0x016f:
            r4 = 44
            if (r2 != r4) goto L_0x0187
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r4 = 16
            r0.token = r4
            return r12
        L_0x0187:
            r4 = 16
            r5 = 93
            if (r2 != r5) goto L_0x01a1
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 15
            r0.token = r1
            return r12
        L_0x01a1:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x01b2
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
            goto L_0x016f
        L_0x01b2:
            r0.matchStat = r13
            return r12
        L_0x01b5:
            r0.matchStat = r13
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFloat(char):float");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public double scanDouble(char r24) {
        /*
            r23 = this;
            r0 = r23
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r2 = r2 + r1
            char r2 = r0.charAt(r2)
            r3 = 34
            r4 = 1
            if (r2 != r3) goto L_0x0013
            r5 = 1
            goto L_0x0014
        L_0x0013:
            r5 = 0
        L_0x0014:
            if (r5 == 0) goto L_0x001f
            int r2 = r0.bp
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            r7 = 2
            goto L_0x0020
        L_0x001f:
            r7 = 1
        L_0x0020:
            r8 = 45
            if (r2 != r8) goto L_0x0026
            r9 = 1
            goto L_0x0027
        L_0x0026:
            r9 = 0
        L_0x0027:
            if (r9 == 0) goto L_0x0033
            int r2 = r0.bp
            int r10 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r7 = r10
        L_0x0033:
            r12 = 0
            r14 = -1
            r15 = 48
            if (r2 < r15) goto L_0x0142
            r1 = 57
            if (r2 > r1) goto L_0x0142
            int r2 = r2 - r15
            long r10 = (long) r2
        L_0x0040:
            int r2 = r0.bp
            int r17 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r18 = 10
            if (r2 < r15) goto L_0x0058
            if (r2 > r1) goto L_0x0058
            long r10 = r10 * r18
            int r2 = r2 + -48
            long r6 = (long) r2
            long r10 = r10 + r6
            r7 = r17
            goto L_0x0040
        L_0x0058:
            r6 = 46
            if (r2 != r6) goto L_0x005e
            r6 = 1
            goto L_0x005f
        L_0x005e:
            r6 = 0
        L_0x005f:
            if (r6 == 0) goto L_0x00a0
            int r2 = r0.bp
            int r6 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            if (r2 < r15) goto L_0x009d
            if (r2 > r1) goto L_0x009d
            long r10 = r10 * r18
            int r2 = r2 - r15
            long r3 = (long) r2
            long r10 = r10 + r3
            r2 = r18
        L_0x0076:
            int r4 = r0.bp
            int r7 = r6 + 1
            int r4 = r4 + r6
            char r4 = r0.charAt(r4)
            if (r4 < r15) goto L_0x0093
            if (r4 > r1) goto L_0x0093
            long r10 = r10 * r18
            int r4 = r4 + -48
            r20 = r9
            long r8 = (long) r4
            long r10 = r10 + r8
            long r2 = r2 * r18
            r6 = r7
            r9 = r20
            r8 = 45
            goto L_0x0076
        L_0x0093:
            r20 = r9
            r17 = r7
            r21 = r2
            r2 = r4
            r3 = r21
            goto L_0x00a4
        L_0x009d:
            r0.matchStat = r14
            return r12
        L_0x00a0:
            r20 = r9
            r3 = 1
        L_0x00a4:
            r7 = 101(0x65, float:1.42E-43)
            if (r2 == r7) goto L_0x00b0
            r7 = 69
            if (r2 != r7) goto L_0x00ad
            goto L_0x00b0
        L_0x00ad:
            r16 = 0
            goto L_0x00b2
        L_0x00b0:
            r16 = 1
        L_0x00b2:
            if (r16 == 0) goto L_0x00e4
            int r2 = r0.bp
            int r7 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            r8 = 43
            if (r2 == r8) goto L_0x00ca
            r6 = 45
            if (r2 != r6) goto L_0x00c7
            goto L_0x00ca
        L_0x00c7:
            r17 = r7
            goto L_0x00d5
        L_0x00ca:
            int r2 = r0.bp
            int r6 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
        L_0x00d3:
            r17 = r6
        L_0x00d5:
            if (r2 < r15) goto L_0x00e4
            if (r2 > r1) goto L_0x00e4
            int r2 = r0.bp
            int r6 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            goto L_0x00d3
        L_0x00e4:
            if (r5 == 0) goto L_0x0100
            r1 = 34
            if (r2 == r1) goto L_0x00ed
            r0.matchStat = r14
            return r12
        L_0x00ed:
            int r1 = r0.bp
            int r2 = r17 + 1
            int r1 = r1 + r17
            char r1 = r0.charAt(r1)
            int r5 = r0.bp
            int r6 = r5 + 1
            int r5 = r5 + r2
            int r5 = r5 - r6
            r7 = 2
            int r5 = r5 - r7
            goto L_0x010b
        L_0x0100:
            int r6 = r0.bp
            int r1 = r6 + r17
            int r1 = r1 - r6
            r5 = 1
            int r5 = r1 + -1
            r1 = r2
            r2 = r17
        L_0x010b:
            if (r16 != 0) goto L_0x011e
            r7 = 20
            if (r5 >= r7) goto L_0x011e
            double r5 = (double) r10
            double r3 = (double) r3
            java.lang.Double.isNaN(r5)
            java.lang.Double.isNaN(r3)
            double r5 = r5 / r3
            if (r20 == 0) goto L_0x0126
            double r5 = -r5
            goto L_0x0126
        L_0x011e:
            java.lang.String r3 = r0.subString(r6, r5)
            double r5 = java.lang.Double.parseDouble(r3)
        L_0x0126:
            r3 = r24
            if (r1 != r3) goto L_0x013f
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r1 = 3
            r0.matchStat = r1
            r1 = 16
            r0.token = r1
            return r5
        L_0x013f:
            r0.matchStat = r14
            return r5
        L_0x0142:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x01cd
            int r1 = r0.bp
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x01cd
            int r1 = r0.bp
            int r1 = r1 + r7
            r2 = 1
            int r1 = r1 + r2
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x01cd
            int r1 = r0.bp
            int r1 = r1 + r7
            r3 = 2
            int r1 = r1 + r3
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01cd
            r1 = 5
            r0.matchStat = r1
            r2 = 3
            int r7 = r7 + r2
            int r2 = r0.bp
            int r3 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r5 == 0) goto L_0x0187
            r4 = 34
            if (r2 != r4) goto L_0x0187
            int r2 = r0.bp
            int r4 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r4
        L_0x0187:
            r4 = 44
            if (r2 != r4) goto L_0x019f
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r4 = 16
            r0.token = r4
            return r12
        L_0x019f:
            r4 = 16
            r5 = 93
            if (r2 != r5) goto L_0x01b9
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 15
            r0.token = r1
            return r12
        L_0x01b9:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x01ca
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
            goto L_0x0187
        L_0x01ca:
            r0.matchStat = r14
            return r12
        L_0x01cd:
            r0.matchStat = r14
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDouble(char):double");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public java.math.BigDecimal scanDecimal(char r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = 0
            r0.matchStat = r1
            int r2 = r0.bp
            int r2 = r2 + r1
            char r2 = r0.charAt(r2)
            r3 = 34
            r4 = 1
            if (r2 != r3) goto L_0x0013
            r5 = 1
            goto L_0x0014
        L_0x0013:
            r5 = 0
        L_0x0014:
            r6 = 2
            if (r5 == 0) goto L_0x0020
            int r2 = r0.bp
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            r7 = 2
            goto L_0x0021
        L_0x0020:
            r7 = 1
        L_0x0021:
            r8 = 45
            if (r2 != r8) goto L_0x0027
            r9 = 1
            goto L_0x0028
        L_0x0027:
            r9 = 0
        L_0x0028:
            if (r9 == 0) goto L_0x0034
            int r2 = r0.bp
            int r9 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r7 = r9
        L_0x0034:
            r10 = 3
            r11 = 16
            r12 = 44
            r13 = 48
            r14 = -1
            r15 = 0
            if (r2 < r13) goto L_0x0162
            r1 = 57
            if (r2 > r1) goto L_0x0162
        L_0x0043:
            int r2 = r0.bp
            int r16 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r2 < r13) goto L_0x0053
            if (r2 > r1) goto L_0x0053
            r7 = r16
            goto L_0x0043
        L_0x0053:
            r7 = 46
            if (r2 != r7) goto L_0x0059
            r7 = 1
            goto L_0x005a
        L_0x0059:
            r7 = 0
        L_0x005a:
            if (r7 == 0) goto L_0x007d
            int r2 = r0.bp
            int r7 = r16 + 1
            int r2 = r2 + r16
            char r2 = r0.charAt(r2)
            if (r2 < r13) goto L_0x007a
            if (r2 > r1) goto L_0x007a
        L_0x006a:
            int r2 = r0.bp
            int r16 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r2 < r13) goto L_0x007d
            if (r2 > r1) goto L_0x007d
            r7 = r16
            goto L_0x006a
        L_0x007a:
            r0.matchStat = r14
            return r15
        L_0x007d:
            r7 = 101(0x65, float:1.42E-43)
            if (r2 == r7) goto L_0x0088
            r7 = 69
            if (r2 != r7) goto L_0x0086
            goto L_0x0088
        L_0x0086:
            r7 = 0
            goto L_0x0089
        L_0x0088:
            r7 = 1
        L_0x0089:
            if (r7 == 0) goto L_0x00b9
            int r2 = r0.bp
            int r7 = r16 + 1
            int r2 = r2 + r16
            char r2 = r0.charAt(r2)
            r9 = 43
            if (r2 == r9) goto L_0x009f
            if (r2 != r8) goto L_0x009c
            goto L_0x009f
        L_0x009c:
            r16 = r7
            goto L_0x00aa
        L_0x009f:
            int r2 = r0.bp
            int r8 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            r16 = r8
        L_0x00aa:
            if (r2 < r13) goto L_0x00b9
            if (r2 > r1) goto L_0x00b9
            int r2 = r0.bp
            int r7 = r16 + 1
            int r2 = r2 + r16
            char r2 = r0.charAt(r2)
            goto L_0x009c
        L_0x00b9:
            if (r5 == 0) goto L_0x00d4
            if (r2 == r3) goto L_0x00c0
            r0.matchStat = r14
            return r15
        L_0x00c0:
            int r1 = r0.bp
            int r2 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            int r3 = r0.bp
            int r5 = r3 + 1
            int r3 = r3 + r2
            int r3 = r3 - r5
            int r3 = r3 - r6
            r16 = r2
            goto L_0x00dc
        L_0x00d4:
            int r5 = r0.bp
            int r1 = r5 + r16
            int r1 = r1 - r5
            int r3 = r1 + -1
            r1 = r2
        L_0x00dc:
            char[] r2 = r0.sub_chars(r5, r3)
            java.math.BigDecimal r3 = new java.math.BigDecimal
            r3.<init>(r2)
            if (r1 != r12) goto L_0x00fa
            int r1 = r0.bp
            int r1 = r1 + r16
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r10
            r0.token = r11
            return r3
        L_0x00fa:
            r2 = 93
            if (r1 != r2) goto L_0x015f
            int r1 = r0.bp
            int r2 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            if (r1 != r12) goto L_0x011a
            r0.token = r11
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0158
        L_0x011a:
            r5 = 93
            if (r1 != r5) goto L_0x0130
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0158
        L_0x0130:
            r5 = 125(0x7d, float:1.75E-43)
            if (r1 != r5) goto L_0x0146
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0158
        L_0x0146:
            r5 = 26
            if (r1 != r5) goto L_0x015c
            r1 = 20
            r0.token = r1
            int r1 = r0.bp
            int r2 = r2 - r4
            int r1 = r1 + r2
            r0.bp = r1
            r1 = 26
            r0.ch = r1
        L_0x0158:
            r1 = 4
            r0.matchStat = r1
            return r3
        L_0x015c:
            r0.matchStat = r14
            return r15
        L_0x015f:
            r0.matchStat = r14
            return r15
        L_0x0162:
            r1 = 110(0x6e, float:1.54E-43)
            if (r2 != r1) goto L_0x01e3
            int r1 = r0.bp
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x01e3
            int r1 = r0.bp
            int r1 = r1 + r7
            int r1 = r1 + r4
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x01e3
            int r1 = r0.bp
            int r1 = r1 + r7
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01e3
            r1 = 5
            r0.matchStat = r1
            int r7 = r7 + r10
            int r2 = r0.bp
            int r4 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r5 == 0) goto L_0x01a2
            if (r2 != r3) goto L_0x01a2
            int r2 = r0.bp
            int r3 = r4 + 1
            int r2 = r2 + r4
            char r2 = r0.charAt(r2)
            goto L_0x01a3
        L_0x01a2:
            r3 = r4
        L_0x01a3:
            if (r2 != r12) goto L_0x01b7
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r0.token = r11
            return r15
        L_0x01b7:
            r4 = 125(0x7d, float:1.75E-43)
            if (r2 != r4) goto L_0x01cf
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 13
            r0.token = r1
            return r15
        L_0x01cf:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x01e0
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
            goto L_0x01a3
        L_0x01e0:
            r0.matchStat = r14
            return r15
        L_0x01e3:
            r0.matchStat = r14
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDecimal(char):java.math.BigDecimal");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:368)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:172)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public final float[] scanFieldFloatArray(char[] r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = 0
            r0.matchStat = r1
            boolean r2 = r18.charArrayCompare(r19)
            r3 = -2
            r4 = 0
            if (r2 != 0) goto L_0x0010
            r0.matchStat = r3
            return r4
        L_0x0010:
            r2 = r19
            int r2 = r2.length
            int r5 = r0.bp
            int r6 = r2 + 1
            int r5 = r5 + r2
            char r2 = r0.charAt(r5)
            r5 = 91
            if (r2 == r5) goto L_0x0023
            r0.matchStat = r3
            return r4
        L_0x0023:
            int r2 = r0.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r0.charAt(r2)
            r5 = 16
            float[] r6 = new float[r5]
            r7 = r6
            r6 = 0
        L_0x0032:
            int r8 = r0.bp
            int r8 = r8 + r3
            r9 = 1
            int r8 = r8 - r9
            r10 = 45
            if (r2 != r10) goto L_0x003d
            r11 = 1
            goto L_0x003e
        L_0x003d:
            r11 = 0
        L_0x003e:
            if (r11 == 0) goto L_0x004a
            int r2 = r0.bp
            int r12 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r12
        L_0x004a:
            r12 = -1
            r13 = 48
            if (r2 < r13) goto L_0x01b3
            r14 = 57
            if (r2 > r14) goto L_0x01b3
            int r2 = r2 + -48
        L_0x0055:
            int r15 = r0.bp
            int r16 = r3 + 1
            int r15 = r15 + r3
            char r3 = r0.charAt(r15)
            if (r3 < r13) goto L_0x006a
            if (r3 > r14) goto L_0x006a
            int r2 = r2 * 10
            int r3 = r3 + -48
            int r2 = r2 + r3
            r3 = r16
            goto L_0x0055
        L_0x006a:
            r15 = 46
            if (r3 != r15) goto L_0x0070
            r15 = 1
            goto L_0x0071
        L_0x0070:
            r15 = 0
        L_0x0071:
            r5 = 10
            if (r15 == 0) goto L_0x00a4
            int r3 = r0.bp
            int r15 = r16 + 1
            int r3 = r3 + r16
            char r3 = r0.charAt(r3)
            if (r3 < r13) goto L_0x00a1
            if (r3 > r14) goto L_0x00a1
            int r2 = r2 * 10
            int r3 = r3 + -48
            int r2 = r2 + r3
            r3 = 10
        L_0x008a:
            int r1 = r0.bp
            int r16 = r15 + 1
            int r1 = r1 + r15
            char r1 = r0.charAt(r1)
            if (r1 < r13) goto L_0x00a6
            if (r1 > r14) goto L_0x00a6
            int r2 = r2 * 10
            int r1 = r1 + -48
            int r2 = r2 + r1
            int r3 = r3 * 10
            r15 = r16
            goto L_0x008a
        L_0x00a1:
            r0.matchStat = r12
            return r4
        L_0x00a4:
            r1 = r3
            r3 = 1
        L_0x00a6:
            r15 = 101(0x65, float:1.42E-43)
            if (r1 == r15) goto L_0x00b1
            r15 = 69
            if (r1 != r15) goto L_0x00af
            goto L_0x00b1
        L_0x00af:
            r15 = 0
            goto L_0x00b2
        L_0x00b1:
            r15 = 1
        L_0x00b2:
            if (r15 == 0) goto L_0x00e3
            int r1 = r0.bp
            int r17 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            r4 = 43
            if (r1 == r4) goto L_0x00c8
            if (r1 != r10) goto L_0x00c5
            goto L_0x00c8
        L_0x00c5:
            r16 = r17
            goto L_0x00d4
        L_0x00c8:
            int r1 = r0.bp
            int r4 = r17 + 1
            int r1 = r1 + r17
            char r1 = r0.charAt(r1)
        L_0x00d2:
            r16 = r4
        L_0x00d4:
            if (r1 < r13) goto L_0x00e3
            if (r1 > r14) goto L_0x00e3
            int r1 = r0.bp
            int r4 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            goto L_0x00d2
        L_0x00e3:
            int r4 = r0.bp
            int r4 = r4 + r16
            int r4 = r4 - r8
            int r4 = r4 - r9
            if (r15 != 0) goto L_0x00f4
            if (r4 >= r5) goto L_0x00f4
            float r2 = (float) r2
            float r3 = (float) r3
            float r2 = r2 / r3
            if (r11 == 0) goto L_0x00fc
            float r2 = -r2
            goto L_0x00fc
        L_0x00f4:
            java.lang.String r2 = r0.subString(r8, r4)
            float r2 = java.lang.Float.parseFloat(r2)
        L_0x00fc:
            int r3 = r7.length
            r4 = 3
            if (r6 < r3) goto L_0x010c
            int r3 = r7.length
            int r3 = r3 * 3
            int r3 = r3 / 2
            float[] r3 = new float[r3]
            r5 = 0
            java.lang.System.arraycopy(r7, r5, r3, r5, r6)
            r7 = r3
        L_0x010c:
            int r3 = r6 + 1
            r7[r6] = r2
            r2 = 44
            if (r1 != r2) goto L_0x0122
            int r1 = r0.bp
            int r2 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            r16 = r2
            goto L_0x01a5
        L_0x0122:
            r5 = 93
            if (r1 != r5) goto L_0x01a5
            int r1 = r0.bp
            int r6 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            int r8 = r7.length
            if (r3 == r8) goto L_0x013a
            float[] r8 = new float[r3]
            r10 = 0
            java.lang.System.arraycopy(r7, r10, r8, r10, r3)
            r7 = r8
        L_0x013a:
            if (r1 != r2) goto L_0x014c
            int r1 = r0.bp
            int r6 = r6 - r9
            int r1 = r1 + r6
            r0.bp = r1
            r18.next()
            r0.matchStat = r4
            r4 = 16
            r0.token = r4
            return r7
        L_0x014c:
            r4 = 16
            r3 = 125(0x7d, float:1.75E-43)
            if (r1 != r3) goto L_0x01a1
            int r1 = r0.bp
            int r8 = r6 + 1
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x0169
            r0.token = r4
            int r1 = r0.bp
            int r8 = r8 - r9
            int r1 = r1 + r8
            r0.bp = r1
            r18.next()
            goto L_0x0199
        L_0x0169:
            if (r1 != r5) goto L_0x0179
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r8 = r8 - r9
            int r1 = r1 + r8
            r0.bp = r1
            r18.next()
            goto L_0x0199
        L_0x0179:
            if (r1 != r3) goto L_0x0189
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r8 = r8 - r9
            int r1 = r1 + r8
            r0.bp = r1
            r18.next()
            goto L_0x0199
        L_0x0189:
            r2 = 26
            if (r1 != r2) goto L_0x019d
            int r1 = r0.bp
            int r8 = r8 - r9
            int r1 = r1 + r8
            r0.bp = r1
            r1 = 20
            r0.token = r1
            r0.ch = r2
        L_0x0199:
            r1 = 4
            r0.matchStat = r1
            return r7
        L_0x019d:
            r0.matchStat = r12
            r2 = 0
            return r2
        L_0x01a1:
            r2 = 0
            r0.matchStat = r12
            return r2
        L_0x01a5:
            r2 = 0
            r4 = 16
            r10 = 0
            r4 = r2
            r6 = r3
            r3 = r16
            r5 = 16
            r2 = r1
            r1 = 0
            goto L_0x0032
        L_0x01b3:
            r2 = r4
            r0.matchStat = r12
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:368)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:172)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:368)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:172)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public final float[][] scanFieldFloatArray2(char[] r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = 0
            r0.matchStat = r1
            boolean r2 = r19.charArrayCompare(r20)
            r3 = -2
            r4 = 0
            if (r2 != 0) goto L_0x0012
            r0.matchStat = r3
            float[][] r4 = (float[][]) r4
            return r4
        L_0x0012:
            r2 = r20
            int r2 = r2.length
            int r5 = r0.bp
            int r6 = r2 + 1
            int r5 = r5 + r2
            char r2 = r0.charAt(r5)
            r5 = 91
            if (r2 == r5) goto L_0x0027
            r0.matchStat = r3
            float[][] r4 = (float[][]) r4
            return r4
        L_0x0027:
            int r2 = r0.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r0.charAt(r2)
            r6 = 16
            float[][] r7 = new float[r6][]
            r8 = 0
        L_0x0035:
            if (r2 != r5) goto L_0x0227
            int r2 = r0.bp
            int r9 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            float[] r3 = new float[r6]
            r10 = 0
        L_0x0043:
            int r11 = r0.bp
            int r11 = r11 + r9
            r12 = 1
            int r11 = r11 - r12
            r13 = 45
            if (r2 != r13) goto L_0x004e
            r14 = 1
            goto L_0x004f
        L_0x004e:
            r14 = 0
        L_0x004f:
            if (r14 == 0) goto L_0x005b
            int r2 = r0.bp
            int r15 = r9 + 1
            int r2 = r2 + r9
            char r2 = r0.charAt(r2)
            goto L_0x005c
        L_0x005b:
            r15 = r9
        L_0x005c:
            r9 = -1
            r5 = 48
            if (r2 < r5) goto L_0x0220
            r6 = 57
            if (r2 > r6) goto L_0x0220
            int r2 = r2 + -48
        L_0x0067:
            int r1 = r0.bp
            int r16 = r15 + 1
            int r1 = r1 + r15
            char r1 = r0.charAt(r1)
            if (r1 < r5) goto L_0x007c
            if (r1 > r6) goto L_0x007c
            int r2 = r2 * 10
            int r1 = r1 + -48
            int r2 = r2 + r1
            r15 = r16
            goto L_0x0067
        L_0x007c:
            r15 = 46
            if (r1 != r15) goto L_0x00b7
            int r1 = r0.bp
            int r15 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            if (r1 < r5) goto L_0x00b2
            if (r1 > r6) goto L_0x00b2
            int r2 = r2 * 10
            int r1 = r1 + -48
            int r2 = r2 + r1
            r1 = 10
        L_0x0095:
            int r12 = r0.bp
            int r16 = r15 + 1
            int r12 = r12 + r15
            char r12 = r0.charAt(r12)
            if (r12 < r5) goto L_0x00ac
            if (r12 > r6) goto L_0x00ac
            int r2 = r2 * 10
            int r12 = r12 + -48
            int r2 = r2 + r12
            int r1 = r1 * 10
            r15 = r16
            goto L_0x0095
        L_0x00ac:
            r18 = r12
            r12 = r1
            r1 = r18
            goto L_0x00b8
        L_0x00b2:
            r0.matchStat = r9
            float[][] r4 = (float[][]) r4
            return r4
        L_0x00b7:
            r12 = 1
        L_0x00b8:
            r15 = 101(0x65, float:1.42E-43)
            if (r1 == r15) goto L_0x00c3
            r15 = 69
            if (r1 != r15) goto L_0x00c1
            goto L_0x00c3
        L_0x00c1:
            r15 = 0
            goto L_0x00c4
        L_0x00c3:
            r15 = 1
        L_0x00c4:
            if (r15 == 0) goto L_0x00f5
            int r1 = r0.bp
            int r17 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            r4 = 43
            if (r1 == r4) goto L_0x00da
            if (r1 != r13) goto L_0x00d7
            goto L_0x00da
        L_0x00d7:
            r16 = r17
            goto L_0x00e6
        L_0x00da:
            int r1 = r0.bp
            int r4 = r17 + 1
            int r1 = r1 + r17
            char r1 = r0.charAt(r1)
        L_0x00e4:
            r16 = r4
        L_0x00e6:
            if (r1 < r5) goto L_0x00f5
            if (r1 > r6) goto L_0x00f5
            int r1 = r0.bp
            int r4 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            goto L_0x00e4
        L_0x00f5:
            int r4 = r0.bp
            int r4 = r4 + r16
            int r4 = r4 - r11
            r5 = 1
            int r4 = r4 - r5
            if (r15 != 0) goto L_0x0109
            r5 = 10
            if (r4 >= r5) goto L_0x0109
            float r2 = (float) r2
            float r4 = (float) r12
            float r2 = r2 / r4
            if (r14 == 0) goto L_0x0111
            float r2 = -r2
            goto L_0x0111
        L_0x0109:
            java.lang.String r2 = r0.subString(r11, r4)
            float r2 = java.lang.Float.parseFloat(r2)
        L_0x0111:
            int r4 = r3.length
            r5 = 3
            if (r10 < r4) goto L_0x0121
            int r4 = r3.length
            int r4 = r4 * 3
            int r4 = r4 / 2
            float[] r4 = new float[r4]
            r6 = 0
            java.lang.System.arraycopy(r3, r6, r4, r6, r10)
            r3 = r4
        L_0x0121:
            int r4 = r10 + 1
            r3[r10] = r2
            r2 = 44
            if (r1 != r2) goto L_0x013b
            int r1 = r0.bp
            int r2 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            r9 = r2
            r5 = 16
            r6 = 0
            r11 = 0
            r2 = r1
            goto L_0x0217
        L_0x013b:
            r6 = 93
            if (r1 != r6) goto L_0x0210
            int r1 = r0.bp
            int r10 = r16 + 1
            int r1 = r1 + r16
            char r1 = r0.charAt(r1)
            int r11 = r3.length
            if (r4 == r11) goto L_0x0154
            float[] r11 = new float[r4]
            r12 = 0
            java.lang.System.arraycopy(r3, r12, r11, r12, r4)
            r3 = r11
            goto L_0x0155
        L_0x0154:
            r12 = 0
        L_0x0155:
            int r11 = r7.length
            if (r8 < r11) goto L_0x0162
            int r7 = r7.length
            int r7 = r7 * 3
            int r7 = r7 / 2
            float[][] r7 = new float[r7][]
            java.lang.System.arraycopy(r3, r12, r7, r12, r4)
        L_0x0162:
            int r4 = r8 + 1
            r7[r8] = r3
            if (r1 != r2) goto L_0x0179
            int r1 = r0.bp
            int r2 = r10 + 1
            int r1 = r1 + r10
            char r1 = r0.charAt(r1)
            r3 = r2
            r5 = 16
            r6 = 0
            r11 = 0
            r2 = r1
            goto L_0x020c
        L_0x0179:
            if (r1 != r6) goto L_0x0206
            int r1 = r0.bp
            int r3 = r10 + 1
            int r1 = r1 + r10
            char r1 = r0.charAt(r1)
            int r8 = r7.length
            if (r4 == r8) goto L_0x018e
            float[][] r8 = new float[r4][]
            r11 = 0
            java.lang.System.arraycopy(r7, r11, r8, r11, r4)
            r7 = r8
        L_0x018e:
            if (r1 != r2) goto L_0x01a1
            int r1 = r0.bp
            r2 = 1
            int r3 = r3 - r2
            int r1 = r1 + r3
            r0.bp = r1
            r19.next()
            r0.matchStat = r5
            r5 = 16
            r0.token = r5
            return r7
        L_0x01a1:
            r5 = 16
            r4 = 125(0x7d, float:1.75E-43)
            if (r1 != r4) goto L_0x01ff
            int r1 = r0.bp
            int r4 = r3 + 1
            int r1 = r1 + r3
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01bf
            r0.token = r5
            int r1 = r0.bp
            r2 = 1
            int r4 = r4 - r2
            int r1 = r1 + r4
            r0.bp = r1
            r19.next()
            goto L_0x01f4
        L_0x01bf:
            r2 = 1
            if (r1 != r6) goto L_0x01d0
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r4 = r4 - r2
            int r1 = r1 + r4
            r0.bp = r1
            r19.next()
            goto L_0x01f4
        L_0x01d0:
            r3 = 125(0x7d, float:1.75E-43)
            if (r1 != r3) goto L_0x01e2
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r4 = r4 - r2
            int r1 = r1 + r4
            r0.bp = r1
            r19.next()
            goto L_0x01f4
        L_0x01e2:
            r3 = 26
            if (r1 != r3) goto L_0x01f8
            int r1 = r0.bp
            int r4 = r4 - r2
            int r1 = r1 + r4
            r0.bp = r1
            r1 = 20
            r0.token = r1
            r1 = 26
            r0.ch = r1
        L_0x01f4:
            r1 = 4
            r0.matchStat = r1
            return r7
        L_0x01f8:
            r0.matchStat = r9
            r6 = 0
            r4 = r6
            float[][] r4 = (float[][]) r4
            return r4
        L_0x01ff:
            r6 = 0
            r0.matchStat = r9
            r4 = r6
            float[][] r4 = (float[][]) r4
            return r4
        L_0x0206:
            r5 = 16
            r6 = 0
            r11 = 0
            r2 = r1
            r3 = r10
        L_0x020c:
            r8 = r4
            r4 = r6
            r1 = 0
            goto L_0x0229
        L_0x0210:
            r5 = 16
            r6 = 0
            r11 = 0
            r2 = r1
            r9 = r16
        L_0x0217:
            r10 = r4
            r4 = r6
            r1 = 0
            r5 = 91
            r6 = 16
            goto L_0x0043
        L_0x0220:
            r6 = r4
            r0.matchStat = r9
            r4 = r6
            float[][] r4 = (float[][]) r4
            return r4
        L_0x0227:
            r5 = 16
        L_0x0229:
            r5 = 91
            r6 = 16
            goto L_0x0035
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
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
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public final double scanFieldDouble(char[] r24) {
        /*
            r23 = this;
            r0 = r23
            r1 = r24
            r2 = 0
            r0.matchStat = r2
            boolean r3 = r23.charArrayCompare(r24)
            r4 = 0
            if (r3 != 0) goto L_0x0013
            r1 = -2
            r0.matchStat = r1
            return r4
        L_0x0013:
            int r3 = r1.length
            int r6 = r0.bp
            int r7 = r3 + 1
            int r6 = r6 + r3
            char r3 = r0.charAt(r6)
            r6 = 34
            if (r3 != r6) goto L_0x0023
            r9 = 1
            goto L_0x0024
        L_0x0023:
            r9 = 0
        L_0x0024:
            if (r9 == 0) goto L_0x0030
            int r3 = r0.bp
            int r10 = r7 + 1
            int r3 = r3 + r7
            char r3 = r0.charAt(r3)
            r7 = r10
        L_0x0030:
            r10 = 45
            if (r3 != r10) goto L_0x0036
            r11 = 1
            goto L_0x0037
        L_0x0036:
            r11 = 0
        L_0x0037:
            if (r11 == 0) goto L_0x0043
            int r3 = r0.bp
            int r12 = r7 + 1
            int r3 = r3 + r7
            char r3 = r0.charAt(r3)
            r7 = r12
        L_0x0043:
            r14 = 44
            r15 = -1
            r2 = 48
            if (r3 < r2) goto L_0x01bf
            r13 = 57
            if (r3 > r13) goto L_0x01bf
            int r3 = r3 - r2
            r17 = r7
            long r6 = (long) r3
        L_0x0052:
            int r3 = r0.bp
            int r18 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            r19 = 10
            if (r3 < r2) goto L_0x006f
            if (r3 > r13) goto L_0x006f
            long r6 = r6 * r19
            int r3 = r3 + -48
            r21 = r9
            long r8 = (long) r3
            long r6 = r6 + r8
            r17 = r18
            r9 = r21
            goto L_0x0052
        L_0x006f:
            r21 = r9
            r8 = 46
            if (r3 != r8) goto L_0x0077
            r8 = 1
            goto L_0x0078
        L_0x0077:
            r8 = 0
        L_0x0078:
            if (r8 == 0) goto L_0x00ae
            int r3 = r0.bp
            int r8 = r18 + 1
            int r3 = r3 + r18
            char r3 = r0.charAt(r3)
            if (r3 < r2) goto L_0x00ab
            if (r3 > r13) goto L_0x00ab
            long r6 = r6 * r19
            int r3 = r3 - r2
            r22 = r11
            long r10 = (long) r3
            long r6 = r6 + r10
            r10 = r19
        L_0x0091:
            int r3 = r0.bp
            int r17 = r8 + 1
            int r3 = r3 + r8
            char r3 = r0.charAt(r3)
            if (r3 < r2) goto L_0x00b4
            if (r3 > r13) goto L_0x00b4
            long r6 = r6 * r19
            int r3 = r3 + -48
            long r12 = (long) r3
            long r6 = r6 + r12
            long r10 = r10 * r19
            r8 = r17
            r13 = 57
            goto L_0x0091
        L_0x00ab:
            r0.matchStat = r15
            return r4
        L_0x00ae:
            r22 = r11
            r17 = r18
            r10 = 1
        L_0x00b4:
            r12 = 101(0x65, float:1.42E-43)
            if (r3 == r12) goto L_0x00c0
            r12 = 69
            if (r3 != r12) goto L_0x00bd
            goto L_0x00c0
        L_0x00bd:
            r16 = 0
            goto L_0x00c2
        L_0x00c0:
            r16 = 1
        L_0x00c2:
            if (r16 == 0) goto L_0x00f6
            int r3 = r0.bp
            int r12 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            r13 = 43
            if (r3 == r13) goto L_0x00da
            r9 = 45
            if (r3 != r9) goto L_0x00d7
            goto L_0x00da
        L_0x00d7:
            r17 = r12
            goto L_0x00e5
        L_0x00da:
            int r3 = r0.bp
            int r9 = r12 + 1
            int r3 = r3 + r12
            char r3 = r0.charAt(r3)
            r17 = r9
        L_0x00e5:
            if (r3 < r2) goto L_0x00f6
            r9 = 57
            if (r3 > r9) goto L_0x00f6
            int r3 = r0.bp
            int r12 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            goto L_0x00d7
        L_0x00f6:
            if (r21 == 0) goto L_0x0116
            r2 = 34
            if (r3 == r2) goto L_0x00ff
            r0.matchStat = r15
            return r4
        L_0x00ff:
            int r2 = r0.bp
            int r3 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            int r9 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r9
            r12 = 1
            int r1 = r1 + r12
            int r9 = r9 + r3
            int r9 = r9 - r1
            int r9 = r9 + -2
            r17 = r3
            goto L_0x0121
        L_0x0116:
            r12 = 1
            int r2 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r2
            int r2 = r2 + r17
            int r2 = r2 - r1
            int r9 = r2 + -1
            r2 = r3
        L_0x0121:
            if (r16 != 0) goto L_0x0134
            r3 = 20
            if (r9 >= r3) goto L_0x0134
            double r6 = (double) r6
            double r9 = (double) r10
            java.lang.Double.isNaN(r6)
            java.lang.Double.isNaN(r9)
            double r6 = r6 / r9
            if (r22 == 0) goto L_0x013c
            double r6 = -r6
            goto L_0x013c
        L_0x0134:
            java.lang.String r1 = r0.subString(r1, r9)
            double r6 = java.lang.Double.parseDouble(r1)
        L_0x013c:
            if (r2 != r14) goto L_0x0154
            int r1 = r0.bp
            int r1 = r1 + r17
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r1 = 3
            r0.matchStat = r1
            r1 = 16
            r0.token = r1
            return r6
        L_0x0154:
            r1 = 16
            r3 = 125(0x7d, float:1.75E-43)
            if (r2 != r3) goto L_0x01bc
            int r2 = r0.bp
            int r3 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            if (r2 != r14) goto L_0x0176
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r3
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x01b5
        L_0x0176:
            r1 = 93
            if (r2 != r1) goto L_0x018c
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r3
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x01b5
        L_0x018c:
            r1 = 125(0x7d, float:1.75E-43)
            if (r2 != r1) goto L_0x01a2
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r3
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x01b5
        L_0x01a2:
            r1 = 26
            if (r2 != r1) goto L_0x01b9
            r1 = 20
            r0.token = r1
            int r1 = r0.bp
            r2 = 1
            int r3 = r3 - r2
            int r1 = r1 + r3
            r0.bp = r1
            r1 = 26
            r0.ch = r1
        L_0x01b5:
            r1 = 4
            r0.matchStat = r1
            return r6
        L_0x01b9:
            r0.matchStat = r15
            return r4
        L_0x01bc:
            r0.matchStat = r15
            return r4
        L_0x01bf:
            r17 = r7
            r21 = r9
            r1 = 110(0x6e, float:1.54E-43)
            if (r3 != r1) goto L_0x024f
            int r1 = r0.bp
            int r1 = r1 + r17
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x024f
            int r1 = r0.bp
            int r1 = r1 + r17
            r2 = 1
            int r1 = r1 + r2
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x024f
            int r1 = r0.bp
            int r1 = r1 + r17
            int r1 = r1 + 2
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x024f
            r1 = 5
            r0.matchStat = r1
            int r7 = r17 + 3
            int r2 = r0.bp
            int r3 = r7 + 1
            int r2 = r2 + r7
            char r2 = r0.charAt(r2)
            if (r21 == 0) goto L_0x020b
            r6 = 34
            if (r2 != r6) goto L_0x020b
            int r2 = r0.bp
            int r6 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r6
        L_0x020b:
            if (r2 != r14) goto L_0x0221
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r6 = 16
            r0.token = r6
            return r4
        L_0x0221:
            r6 = 16
            r7 = 125(0x7d, float:1.75E-43)
            if (r2 != r7) goto L_0x023b
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 13
            r0.token = r1
            return r4
        L_0x023b:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x024c
            int r2 = r0.bp
            int r8 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r8
            goto L_0x020b
        L_0x024c:
            r0.matchStat = r15
            return r4
        L_0x024f:
            r0.matchStat = r15
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDouble(char[]):double");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:690)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    public java.math.BigDecimal scanFieldDecimal(char[] r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = 0
            r0.matchStat = r2
            boolean r3 = r18.charArrayCompare(r19)
            r4 = 0
            if (r3 != 0) goto L_0x0012
            r1 = -2
            r0.matchStat = r1
            return r4
        L_0x0012:
            int r3 = r1.length
            int r5 = r0.bp
            int r6 = r3 + 1
            int r5 = r5 + r3
            char r3 = r0.charAt(r5)
            r5 = 34
            r7 = 1
            if (r3 != r5) goto L_0x0023
            r8 = 1
            goto L_0x0024
        L_0x0023:
            r8 = 0
        L_0x0024:
            if (r8 == 0) goto L_0x0030
            int r3 = r0.bp
            int r9 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r9
        L_0x0030:
            r9 = 45
            if (r3 != r9) goto L_0x0036
            r10 = 1
            goto L_0x0037
        L_0x0036:
            r10 = 0
        L_0x0037:
            if (r10 == 0) goto L_0x0043
            int r3 = r0.bp
            int r10 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r10
        L_0x0043:
            r10 = 3
            r11 = 16
            r13 = 44
            r14 = 48
            r15 = -1
            if (r3 < r14) goto L_0x0176
            r2 = 57
            if (r3 > r2) goto L_0x0176
        L_0x0051:
            int r3 = r0.bp
            int r17 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            if (r3 < r14) goto L_0x0061
            if (r3 > r2) goto L_0x0061
            r6 = r17
            goto L_0x0051
        L_0x0061:
            r6 = 46
            if (r3 != r6) goto L_0x0067
            r6 = 1
            goto L_0x0068
        L_0x0067:
            r6 = 0
        L_0x0068:
            if (r6 == 0) goto L_0x008b
            int r3 = r0.bp
            int r6 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            if (r3 < r14) goto L_0x0088
            if (r3 > r2) goto L_0x0088
        L_0x0078:
            int r3 = r0.bp
            int r17 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            if (r3 < r14) goto L_0x008b
            if (r3 > r2) goto L_0x008b
            r6 = r17
            goto L_0x0078
        L_0x0088:
            r0.matchStat = r15
            return r4
        L_0x008b:
            r6 = 101(0x65, float:1.42E-43)
            if (r3 == r6) goto L_0x0097
            r6 = 69
            if (r3 != r6) goto L_0x0094
            goto L_0x0097
        L_0x0094:
            r16 = 0
            goto L_0x0099
        L_0x0097:
            r16 = 1
        L_0x0099:
            if (r16 == 0) goto L_0x00c9
            int r3 = r0.bp
            int r6 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            r12 = 43
            if (r3 == r12) goto L_0x00af
            if (r3 != r9) goto L_0x00ac
            goto L_0x00af
        L_0x00ac:
            r17 = r6
            goto L_0x00ba
        L_0x00af:
            int r3 = r0.bp
            int r9 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r17 = r9
        L_0x00ba:
            if (r3 < r14) goto L_0x00c9
            if (r3 > r2) goto L_0x00c9
            int r3 = r0.bp
            int r6 = r17 + 1
            int r3 = r3 + r17
            char r3 = r0.charAt(r3)
            goto L_0x00ac
        L_0x00c9:
            if (r8 == 0) goto L_0x00e6
            if (r3 == r5) goto L_0x00d0
            r0.matchStat = r15
            return r4
        L_0x00d0:
            int r2 = r0.bp
            int r3 = r17 + 1
            int r2 = r2 + r17
            char r2 = r0.charAt(r2)
            int r5 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r5
            int r1 = r1 + r7
            int r5 = r5 + r3
            int r5 = r5 - r1
            int r5 = r5 + -2
            r17 = r3
            goto L_0x00f0
        L_0x00e6:
            int r2 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r2
            int r2 = r2 + r17
            int r2 = r2 - r1
            int r5 = r2 + -1
            r2 = r3
        L_0x00f0:
            char[] r1 = r0.sub_chars(r1, r5)
            java.math.BigDecimal r3 = new java.math.BigDecimal
            r3.<init>(r1)
            if (r2 != r13) goto L_0x010e
            int r1 = r0.bp
            int r1 = r1 + r17
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r10
            r0.token = r11
            return r3
        L_0x010e:
            r1 = 125(0x7d, float:1.75E-43)
            if (r2 != r1) goto L_0x0173
            int r1 = r0.bp
            int r2 = r17 + 1
            int r1 = r1 + r17
            char r1 = r0.charAt(r1)
            if (r1 != r13) goto L_0x012e
            r0.token = r11
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x016c
        L_0x012e:
            r5 = 93
            if (r1 != r5) goto L_0x0144
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x016c
        L_0x0144:
            r5 = 125(0x7d, float:1.75E-43)
            if (r1 != r5) goto L_0x015a
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r2
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x016c
        L_0x015a:
            r5 = 26
            if (r1 != r5) goto L_0x0170
            r1 = 20
            r0.token = r1
            int r1 = r0.bp
            int r2 = r2 - r7
            int r1 = r1 + r2
            r0.bp = r1
            r1 = 26
            r0.ch = r1
        L_0x016c:
            r1 = 4
            r0.matchStat = r1
            return r3
        L_0x0170:
            r0.matchStat = r15
            return r4
        L_0x0173:
            r0.matchStat = r15
            return r4
        L_0x0176:
            r1 = 110(0x6e, float:1.54E-43)
            if (r3 != r1) goto L_0x01f7
            int r1 = r0.bp
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x01f7
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x01f7
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + 2
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01f7
            r1 = 5
            r0.matchStat = r1
            int r6 = r6 + r10
            int r2 = r0.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r0.charAt(r2)
            if (r8 == 0) goto L_0x01b7
            if (r2 != r5) goto L_0x01b7
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
        L_0x01b7:
            if (r2 != r13) goto L_0x01cb
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r0.token = r11
            return r4
        L_0x01cb:
            r5 = 125(0x7d, float:1.75E-43)
            if (r2 != r5) goto L_0x01e3
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 13
            r0.token = r1
            return r4
        L_0x01e3:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x01f4
            int r2 = r0.bp
            int r6 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r6
            goto L_0x01b7
        L_0x01f4:
            r0.matchStat = r15
            return r4
        L_0x01f7:
            r0.matchStat = r15
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDecimal(char[]):java.math.BigDecimal");
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0084  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.math.BigInteger scanFieldBigInteger(char[] r20) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r2 = 0
            r0.matchStat = r2
            boolean r3 = r19.charArrayCompare(r20)
            r4 = 0
            if (r3 != 0) goto L_0x0012
            r1 = -2
            r0.matchStat = r1
            return r4
        L_0x0012:
            int r3 = r1.length
            int r5 = r0.bp
            int r6 = r3 + 1
            int r5 = r5 + r3
            char r3 = r0.charAt(r5)
            r5 = 34
            r7 = 1
            if (r3 != r5) goto L_0x0023
            r8 = 1
            goto L_0x0024
        L_0x0023:
            r8 = 0
        L_0x0024:
            if (r8 == 0) goto L_0x0030
            int r3 = r0.bp
            int r9 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r9
        L_0x0030:
            r9 = 45
            if (r3 != r9) goto L_0x0035
            r2 = 1
        L_0x0035:
            if (r2 == 0) goto L_0x0041
            int r3 = r0.bp
            int r9 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            r6 = r9
        L_0x0041:
            r9 = 3
            r13 = 48
            r14 = -1
            if (r3 < r13) goto L_0x012c
            r15 = 57
            if (r3 > r15) goto L_0x012c
            int r3 = r3 - r13
            long r10 = (long) r3
        L_0x004d:
            int r3 = r0.bp
            int r16 = r6 + 1
            int r3 = r3 + r6
            char r3 = r0.charAt(r3)
            if (r3 < r13) goto L_0x0067
            if (r3 > r15) goto L_0x0067
            r17 = 10
            long r10 = r10 * r17
            int r3 = r3 + -48
            long r12 = (long) r3
            long r10 = r10 + r12
            r6 = r16
            r13 = 48
            goto L_0x004d
        L_0x0067:
            if (r8 == 0) goto L_0x0084
            if (r3 == r5) goto L_0x006e
            r0.matchStat = r14
            return r4
        L_0x006e:
            int r3 = r0.bp
            int r5 = r16 + 1
            int r3 = r3 + r16
            char r3 = r0.charAt(r3)
            int r6 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r6
            int r1 = r1 + r7
            int r6 = r6 + r5
            int r6 = r6 - r1
            int r6 = r6 + -2
            r16 = r5
            goto L_0x008d
        L_0x0084:
            int r5 = r0.bp
            int r1 = r1.length
            int r1 = r1 + r5
            int r5 = r5 + r16
            int r5 = r5 - r1
            int r6 = r5 + -1
        L_0x008d:
            r5 = 20
            if (r6 < r5) goto L_0x00a2
            if (r2 == 0) goto L_0x0098
            r8 = 21
            if (r6 >= r8) goto L_0x0098
            goto L_0x00a2
        L_0x0098:
            java.lang.String r1 = r0.subString(r1, r6)
            java.math.BigInteger r2 = new java.math.BigInteger
            r2.<init>(r1)
            goto L_0x00a9
        L_0x00a2:
            if (r2 == 0) goto L_0x00a5
            long r10 = -r10
        L_0x00a5:
            java.math.BigInteger r2 = java.math.BigInteger.valueOf(r10)
        L_0x00a9:
            r1 = 44
            if (r3 != r1) goto L_0x00c2
            int r1 = r0.bp
            int r1 = r1 + r16
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            r0.matchStat = r9
            r1 = 16
            r0.token = r1
            return r2
        L_0x00c2:
            r1 = 16
            r6 = 125(0x7d, float:1.75E-43)
            if (r3 != r6) goto L_0x0129
            int r3 = r0.bp
            int r6 = r16 + 1
            int r3 = r3 + r16
            char r3 = r0.charAt(r3)
            r8 = 44
            if (r3 != r8) goto L_0x00e6
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r6
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0122
        L_0x00e6:
            r1 = 93
            if (r3 != r1) goto L_0x00fc
            r1 = 15
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r6
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0122
        L_0x00fc:
            r1 = 125(0x7d, float:1.75E-43)
            if (r3 != r1) goto L_0x0112
            r1 = 13
            r0.token = r1
            int r1 = r0.bp
            int r1 = r1 + r6
            r0.bp = r1
            int r1 = r0.bp
            char r1 = r0.charAt(r1)
            r0.ch = r1
            goto L_0x0122
        L_0x0112:
            r1 = 26
            if (r3 != r1) goto L_0x0126
            r0.token = r5
            int r1 = r0.bp
            int r6 = r6 - r7
            int r1 = r1 + r6
            r0.bp = r1
            r1 = 26
            r0.ch = r1
        L_0x0122:
            r1 = 4
            r0.matchStat = r1
            return r2
        L_0x0126:
            r0.matchStat = r14
            return r4
        L_0x0129:
            r0.matchStat = r14
            return r4
        L_0x012c:
            r1 = 110(0x6e, float:1.54E-43)
            if (r3 != r1) goto L_0x01b3
            int r1 = r0.bp
            int r1 = r1 + r6
            char r1 = r0.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L_0x01b3
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + r7
            char r1 = r0.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L_0x01b3
            int r1 = r0.bp
            int r1 = r1 + r6
            int r1 = r1 + 2
            char r1 = r0.charAt(r1)
            if (r1 != r2) goto L_0x01b3
            r1 = 5
            r0.matchStat = r1
            int r6 = r6 + r9
            int r2 = r0.bp
            int r3 = r6 + 1
            int r2 = r2 + r6
            char r2 = r0.charAt(r2)
            if (r8 == 0) goto L_0x016d
            if (r2 != r5) goto L_0x016d
            int r2 = r0.bp
            int r5 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r5
        L_0x016d:
            r5 = 44
        L_0x016f:
            if (r2 != r5) goto L_0x0185
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r6 = 16
            r0.token = r6
            return r4
        L_0x0185:
            r6 = 16
            r7 = 125(0x7d, float:1.75E-43)
            if (r2 != r7) goto L_0x019f
            int r2 = r0.bp
            int r2 = r2 + r3
            r0.bp = r2
            int r2 = r0.bp
            char r2 = r0.charAt(r2)
            r0.ch = r2
            r0.matchStat = r1
            r1 = 13
            r0.token = r1
            return r4
        L_0x019f:
            boolean r2 = isWhitespace(r2)
            if (r2 == 0) goto L_0x01b0
            int r2 = r0.bp
            int r8 = r3 + 1
            int r2 = r2 + r3
            char r2 = r0.charAt(r2)
            r3 = r8
            goto L_0x016f
        L_0x01b0:
            r0.matchStat = r14
            return r4
        L_0x01b3:
            r0.matchStat = r14
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldBigInteger(char[]):java.math.BigInteger");
    }

    public Date scanFieldDate(char[] cArr) {
        Date date;
        int i;
        long j;
        int i2;
        char charAt;
        char[] cArr2 = cArr;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr2.length;
        int i3 = length + 1;
        char charAt2 = charAt(this.bp + length);
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.bp + cArr2.length + 1);
            if (indexOf != -1) {
                int length2 = this.bp + cArr2.length + 1;
                String subString = subString(length2, indexOf - length2);
                if (subString.indexOf(92) != -1) {
                    while (true) {
                        int i4 = indexOf - 1;
                        int i5 = 0;
                        while (i4 >= 0 && charAt(i4) == '\\') {
                            i5++;
                            i4--;
                        }
                        if (i5 % 2 == 0) {
                            break;
                        }
                        indexOf = indexOf('\"', indexOf + 1);
                    }
                    int i6 = this.bp;
                    int length3 = indexOf - ((cArr2.length + i6) + 1);
                    subString = readString(sub_chars(i6 + cArr2.length + 1, length3), length3);
                }
                int i7 = this.bp;
                int length4 = i3 + (indexOf - ((cArr2.length + i7) + 1)) + 1;
                i = length4 + 1;
                charAt2 = charAt(i7 + length4);
                JSONScanner jSONScanner = new JSONScanner(subString);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch(false)) {
                        date = jSONScanner.getCalendar().getTime();
                    } else {
                        this.matchStat = -1;
                        jSONScanner.close();
                        return null;
                    }
                } finally {
                    jSONScanner.close();
                }
            } else {
                throw new JSONException("unclosed str");
            }
        } else if (charAt2 == '-' || (charAt2 >= '0' && charAt2 <= '9')) {
            if (charAt2 == '-') {
                int i8 = i3 + 1;
                charAt2 = charAt(this.bp + i3);
                i3 = i8;
                z = true;
            }
            if (charAt2 < '0' || charAt2 > '9') {
                i = i3;
                j = 0;
            } else {
                j = (long) (charAt2 - '0');
                while (true) {
                    i2 = i3 + 1;
                    charAt = charAt(this.bp + i3);
                    if (charAt < '0' || charAt > '9') {
                        int i9 = i2;
                        charAt2 = charAt;
                        i = i9;
                    } else {
                        j = (j * 10) + ((long) (charAt - '0'));
                        i3 = i2;
                    }
                }
                int i92 = i2;
                charAt2 = charAt;
                i = i92;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        } else {
            this.matchStat = -1;
            return null;
        }
        if (charAt2 == ',') {
            this.bp += i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            return date;
        } else if (charAt2 == '}') {
            int i10 = i + 1;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == ']') {
                this.token = 15;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == '}') {
                this.token = 13;
                this.bp += i10;
                this.ch = charAt(this.bp);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i10 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    /* JADX INFO: finally extract failed */
    public Date scanDate(char c) {
        int i;
        Date date;
        long j;
        boolean z = false;
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', this.bp + 1);
            if (indexOf != -1) {
                int i2 = this.bp + 1;
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
                    int i5 = this.bp;
                    int i6 = indexOf - (i5 + 1);
                    subString = readString(sub_chars(i5 + 1, i6), i6);
                }
                int i7 = this.bp;
                int i8 = (indexOf - (i7 + 1)) + 1 + 1;
                int i9 = i8 + 1;
                charAt = charAt(i7 + i8);
                JSONScanner jSONScanner = new JSONScanner(subString);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch(false)) {
                        date = jSONScanner.getCalendar().getTime();
                        jSONScanner.close();
                        i = i9;
                    } else {
                        this.matchStat = -1;
                        jSONScanner.close();
                        return null;
                    }
                } catch (Throwable th) {
                    jSONScanner.close();
                    throw th;
                }
            } else {
                throw new JSONException("unclosed str");
            }
        } else {
            char c2 = '9';
            int i10 = 2;
            if (charAt == '-' || (charAt >= '0' && charAt <= '9')) {
                if (charAt == '-') {
                    charAt = charAt(this.bp + 1);
                    z = true;
                } else {
                    i10 = 1;
                }
                if (charAt >= '0' && charAt <= '9') {
                    j = (long) (charAt - '0');
                    while (true) {
                        i = i10 + 1;
                        charAt = charAt(this.bp + i10);
                        if (charAt < '0' || charAt > c2) {
                            break;
                        }
                        j = (j * 10) + ((long) (charAt - '0'));
                        i10 = i;
                        c2 = '9';
                    }
                } else {
                    j = 0;
                    i = i10;
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new Date(j);
            } else if (charAt == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 1 + 1) == 'l' && charAt(this.bp + 1 + 2) == 'l') {
                this.matchStat = 5;
                charAt = charAt(this.bp + 4);
                date = null;
                i = 5;
            } else {
                this.matchStat = -1;
                return null;
            }
        }
        if (charAt == ',') {
            this.bp += i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            this.token = 16;
            return date;
        } else if (charAt == ']') {
            int i11 = i + 1;
            char charAt2 = charAt(this.bp + i);
            if (charAt2 == ',') {
                this.token = 16;
                this.bp += i11;
                this.ch = charAt(this.bp);
            } else if (charAt2 == ']') {
                this.token = 15;
                this.bp += i11;
                this.ch = charAt(this.bp);
            } else if (charAt2 == '}') {
                this.token = 13;
                this.bp += i11;
                this.ch = charAt(this.bp);
            } else if (charAt2 == 26) {
                this.token = 20;
                this.bp += i11 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public UUID scanFieldUUID(char[] cArr) {
        int i;
        UUID uuid;
        char c;
        char c2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        char[] cArr2 = cArr;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr2.length;
        int i16 = length + 1;
        char charAt = charAt(this.bp + length);
        char c3 = 4;
        if (charAt == '\"') {
            int indexOf = indexOf('\"', this.bp + cArr2.length + 1);
            if (indexOf != -1) {
                int length2 = this.bp + cArr2.length + 1;
                int i17 = indexOf - length2;
                char c4 = 'F';
                char c5 = 'f';
                char c6 = 'A';
                char c7 = 'a';
                char c8 = '0';
                if (i17 == 36) {
                    int i18 = 0;
                    long j = 0;
                    while (i18 < 8) {
                        char charAt2 = charAt(length2 + i18);
                        if (charAt2 < '0' || charAt2 > '9') {
                            if (charAt2 >= 'a' && charAt2 <= 'f') {
                                i15 = charAt2 - 'a';
                            } else if (charAt2 < c6 || charAt2 > c4) {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i15 = charAt2 - 'A';
                            }
                            i14 = i15 + 10;
                        } else {
                            i14 = charAt2 - '0';
                        }
                        j = (j << 4) | ((long) i14);
                        i18++;
                        c6 = 'A';
                        c4 = 'F';
                    }
                    int i19 = 9;
                    while (i19 < 13) {
                        char charAt3 = charAt(length2 + i19);
                        if (charAt3 < '0' || charAt3 > '9') {
                            if (charAt3 >= 'a' && charAt3 <= c5) {
                                i13 = charAt3 - 'a';
                            } else if (charAt3 < 'A' || charAt3 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i13 = charAt3 - 'A';
                            }
                            i12 = i13 + 10;
                        } else {
                            i12 = charAt3 - '0';
                        }
                        j = (j << 4) | ((long) i12);
                        i19++;
                        indexOf = indexOf;
                        c5 = 'f';
                    }
                    int i20 = indexOf;
                    long j2 = j;
                    for (int i21 = 14; i21 < 18; i21++) {
                        char charAt4 = charAt(length2 + i21);
                        if (charAt4 < '0' || charAt4 > '9') {
                            if (charAt4 >= 'a' && charAt4 <= 'f') {
                                i11 = charAt4 - 'a';
                            } else if (charAt4 < 'A' || charAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i11 = charAt4 - 'A';
                            }
                            i10 = i11 + 10;
                        } else {
                            i10 = charAt4 - '0';
                        }
                        j2 = (j2 << 4) | ((long) i10);
                    }
                    int i22 = 19;
                    long j3 = 0;
                    while (i22 < 23) {
                        char charAt5 = charAt(length2 + i22);
                        if (charAt5 < '0' || charAt5 > '9') {
                            if (charAt5 >= 'a' && charAt5 <= 'f') {
                                i9 = charAt5 - 'a';
                            } else if (charAt5 < 'A' || charAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i9 = charAt5 - 'A';
                            }
                            i8 = i9 + 10;
                        } else {
                            i8 = charAt5 - '0';
                        }
                        j3 = (j3 << c3) | ((long) i8);
                        i22++;
                        j2 = j2;
                        c3 = 4;
                    }
                    long j4 = j2;
                    long j5 = j3;
                    for (int i23 = 24; i23 < 36; i23++) {
                        char charAt6 = charAt(length2 + i23);
                        if (charAt6 < '0' || charAt6 > '9') {
                            if (charAt6 >= 'a' && charAt6 <= 'f') {
                                i6 = charAt6 - 'a';
                            } else if (charAt6 < 'A' || charAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i6 = charAt6 - 'A';
                            }
                            i7 = i6 + 10;
                        } else {
                            i7 = charAt6 - '0';
                        }
                        j5 = (j5 << 4) | ((long) i7);
                    }
                    uuid = new UUID(j4, j5);
                    int i24 = this.bp;
                    int length3 = i16 + (i20 - ((cArr2.length + i24) + 1)) + 1;
                    i2 = length3 + 1;
                    c2 = charAt(i24 + length3);
                } else {
                    int i25 = indexOf;
                    if (i17 == 32) {
                        int i26 = 0;
                        long j6 = 0;
                        for (int i27 = 16; i26 < i27; i27 = 16) {
                            char charAt7 = charAt(length2 + i26);
                            if (charAt7 < '0' || charAt7 > '9') {
                                if (charAt7 >= 'a' && charAt7 <= 'f') {
                                    i4 = charAt7 - 'a';
                                } else if (charAt7 < 'A' || charAt7 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                } else {
                                    i4 = charAt7 - 'A';
                                }
                                i5 = i4 + 10;
                            } else {
                                i5 = charAt7 - '0';
                            }
                            j6 = (j6 << 4) | ((long) i5);
                            i26++;
                        }
                        int i28 = 16;
                        long j7 = 0;
                        while (i28 < 32) {
                            char charAt8 = charAt(length2 + i28);
                            if (charAt8 < c8 || charAt8 > '9') {
                                if (charAt8 >= c7) {
                                    if (charAt8 <= 'f') {
                                        i3 = (charAt8 - 'a') + 10;
                                    }
                                }
                                if (charAt8 < 'A' || charAt8 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                }
                                i3 = (charAt8 - 'A') + 10;
                            } else {
                                i3 = charAt8 - '0';
                            }
                            j7 = (j7 << 4) | ((long) i3);
                            i28++;
                            c8 = '0';
                            c7 = 'a';
                        }
                        uuid = new UUID(j6, j7);
                        int i29 = this.bp;
                        int length4 = i16 + (i25 - ((cArr2.length + i29) + 1)) + 1;
                        i2 = length4 + 1;
                        c2 = charAt(i29 + length4);
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                }
                char c9 = c2;
                i = i2;
                c = c9;
            } else {
                throw new JSONException("unclosed str");
            }
        } else {
            if (charAt == 'n') {
                int i30 = i16 + 1;
                if (charAt(this.bp + i16) == 'u') {
                    int i31 = i30 + 1;
                    if (charAt(this.bp + i30) == 'l') {
                        int i32 = i31 + 1;
                        if (charAt(this.bp + i31) == 'l') {
                            i = i32 + 1;
                            c = charAt(this.bp + i32);
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        if (c == ',') {
            this.bp += i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            return uuid;
        } else if (c == '}') {
            int i33 = i + 1;
            char charAt9 = charAt(this.bp + i);
            if (charAt9 == ',') {
                this.token = 16;
                this.bp += i33;
                this.ch = charAt(this.bp);
            } else if (charAt9 == ']') {
                this.token = 15;
                this.bp += i33;
                this.ch = charAt(this.bp);
            } else if (charAt9 == '}') {
                this.token = 13;
                this.bp += i33;
                this.ch = charAt(this.bp);
            } else if (charAt9 == 26) {
                this.token = 20;
                this.bp += i33 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return uuid;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public UUID scanUUID(char c) {
        int i;
        char c2;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this.matchStat = 0;
        char charAt = charAt(this.bp + 0);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', this.bp + 1);
            if (indexOf != -1) {
                int i15 = this.bp + 1;
                int i16 = indexOf - i15;
                char c3 = '9';
                char c4 = 'A';
                char c5 = 'a';
                char c6 = '0';
                if (i16 == 36) {
                    int i17 = 0;
                    long j = 0;
                    while (i17 < 8) {
                        char charAt2 = charAt(i15 + i17);
                        if (charAt2 < '0' || charAt2 > '9') {
                            if (charAt2 >= c5 && charAt2 <= 'f') {
                                i14 = charAt2 - 'a';
                            } else if (charAt2 < c4 || charAt2 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i14 = charAt2 - 'A';
                            }
                            i13 = i14 + 10;
                        } else {
                            i13 = charAt2 - '0';
                        }
                        j = (j << 4) | ((long) i13);
                        i17++;
                        c4 = 'A';
                        c5 = 'a';
                    }
                    int i18 = 9;
                    while (i18 < 13) {
                        char charAt3 = charAt(i15 + i18);
                        if (charAt3 < '0' || charAt3 > c3) {
                            if (charAt3 >= 'a' && charAt3 <= 'f') {
                                i12 = charAt3 - 'a';
                            } else if (charAt3 < 'A' || charAt3 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i12 = charAt3 - 'A';
                            }
                            i11 = i12 + 10;
                        } else {
                            i11 = charAt3 - '0';
                        }
                        j = (j << 4) | ((long) i11);
                        i18++;
                        indexOf = indexOf;
                        c3 = '9';
                    }
                    int i19 = indexOf;
                    long j2 = j;
                    for (int i20 = 14; i20 < 18; i20++) {
                        char charAt4 = charAt(i15 + i20);
                        if (charAt4 < '0' || charAt4 > '9') {
                            if (charAt4 >= 'a' && charAt4 <= 'f') {
                                i10 = charAt4 - 'a';
                            } else if (charAt4 < 'A' || charAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i10 = charAt4 - 'A';
                            }
                            i9 = i10 + 10;
                        } else {
                            i9 = charAt4 - '0';
                        }
                        j2 = (j2 << 4) | ((long) i9);
                    }
                    int i21 = 19;
                    long j3 = 0;
                    while (i21 < 23) {
                        char charAt5 = charAt(i15 + i21);
                        if (charAt5 < c6 || charAt5 > '9') {
                            if (charAt5 >= 'a' && charAt5 <= 'f') {
                                i8 = charAt5 - 'a';
                            } else if (charAt5 < 'A' || charAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i8 = charAt5 - 'A';
                            }
                            i7 = i8 + 10;
                        } else {
                            i7 = charAt5 - '0';
                        }
                        j3 = (j3 << 4) | ((long) i7);
                        i21++;
                        c6 = '0';
                    }
                    long j4 = j3;
                    for (int i22 = 24; i22 < 36; i22++) {
                        char charAt6 = charAt(i15 + i22);
                        if (charAt6 < '0' || charAt6 > '9') {
                            if (charAt6 >= 'a' && charAt6 <= 'f') {
                                i6 = charAt6 - 'a';
                            } else if (charAt6 < 'A' || charAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            } else {
                                i6 = charAt6 - 'A';
                            }
                            i5 = i6 + 10;
                        } else {
                            i5 = charAt6 - '0';
                        }
                        j4 = (j4 << 4) | ((long) i5);
                    }
                    uuid = new UUID(j2, j4);
                    int i23 = this.bp;
                    int i24 = (i19 - (i23 + 1)) + 1 + 1;
                    i = i24 + 1;
                    c2 = charAt(i23 + i24);
                } else {
                    int i25 = indexOf;
                    if (i16 == 32) {
                        long j5 = 0;
                        for (int i26 = 0; i26 < 16; i26++) {
                            char charAt7 = charAt(i15 + i26);
                            if (charAt7 < '0' || charAt7 > '9') {
                                if (charAt7 >= 'a' && charAt7 <= 'f') {
                                    i4 = charAt7 - 'a';
                                } else if (charAt7 < 'A' || charAt7 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                } else {
                                    i4 = charAt7 - 'A';
                                }
                                i3 = i4 + 10;
                            } else {
                                i3 = charAt7 - '0';
                            }
                            j5 = (j5 << 4) | ((long) i3);
                        }
                        long j6 = 0;
                        for (int i27 = 16; i27 < 32; i27++) {
                            char charAt8 = charAt(i15 + i27);
                            if (charAt8 >= '0') {
                                if (charAt8 <= '9') {
                                    i2 = charAt8 - '0';
                                }
                                if (charAt8 < 'a' && charAt8 <= 'f') {
                                    i2 = (charAt8 - 'a') + 10;
                                } else if (charAt8 >= 'A' || charAt8 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                } else {
                                    i2 = (charAt8 - 'A') + 10;
                                    j6 = (j6 << 4) | ((long) i2);
                                }
                            } else {
                                if (charAt8 < 'a') {
                                }
                                if (charAt8 >= 'A') {
                                }
                                this.matchStat = -2;
                                return null;
                            }
                            j6 = (j6 << 4) | ((long) i2);
                        }
                        uuid = new UUID(j5, j6);
                        int i28 = this.bp;
                        int i29 = (i25 - (i28 + 1)) + 1 + 1;
                        i = i29 + 1;
                        c2 = charAt(i28 + i29);
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                }
            } else {
                throw new JSONException("unclosed str");
            }
        } else if (charAt == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 2) == 'l' && charAt(this.bp + 3) == 'l') {
            i = 5;
            c2 = charAt(this.bp + 4);
            uuid = null;
        } else {
            this.matchStat = -1;
            return null;
        }
        if (c2 == ',') {
            this.bp += i;
            this.ch = charAt(this.bp);
            this.matchStat = 3;
            return uuid;
        } else if (c2 == ']') {
            int i30 = i + 1;
            char charAt9 = charAt(this.bp + i);
            if (charAt9 == ',') {
                this.token = 16;
                this.bp += i30;
                this.ch = charAt(this.bp);
            } else if (charAt9 == ']') {
                this.token = 15;
                this.bp += i30;
                this.ch = charAt(this.bp);
            } else if (charAt9 == '}') {
                this.token = 13;
                this.bp += i30;
                this.ch = charAt(this.bp);
            } else if (charAt9 == 26) {
                this.token = 20;
                this.bp += i30 - 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return uuid;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public final void scanTrue() {
        String str = "error parse true";
        if (this.ch == 't') {
            next();
            if (this.ch == 'r') {
                next();
                if (this.ch == 'u') {
                    next();
                    if (this.ch == 'e') {
                        next();
                        char c = this.ch;
                        if (c == ' ' || c == ',' || c == '}' || c == ']' || c == 10 || c == 13 || c == 9 || c == 26 || c == 12 || c == 8 || c == ':' || c == '/') {
                            this.token = 6;
                            return;
                        }
                        throw new JSONException("scan true error");
                    }
                    throw new JSONException(str);
                }
                throw new JSONException(str);
            }
            throw new JSONException(str);
        }
        throw new JSONException(str);
    }

    public final void scanNullOrNew() {
        if (this.ch == 'n') {
            next();
            char c = this.ch;
            if (c == 'u') {
                next();
                String str = "error parse null";
                if (this.ch == 'l') {
                    next();
                    if (this.ch == 'l') {
                        next();
                        char c2 = this.ch;
                        if (c2 == ' ' || c2 == ',' || c2 == '}' || c2 == ']' || c2 == 10 || c2 == 13 || c2 == 9 || c2 == 26 || c2 == 12 || c2 == 8) {
                            this.token = 8;
                            return;
                        }
                        throw new JSONException("scan null error");
                    }
                    throw new JSONException(str);
                }
                throw new JSONException(str);
            }
            String str2 = "error parse new";
            if (c == 'e') {
                next();
                if (this.ch == 'w') {
                    next();
                    char c3 = this.ch;
                    if (c3 == ' ' || c3 == ',' || c3 == '}' || c3 == ']' || c3 == 10 || c3 == 13 || c3 == 9 || c3 == 26 || c3 == 12 || c3 == 8) {
                        this.token = 9;
                        return;
                    }
                    throw new JSONException("scan new error");
                }
                throw new JSONException(str2);
            }
            throw new JSONException(str2);
        }
        throw new JSONException("error parse null or new");
    }

    public final void scanFalse() {
        String str = "error parse false";
        if (this.ch == 'f') {
            next();
            if (this.ch == 'a') {
                next();
                if (this.ch == 'l') {
                    next();
                    if (this.ch == 's') {
                        next();
                        if (this.ch == 'e') {
                            next();
                            char c = this.ch;
                            if (c == ' ' || c == ',' || c == '}' || c == ']' || c == 10 || c == 13 || c == 9 || c == 26 || c == 12 || c == 8 || c == ':' || c == '/') {
                                this.token = 7;
                                return;
                            }
                            throw new JSONException("scan false error");
                        }
                        throw new JSONException(str);
                    }
                    throw new JSONException(str);
                }
                throw new JSONException(str);
            }
            throw new JSONException(str);
        }
        throw new JSONException(str);
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (Character.isLetterOrDigit(this.ch));
        String stringVal = stringVal();
        if ("null".equalsIgnoreCase(stringVal)) {
            this.token = 8;
        } else if (AppSettingsData.STATUS_NEW.equals(stringVal)) {
            this.token = 9;
        } else if ("true".equals(stringVal)) {
            this.token = 6;
        } else if ("false".equals(stringVal)) {
            this.token = 7;
        } else if ("undefined".equals(stringVal)) {
            this.token = 23;
        } else if ("Set".equals(stringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(stringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    public static String readString(char[] cArr, int i) {
        int i2;
        int i3;
        char[] cArr2 = new char[i];
        int i4 = 0;
        int i5 = 0;
        while (i2 < i) {
            char c = cArr[i2];
            if (c != '\\') {
                int i6 = i5 + 1;
                cArr2[i5] = c;
                i5 = i6;
            } else {
                i2++;
                char c2 = cArr[i2];
                if (c2 == '\"') {
                    i3 = i5 + 1;
                    cArr2[i5] = '\"';
                } else if (c2 != '\'') {
                    if (c2 != 'F') {
                        if (c2 == '\\') {
                            i3 = i5 + 1;
                            cArr2[i5] = '\\';
                        } else if (c2 == 'b') {
                            i3 = i5 + 1;
                            cArr2[i5] = 8;
                        } else if (c2 != 'f') {
                            if (c2 == 'n') {
                                i3 = i5 + 1;
                                cArr2[i5] = 10;
                            } else if (c2 == 'r') {
                                i3 = i5 + 1;
                                cArr2[i5] = 13;
                            } else if (c2 != 'x') {
                                switch (c2) {
                                    case '/':
                                        i3 = i5 + 1;
                                        cArr2[i5] = '/';
                                        break;
                                    case '0':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 0;
                                        break;
                                    case '1':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 1;
                                        break;
                                    case '2':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 2;
                                        break;
                                    case '3':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 3;
                                        break;
                                    case '4':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 4;
                                        break;
                                    case '5':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 5;
                                        break;
                                    case '6':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 6;
                                        break;
                                    case '7':
                                        i3 = i5 + 1;
                                        cArr2[i5] = 7;
                                        break;
                                    default:
                                        switch (c2) {
                                            case 't':
                                                i3 = i5 + 1;
                                                cArr2[i5] = 9;
                                                break;
                                            case 'u':
                                                i3 = i5 + 1;
                                                int i7 = i2 + 1;
                                                int i8 = i7 + 1;
                                                int i9 = i8 + 1;
                                                i2 = i9 + 1;
                                                cArr2[i5] = (char) Integer.parseInt(new String(new char[]{cArr[i7], cArr[i8], cArr[i9], cArr[i2]}), 16);
                                                break;
                                            case 'v':
                                                i3 = i5 + 1;
                                                cArr2[i5] = 11;
                                                break;
                                            default:
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                i3 = i5 + 1;
                                int[] iArr = digits;
                                int i10 = i2 + 1;
                                i2 = i10 + 1;
                                cArr2[i5] = (char) ((iArr[cArr[i10]] * 16) + iArr[cArr[i2]]);
                            }
                        }
                    }
                    i3 = i5 + 1;
                    cArr2[i5] = 12;
                } else {
                    i3 = i5 + 1;
                    cArr2[i5] = '\'';
                }
                i5 = i3;
            }
            i4 = i2 + 1;
        }
        return new String(cArr2, 0, i5);
    }

    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char charAt = charAt(i);
            if (charAt == 26) {
                this.token = 20;
                return true;
            } else if (!isWhitespace(charAt)) {
                return false;
            } else {
                i++;
            }
        }
    }

    public final void skipWhitespace() {
        while (true) {
            char c = this.ch;
            if (c > '/') {
                return;
            }
            if (c == ' ' || c == 13 || c == 10 || c == 9 || c == 12 || c == 8) {
                next();
            } else if (c == '/') {
                skipComment();
            } else {
                return;
            }
        }
    }

    private void scanStringSingleQuote() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next = next();
            if (next == '\'') {
                this.token = 4;
                next();
                return;
            }
            String str = "unclosed single-quote string";
            if (next == 26) {
                if (!isEOF()) {
                    putChar(JSONLexer.EOI);
                } else {
                    throw new JSONException(str);
                }
            } else if (next == '\\') {
                if (!this.hasSpecial) {
                    this.hasSpecial = true;
                    int i = this.sp;
                    char[] cArr = this.sbuf;
                    if (i > cArr.length) {
                        char[] cArr2 = new char[(i * 2)];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.sbuf = cArr2;
                    }
                    copyTo(this.np + 1, this.sp, this.sbuf);
                }
                char next2 = next();
                if (next2 == '\"') {
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            putChar('\\');
                        } else if (next2 == 'b') {
                            putChar(8);
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                putChar(10);
                            } else if (next2 == 'r') {
                                putChar(13);
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        putChar('/');
                                        break;
                                    case '0':
                                        putChar(0);
                                        break;
                                    case '1':
                                        putChar(1);
                                        break;
                                    case '2':
                                        putChar(2);
                                        break;
                                    case '3':
                                        putChar(3);
                                        break;
                                    case '4':
                                        putChar(4);
                                        break;
                                    case '5':
                                        putChar(5);
                                        break;
                                    case '6':
                                        putChar(6);
                                        break;
                                    case '7':
                                        putChar(7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                putChar(9);
                                                break;
                                            case 'u':
                                                putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case 'v':
                                                putChar(11);
                                                break;
                                            default:
                                                this.ch = next2;
                                                throw new JSONException(str);
                                        }
                                }
                            } else {
                                putChar((char) ((digits[next()] * 16) + digits[next()]));
                            }
                        }
                    }
                    putChar(12);
                } else {
                    putChar('\'');
                }
            } else if (!this.hasSpecial) {
                this.sp++;
            } else {
                int i2 = this.sp;
                char[] cArr3 = this.sbuf;
                if (i2 == cArr3.length) {
                    putChar(next);
                } else {
                    this.sp = i2 + 1;
                    cArr3[i2] = next;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void putChar(char c) {
        int i = this.sp;
        char[] cArr = this.sbuf;
        if (i == cArr.length) {
            char[] cArr2 = new char[(cArr.length * 2)];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.sbuf = cArr2;
        }
        char[] cArr3 = this.sbuf;
        int i2 = this.sp;
        this.sp = i2 + 1;
        cArr3[i2] = c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void scanHex() {
        /*
            r4 = this;
            char r0 = r4.ch
            java.lang.String r1 = "illegal state. "
            r2 = 120(0x78, float:1.68E-43)
            if (r0 != r2) goto L_0x006f
            r4.next()
            char r0 = r4.ch
            r2 = 39
            if (r0 != r2) goto L_0x0058
            int r0 = r4.bp
            r4.np = r0
            r4.next()
        L_0x0018:
            char r0 = r4.next()
            r3 = 48
            if (r0 < r3) goto L_0x0024
            r3 = 57
            if (r0 <= r3) goto L_0x002c
        L_0x0024:
            r3 = 65
            if (r0 < r3) goto L_0x0033
            r3 = 70
            if (r0 > r3) goto L_0x0033
        L_0x002c:
            int r0 = r4.sp
            int r0 = r0 + 1
            r4.sp = r0
            goto L_0x0018
        L_0x0033:
            if (r0 != r2) goto L_0x0043
            int r0 = r4.sp
            int r0 = r0 + 1
            r4.sp = r0
            r4.next()
            r0 = 26
            r4.token = r0
            return
        L_0x0043:
            com.alibaba.fastjson.JSONException r2 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        L_0x0058:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            char r1 = r4.ch
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L_0x006f:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            char r1 = r4.ch
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            goto L_0x0087
        L_0x0086:
            throw r0
        L_0x0087:
            goto L_0x0086
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanHex():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00ce  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void scanNumber() {
        /*
            r9 = this;
            int r0 = r9.bp
            r9.np = r0
            char r0 = r9.ch
            r1 = 45
            r2 = 1
            if (r0 != r1) goto L_0x0013
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L_0x0013:
            char r0 = r9.ch
            r3 = 57
            r4 = 48
            if (r0 < r4) goto L_0x0026
            if (r0 > r3) goto L_0x0026
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            goto L_0x0013
        L_0x0026:
            r0 = 0
            char r5 = r9.ch
            r6 = 46
            if (r5 != r6) goto L_0x0045
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L_0x0035:
            char r0 = r9.ch
            if (r0 < r4) goto L_0x0044
            if (r0 > r3) goto L_0x0044
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            goto L_0x0035
        L_0x0044:
            r0 = 1
        L_0x0045:
            char r5 = r9.ch
            r6 = 76
            if (r5 != r6) goto L_0x0054
            int r1 = r9.sp
            int r1 = r1 + r2
            r9.sp = r1
            r9.next()
            goto L_0x0091
        L_0x0054:
            r6 = 83
            if (r5 != r6) goto L_0x0061
            int r1 = r9.sp
            int r1 = r1 + r2
            r9.sp = r1
            r9.next()
            goto L_0x0091
        L_0x0061:
            r6 = 66
            if (r5 != r6) goto L_0x006e
            int r1 = r9.sp
            int r1 = r1 + r2
            r9.sp = r1
            r9.next()
            goto L_0x0091
        L_0x006e:
            r6 = 70
            if (r5 != r6) goto L_0x007b
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            goto L_0x00c8
        L_0x007b:
            r7 = 68
            if (r5 != r7) goto L_0x0088
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            goto L_0x00c8
        L_0x0088:
            r8 = 101(0x65, float:1.42E-43)
            if (r5 == r8) goto L_0x0093
            r8 = 69
            if (r5 != r8) goto L_0x0091
            goto L_0x0093
        L_0x0091:
            r2 = r0
            goto L_0x00c8
        L_0x0093:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            char r0 = r9.ch
            r5 = 43
            if (r0 == r5) goto L_0x00a3
            if (r0 != r1) goto L_0x00ab
        L_0x00a3:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L_0x00ab:
            char r0 = r9.ch
            if (r0 < r4) goto L_0x00ba
            if (r0 > r3) goto L_0x00ba
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            goto L_0x00ab
        L_0x00ba:
            char r0 = r9.ch
            if (r0 == r7) goto L_0x00c0
            if (r0 != r6) goto L_0x00c8
        L_0x00c0:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L_0x00c8:
            if (r2 == 0) goto L_0x00ce
            r0 = 3
            r9.token = r0
            goto L_0x00d1
        L_0x00ce:
            r0 = 2
            r9.token = r0
        L_0x00d1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0085  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long longValue() throws java.lang.NumberFormatException {
        /*
            r15 = this;
            int r0 = r15.np
            r1 = 0
            r2 = -1
            if (r0 != r2) goto L_0x0008
            r15.np = r1
        L_0x0008:
            int r0 = r15.np
            int r2 = r15.sp
            int r2 = r2 + r0
            char r3 = r15.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L_0x001c
            r3 = -9223372036854775808
            int r0 = r0 + 1
            r1 = 1
            goto L_0x0021
        L_0x001c:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L_0x0021:
            r6 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            if (r0 >= r2) goto L_0x0034
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            int r0 = r0 + -48
            int r0 = -r0
            long r9 = (long) r0
        L_0x0032:
            r0 = r8
            goto L_0x0036
        L_0x0034:
            r9 = 0
        L_0x0036:
            if (r0 >= r2) goto L_0x0073
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            r11 = 76
            if (r0 == r11) goto L_0x0072
            r11 = 83
            if (r0 == r11) goto L_0x0072
            r11 = 66
            if (r0 != r11) goto L_0x004b
            goto L_0x0072
        L_0x004b:
            int r0 = r0 + -48
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 < 0) goto L_0x0068
            r11 = 10
            long r9 = r9 * r11
            long r11 = (long) r0
            long r13 = r3 + r11
            int r0 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r0 < 0) goto L_0x005e
            long r9 = r9 - r11
            goto L_0x0032
        L_0x005e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L_0x0068:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L_0x0072:
            r0 = r8
        L_0x0073:
            if (r1 == 0) goto L_0x0085
            int r1 = r15.np
            int r1 = r1 + r5
            if (r0 <= r1) goto L_0x007b
            return r9
        L_0x007b:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L_0x0085:
            long r0 = -r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    public final Number decimalValue(boolean z) {
        char charAt = charAt((this.np + this.sp) - 1);
        if (charAt == 'F') {
            try {
                return Float.valueOf(Float.parseFloat(numberString()));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(e.getMessage());
                sb.append(", ");
                sb.append(info());
                throw new JSONException(sb.toString());
            }
        } else if (charAt == 'D') {
            return Double.valueOf(Double.parseDouble(numberString()));
        } else {
            if (z) {
                return decimalValue();
            }
            return Double.valueOf(doubleValue());
        }
    }

    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        throw new UnsupportedOperationException();
    }

    public boolean matchField2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    public int getFeatures() {
        return this.features;
    }
}
