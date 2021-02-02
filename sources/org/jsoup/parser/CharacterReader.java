package org.jsoup.parser;

import java.util.Arrays;
import java.util.Locale;
import org.jsoup.helper.Validate;

final class CharacterReader {
    static final char EOF = '￿';
    private static final int maxCacheLen = 12;
    private final char[] input;
    private final int length;
    private int mark = 0;
    private int pos = 0;
    private final String[] stringCache = new String[512];

    CharacterReader(String str) {
        Validate.notNull(str);
        this.input = str.toCharArray();
        this.length = this.input.length;
    }

    /* access modifiers changed from: 0000 */
    public int pos() {
        return this.pos;
    }

    /* access modifiers changed from: 0000 */
    public boolean isEmpty() {
        return this.pos >= this.length;
    }

    /* access modifiers changed from: 0000 */
    public char current() {
        int i = this.pos;
        return i >= this.length ? EOF : this.input[i];
    }

    /* access modifiers changed from: 0000 */
    public char consume() {
        int i = this.pos;
        char c = i >= this.length ? EOF : this.input[i];
        this.pos++;
        return c;
    }

    /* access modifiers changed from: 0000 */
    public void unconsume() {
        this.pos--;
    }

    /* access modifiers changed from: 0000 */
    public void advance() {
        this.pos++;
    }

    /* access modifiers changed from: 0000 */
    public void mark() {
        this.mark = this.pos;
    }

    /* access modifiers changed from: 0000 */
    public void rewindToMark() {
        this.pos = this.mark;
    }

    /* access modifiers changed from: 0000 */
    public String consumeAsString() {
        char[] cArr = this.input;
        int i = this.pos;
        this.pos = i + 1;
        return new String(cArr, i, 1);
    }

    /* access modifiers changed from: 0000 */
    public int nextIndexOf(char c) {
        for (int i = this.pos; i < this.length; i++) {
            if (c == this.input[i]) {
                return i - this.pos;
            }
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public int nextIndexOf(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        int i = this.pos;
        while (i < this.length) {
            if (charAt != this.input[i]) {
                do {
                    i++;
                    if (i >= this.length) {
                        break;
                    }
                } while (charAt != this.input[i]);
            }
            int i2 = i + 1;
            int length2 = (charSequence.length() + i2) - 1;
            int i3 = this.length;
            if (i < i3 && length2 <= i3) {
                int i4 = i2;
                int i5 = 1;
                while (i4 < length2 && charSequence.charAt(i5) == this.input[i4]) {
                    i4++;
                    i5++;
                }
                if (i4 == length2) {
                    return i - this.pos;
                }
            }
            i = i2;
        }
        return -1;
    }

    /* access modifiers changed from: 0000 */
    public String consumeTo(char c) {
        int nextIndexOf = nextIndexOf(c);
        if (nextIndexOf == -1) {
            return consumeToEnd();
        }
        String cacheString = cacheString(this.pos, nextIndexOf);
        this.pos += nextIndexOf;
        return cacheString;
    }

    /* access modifiers changed from: 0000 */
    public String consumeTo(String str) {
        int nextIndexOf = nextIndexOf((CharSequence) str);
        if (nextIndexOf == -1) {
            return consumeToEnd();
        }
        String cacheString = cacheString(this.pos, nextIndexOf);
        this.pos += nextIndexOf;
        return cacheString;
    }

    /* access modifiers changed from: 0000 */
    public String consumeToAny(char... cArr) {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr2 = this.input;
        loop0:
        while (this.pos < i2) {
            for (char c : cArr) {
                if (cArr2[this.pos] == c) {
                    break loop0;
                }
            }
            this.pos++;
        }
        int i3 = this.pos;
        return i3 > i ? cacheString(i, i3 - i) : "";
    }

    /* access modifiers changed from: 0000 */
    public String consumeToAnySorted(char... cArr) {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr2 = this.input;
        while (true) {
            int i3 = this.pos;
            if (i3 >= i2 || Arrays.binarySearch(cArr, cArr2[i3]) >= 0) {
                int i4 = this.pos;
            } else {
                this.pos++;
            }
        }
        int i42 = this.pos;
        return i42 > i ? cacheString(i, i42 - i) : "";
    }

    /* access modifiers changed from: 0000 */
    public String consumeData() {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr = this.input;
        while (true) {
            int i3 = this.pos;
            if (i3 >= i2) {
                break;
            }
            char c = cArr[i3];
            if (c == '&' || c == '<' || c == 0) {
                break;
            }
            this.pos = i3 + 1;
        }
        int i4 = this.pos;
        return i4 > i ? cacheString(i, i4 - i) : "";
    }

    /* access modifiers changed from: 0000 */
    public String consumeTagName() {
        int i = this.pos;
        int i2 = this.length;
        char[] cArr = this.input;
        while (true) {
            int i3 = this.pos;
            if (i3 >= i2) {
                break;
            }
            char c = cArr[i3];
            if (c == 9 || c == 10 || c == 13 || c == 12 || c == ' ' || c == '/' || c == '>' || c == 0) {
                break;
            }
            this.pos = i3 + 1;
        }
        int i4 = this.pos;
        return i4 > i ? cacheString(i, i4 - i) : "";
    }

    /* access modifiers changed from: 0000 */
    public String consumeToEnd() {
        int i = this.pos;
        String cacheString = cacheString(i, this.length - i);
        this.pos = this.length;
        return cacheString;
    }

    /* access modifiers changed from: 0000 */
    public String consumeLetterSequence() {
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length) {
                break;
            }
            char c = this.input[i2];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c))) {
                break;
            }
            this.pos++;
        }
        return cacheString(i, this.pos - i);
    }

    /* access modifiers changed from: 0000 */
    public String consumeLetterThenDigitSequence() {
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length) {
                break;
            }
            char c = this.input[i2];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c))) {
                break;
            }
            this.pos++;
        }
        while (!isEmpty()) {
            char[] cArr = this.input;
            int i3 = this.pos;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.pos = i3 + 1;
        }
        return cacheString(i, this.pos - i);
    }

    /* access modifiers changed from: 0000 */
    public String consumeHexSequence() {
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length) {
                break;
            }
            char c = this.input[i2];
            if ((c < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f'))) {
                break;
            }
            this.pos++;
        }
        return cacheString(i, this.pos - i);
    }

    /* access modifiers changed from: 0000 */
    public String consumeDigitSequence() {
        int i = this.pos;
        while (true) {
            int i2 = this.pos;
            if (i2 >= this.length) {
                break;
            }
            char c = this.input[i2];
            if (c < '0' || c > '9') {
                break;
            }
            this.pos = i2 + 1;
        }
        return cacheString(i, this.pos - i);
    }

    /* access modifiers changed from: 0000 */
    public boolean matches(char c) {
        return !isEmpty() && this.input[this.pos] == c;
    }

    /* access modifiers changed from: 0000 */
    public boolean matches(String str) {
        int length2 = str.length();
        if (length2 > this.length - this.pos) {
            return false;
        }
        for (int i = 0; i < length2; i++) {
            if (str.charAt(i) != this.input[this.pos + i]) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchesIgnoreCase(String str) {
        int length2 = str.length();
        if (length2 > this.length - this.pos) {
            return false;
        }
        for (int i = 0; i < length2; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.input[this.pos + i])) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        char c = this.input[this.pos];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchesAnySorted(char[] cArr) {
        return !isEmpty() && Arrays.binarySearch(cArr, this.input[this.pos]) >= 0;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchesLetter() {
        boolean z = false;
        if (isEmpty()) {
            return false;
        }
        char c = this.input[this.pos];
        if ((c >= 'A' && c <= 'Z') || ((c >= 'a' && c <= 'z') || Character.isLetter(c))) {
            z = true;
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchesDigit() {
        boolean z = false;
        if (isEmpty()) {
            return false;
        }
        char c = this.input[this.pos];
        if (c >= '0' && c <= '9') {
            z = true;
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchConsume(String str) {
        if (!matches(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.pos += str.length();
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean containsIgnoreCase(String str) {
        return nextIndexOf((CharSequence) str.toLowerCase(Locale.ENGLISH)) > -1 || nextIndexOf((CharSequence) str.toUpperCase(Locale.ENGLISH)) > -1;
    }

    public String toString() {
        char[] cArr = this.input;
        int i = this.pos;
        return new String(cArr, i, this.length - i);
    }

    private String cacheString(int i, int i2) {
        String str;
        char[] cArr = this.input;
        String[] strArr = this.stringCache;
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        while (i3 < i2) {
            i5 = (i5 * 31) + cArr[i4];
            i3++;
            i4++;
        }
        int length2 = (strArr.length - 1) & i5;
        String str2 = strArr[length2];
        if (str2 == null) {
            str = new String(cArr, i, i2);
            strArr[length2] = str;
        } else if (rangeEquals(i, i2, str2)) {
            return str2;
        } else {
            str = new String(cArr, i, i2);
            strArr[length2] = str;
        }
        return str;
    }

    /* access modifiers changed from: 0000 */
    public boolean rangeEquals(int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        char[] cArr = this.input;
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }
}
