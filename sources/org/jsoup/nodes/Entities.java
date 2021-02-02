package org.jsoup.nodes;

import com.google.android.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.SerializationException;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Document.OutputSettings;
import org.jsoup.parser.Parser;

public class Entities {
    static final int codepointRadix = 36;
    static final int empty = -1;
    static final String emptyName = "";
    private static Pattern entityPattern = Pattern.compile("^(\\w+)=(\\w+)(?:,(\\w+))?;(\\w+)$");
    private static final HashMap<String, String> multipoints = new HashMap<>();

    /* renamed from: org.jsoup.nodes.Entities$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$nodes$Entities$CoreCharset = new int[CoreCharset.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                org.jsoup.nodes.Entities$CoreCharset[] r0 = org.jsoup.nodes.Entities.CoreCharset.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$org$jsoup$nodes$Entities$CoreCharset = r0
                int[] r0 = $SwitchMap$org$jsoup$nodes$Entities$CoreCharset     // Catch:{ NoSuchFieldError -> 0x0014 }
                org.jsoup.nodes.Entities$CoreCharset r1 = org.jsoup.nodes.Entities.CoreCharset.ascii     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$org$jsoup$nodes$Entities$CoreCharset     // Catch:{ NoSuchFieldError -> 0x001f }
                org.jsoup.nodes.Entities$CoreCharset r1 = org.jsoup.nodes.Entities.CoreCharset.utf     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Entities.AnonymousClass1.<clinit>():void");
        }
    }

    private enum CoreCharset {
        ascii,
        utf,
        fallback;

        /* access modifiers changed from: private */
        public static CoreCharset byName(String str) {
            if (str.equals(C.ASCII_NAME)) {
                return ascii;
            }
            if (str.startsWith("UTF-")) {
                return utf;
            }
            return fallback;
        }
    }

    public enum EscapeMode {
        xhtml("entities-xhtml.properties", 4),
        base("entities-base.properties", 106),
        extended("entities-full.properties", 2125);
        
        /* access modifiers changed from: private */
        public int[] codeKeys;
        /* access modifiers changed from: private */
        public int[] codeVals;
        /* access modifiers changed from: private */
        public String[] nameKeys;
        /* access modifiers changed from: private */
        public String[] nameVals;

        private EscapeMode(String str, int i) {
            Entities.load(this, str, i);
        }

        /* access modifiers changed from: 0000 */
        public int codepointForName(String str) {
            int binarySearch = Arrays.binarySearch(this.nameKeys, str);
            if (binarySearch >= 0) {
                return this.codeVals[binarySearch];
            }
            return -1;
        }

        /* access modifiers changed from: 0000 */
        public String nameForCodepoint(int i) {
            String str;
            int binarySearch = Arrays.binarySearch(this.codeKeys, i);
            if (binarySearch < 0) {
                return "";
            }
            String[] strArr = this.nameVals;
            if (binarySearch < strArr.length - 1) {
                int i2 = binarySearch + 1;
                if (this.codeKeys[i2] == i) {
                    str = strArr[i2];
                    return str;
                }
            }
            str = this.nameVals[binarySearch];
            return str;
        }

        private int size() {
            return this.nameKeys.length;
        }
    }

    private Entities() {
    }

    public static boolean isNamedEntity(String str) {
        return EscapeMode.extended.codepointForName(str) != -1;
    }

    public static boolean isBaseNamedEntity(String str) {
        return EscapeMode.base.codepointForName(str) != -1;
    }

    public static Character getCharacterByName(String str) {
        return Character.valueOf((char) EscapeMode.extended.codepointForName(str));
    }

    public static String getByName(String str) {
        String str2 = (String) multipoints.get(str);
        if (str2 != null) {
            return str2;
        }
        int codepointForName = EscapeMode.extended.codepointForName(str);
        if (codepointForName == -1) {
            return "";
        }
        return new String(new int[]{codepointForName}, 0, 1);
    }

    public static int codepointsForName(String str, int[] iArr) {
        String str2 = (String) multipoints.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int codepointForName = EscapeMode.extended.codepointForName(str);
        if (codepointForName == -1) {
            return 0;
        }
        iArr[0] = codepointForName;
        return 1;
    }

    static String escape(String str, OutputSettings outputSettings) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        try {
            escape(sb, str, outputSettings, false, false, false);
            return sb.toString();
        } catch (IOException e) {
            throw new SerializationException((Throwable) e);
        }
    }

    static void escape(Appendable appendable, String str, OutputSettings outputSettings, boolean z, boolean z2, boolean z3) throws IOException {
        EscapeMode escapeMode = outputSettings.escapeMode();
        CharsetEncoder encoder = outputSettings.encoder();
        CoreCharset access$100 = CoreCharset.byName(encoder.charset().name());
        int length = str.length();
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (z2) {
                if (StringUtil.isWhitespace(codePointAt)) {
                    if ((!z3 || z4) && !z5) {
                        appendable.append(' ');
                        z5 = true;
                    }
                    i += Character.charCount(codePointAt);
                } else {
                    z4 = true;
                    z5 = false;
                }
            }
            if (codePointAt < 65536) {
                char c = (char) codePointAt;
                if (c != '\"') {
                    if (c == '&') {
                        appendable.append("&amp;");
                    } else if (c != '<') {
                        if (c != '>') {
                            if (c != 160) {
                                if (canEncode(access$100, c, encoder)) {
                                    appendable.append(c);
                                } else {
                                    appendEncoded(appendable, escapeMode, codePointAt);
                                }
                            } else if (escapeMode != EscapeMode.xhtml) {
                                appendable.append("&nbsp;");
                            } else {
                                appendable.append("&#xa0;");
                            }
                        } else if (!z) {
                            appendable.append("&gt;");
                        } else {
                            appendable.append(c);
                        }
                    } else if (!z || escapeMode == EscapeMode.xhtml) {
                        appendable.append("&lt;");
                    } else {
                        appendable.append(c);
                    }
                } else if (z) {
                    appendable.append("&quot;");
                } else {
                    appendable.append(c);
                }
            } else {
                String str2 = new String(Character.toChars(codePointAt));
                if (encoder.canEncode(str2)) {
                    appendable.append(str2);
                } else {
                    appendEncoded(appendable, escapeMode, codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    private static void appendEncoded(Appendable appendable, EscapeMode escapeMode, int i) throws IOException {
        String nameForCodepoint = escapeMode.nameForCodepoint(i);
        if (nameForCodepoint != "") {
            appendable.append('&').append(nameForCodepoint).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        }
    }

    static String unescape(String str) {
        return unescape(str, false);
    }

    static String unescape(String str, boolean z) {
        return Parser.unescapeEntities(str, z);
    }

    private static boolean canEncode(CoreCharset coreCharset, char c, CharsetEncoder charsetEncoder) {
        int i = AnonymousClass1.$SwitchMap$org$jsoup$nodes$Entities$CoreCharset[coreCharset.ordinal()];
        boolean z = true;
        if (i == 1) {
            if (c >= 128) {
                z = false;
            }
            return z;
        } else if (i != 2) {
            return charsetEncoder.canEncode(c);
        } else {
            return true;
        }
    }

    /* access modifiers changed from: private */
    public static void load(EscapeMode escapeMode, String str, int i) {
        escapeMode.nameKeys = new String[i];
        escapeMode.codeVals = new int[i];
        escapeMode.codeKeys = new int[i];
        escapeMode.nameVals = new String[i];
        InputStream resourceAsStream = Entities.class.getResourceAsStream(str);
        if (resourceAsStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
            int i2 = 0;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        Matcher matcher = entityPattern.matcher(readLine);
                        if (matcher.find()) {
                            String group = matcher.group(1);
                            int parseInt = Integer.parseInt(matcher.group(2), 36);
                            int parseInt2 = matcher.group(3) != null ? Integer.parseInt(matcher.group(3), 36) : -1;
                            int parseInt3 = Integer.parseInt(matcher.group(4), 36);
                            escapeMode.nameKeys[i2] = group;
                            escapeMode.codeVals[i2] = parseInt;
                            escapeMode.codeKeys[parseInt3] = parseInt;
                            escapeMode.nameVals[parseInt3] = group;
                            if (parseInt2 != -1) {
                                multipoints.put(group, new String(new int[]{parseInt, parseInt2}, 0, 2));
                            }
                            i2++;
                        }
                    } else {
                        bufferedReader.close();
                        return;
                    }
                } catch (IOException unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error reading resource ");
                    sb.append(str);
                    throw new IllegalStateException(sb.toString());
                }
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not read resource ");
            sb2.append(str);
            sb2.append(". Make sure you copy resources for ");
            sb2.append(Entities.class.getCanonicalName());
            throw new IllegalStateException(sb2.toString());
        }
    }
}
