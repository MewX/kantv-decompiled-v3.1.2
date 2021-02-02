package com.kantv.common.utils;

import android.graphics.Bitmap;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;

public class StringUtils {
    public static String null2Length0(String str) {
        return str == null ? "" : str;
    }

    private StringUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static String buffer(String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (String append : strArr) {
            stringBuffer.append(append);
        }
        return stringBuffer.toString();
    }

    public static String builder(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String append : strArr) {
            sb.append(append);
        }
        return sb.toString();
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isSpace(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (!(charSequence == null || charSequence2 == null)) {
            int length = charSequence.length();
            if (length == charSequence2.length()) {
                if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
                    return charSequence.equals(charSequence2);
                }
                for (int i = 0; i < length; i++) {
                    if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r8.regionMatches(true, 0, r9, 0, r9.length()) != false) goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean equalsIgnoreCase(java.lang.String r8, java.lang.String r9) {
        /*
            if (r8 == r9) goto L_0x0020
            if (r9 == 0) goto L_0x001e
            int r0 = r8.length()
            int r1 = r9.length()
            if (r0 != r1) goto L_0x001e
            r3 = 1
            r4 = 0
            r6 = 0
            int r7 = r9.length()
            r2 = r8
            r5 = r9
            boolean r8 = r2.regionMatches(r3, r4, r5, r6, r7)
            if (r8 == 0) goto L_0x001e
            goto L_0x0020
        L_0x001e:
            r8 = 0
            goto L_0x0021
        L_0x0020:
            r8 = 1
        L_0x0021:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.common.utils.StringUtils.equalsIgnoreCase(java.lang.String, java.lang.String):boolean");
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String upperFirstLetter(String str) {
        if (isEmpty(str) || !Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(String.valueOf((char) (str.charAt(0) - ' ')));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static String lowerFirstLetter(String str) {
        if (isEmpty(str) || !Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(String.valueOf((char) (str.charAt(0) + ' ')));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static String reverse(String str) {
        int length = length(str);
        if (length <= 1) {
            return str;
        }
        int i = length >> 1;
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < i; i2++) {
            char c = charArray[i2];
            int i3 = (length - i2) - 1;
            charArray[i2] = charArray[i3];
            charArray[i3] = c;
        }
        return new String(charArray);
    }

    public static String toDBC(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charArray[i] == 12288) {
                charArray[i] = ' ';
            } else if (65281 > charArray[i] || charArray[i] > 65374) {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] - 65248);
            }
        }
        return new String(charArray);
    }

    public static String toSBC(String str) {
        if (isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (charArray[i] == ' ') {
                charArray[i] = 12288;
            } else if ('!' > charArray[i] || charArray[i] > '~') {
                charArray[i] = charArray[i];
            } else {
                charArray[i] = (char) (charArray[i] + 65248);
            }
        }
        return new String(charArray);
    }

    public static JSONObject toJsonObject(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONArray toJsonArray(String str) {
        try {
            return new JSONArray(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isJSONArrayNotEmpty(JSONArray jSONArray) {
        return jSONArray != null && jSONArray.length() > 0;
    }

    public static boolean isJSONArrayNotEmpty(JsonArray jsonArray) {
        return jsonArray != null && jsonArray.size() > 0;
    }

    public static boolean isJSONKeyAndValueEmpty(JSONObject jSONObject, String str, Object obj) {
        try {
            if (!jSONObject.has(str)) {
                return true;
            }
            if (obj instanceof String) {
                if (isEmpty(jSONObject.optString(str))) {
                    return true;
                }
            } else if (obj instanceof JSONArray) {
                if (jSONObject.optJSONArray(str) == null) {
                    return true;
                }
            } else if (obj instanceof JSONObject) {
                if (jSONObject.optJSONObject(str) == null) {
                    return true;
                }
            } else if (!(obj instanceof Integer)) {
                return true;
            } else {
                jSONObject.optInt(str);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static JSONObject getJSONobject(JSONArray jSONArray, int i) {
        try {
            return jSONArray.getJSONObject(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static JsonObject getJSONobject(JsonArray jsonArray, int i) {
        try {
            return jsonArray.get(i).getAsJsonObject();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isNum(String str) {
        try {
            Integer.valueOf(str).intValue();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0033 A[SYNTHETIC, Splitter:B:18:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003a A[SYNTHETIC, Splitter:B:23:0x003a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String bitmapToBase64(android.graphics.Bitmap r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L_0x0043
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x002c, all -> 0x0029 }
            r1.<init>()     // Catch:{ IOException -> 0x002c, all -> 0x0029 }
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch:{ IOException -> 0x0027 }
            r3 = 30
            r4.compress(r2, r3, r1)     // Catch:{ IOException -> 0x0027 }
            r1.flush()     // Catch:{ IOException -> 0x0027 }
            r1.close()     // Catch:{ IOException -> 0x0027 }
            byte[] r4 = r1.toByteArray()     // Catch:{ IOException -> 0x0027 }
            r2 = 2
            java.lang.String r0 = android.util.Base64.encodeToString(r4, r2)     // Catch:{ IOException -> 0x0027 }
            r1.close()     // Catch:{ IOException -> 0x0022 }
            goto L_0x0036
        L_0x0022:
            r4 = move-exception
            r4.printStackTrace()
            goto L_0x0036
        L_0x0027:
            r4 = move-exception
            goto L_0x002e
        L_0x0029:
            r4 = move-exception
            r1 = r0
            goto L_0x0038
        L_0x002c:
            r4 = move-exception
            r1 = r0
        L_0x002e:
            r4.printStackTrace()     // Catch:{ all -> 0x0037 }
            if (r1 == 0) goto L_0x0036
            r1.close()     // Catch:{ IOException -> 0x0022 }
        L_0x0036:
            return r0
        L_0x0037:
            r4 = move-exception
        L_0x0038:
            if (r1 == 0) goto L_0x0042
            r1.close()     // Catch:{ IOException -> 0x003e }
            goto L_0x0042
        L_0x003e:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0042:
            throw r4
        L_0x0043:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.common.utils.StringUtils.bitmapToBase64(android.graphics.Bitmap):java.lang.String");
    }

    public static void RecycleBitmap(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }

    public static String stringFilter(String str) throws PatternSyntaxException {
        return Pattern.compile("[^a-zA-Z0-9一-龥]").matcher(str).replaceAll("").trim();
    }

    public static String stringPwdFilter(String str) throws PatternSyntaxException {
        return Pattern.compile("[^a-zA-Z0-9]").matcher(str).replaceAll("").trim();
    }

    public static String stripHtml(String str) {
        if (isEmpty(str)) {
            return str;
        }
        String str2 = "\r\n";
        return str.replaceAll("<p .*?>", str2).replaceAll("<br\\s*/?>", str2).replaceAll("\\<.*?>", "").replaceAll("&.dquo;", "\"").replaceAll("&nbsp;", " ");
    }

    public static boolean isStr2Num(String str) {
        return Pattern.compile("^[0-9]*$").matcher(str).matches();
    }
}
