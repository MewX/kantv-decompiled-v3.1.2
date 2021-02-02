package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdp {
    private static final zzdg zzbe = new zzdg("MetadataUtils");
    private static final String[] zzym = {"Z", "+hh", "+hhmm", "+hh:mm"};
    private static final String zzyn;

    public static void zza(List<WebImage> list, JSONObject jSONObject) {
        try {
            list.clear();
            JSONArray jSONArray = jSONObject.getJSONArray("images");
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }

    public static void zza(JSONObject jSONObject, List<WebImage> list) {
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (WebImage json : list) {
                jSONArray.put(json.toJson());
            }
            try {
                jSONObject.put("images", jSONArray);
            } catch (JSONException unused) {
            }
        }
    }

    public static String zza(Calendar calendar) {
        if (calendar == null) {
            zzbe.d("Calendar object cannot be null", new Object[0]);
            return null;
        }
        String str = zzyn;
        if (calendar.get(11) == 0 && calendar.get(12) == 0 && calendar.get(13) == 0) {
            str = "yyyyMMdd";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setTimeZone(calendar.getTimeZone());
        String format = simpleDateFormat.format(calendar.getTime());
        String str2 = "+0000";
        if (format.endsWith(str2)) {
            format = format.replace(str2, zzym[0]);
        }
        return format;
    }

    public static Calendar zzu(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            zzbe.d("Input string is empty or null", new Object[0]);
            return null;
        }
        String zzv = zzv(str);
        if (TextUtils.isEmpty(zzv)) {
            zzbe.d("Invalid date format", new Object[0]);
            return null;
        }
        String zzw = zzw(str);
        if (!TextUtils.isEmpty(zzw)) {
            String valueOf = String.valueOf(zzv);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(zzw).length());
            sb.append(valueOf);
            sb.append("T");
            sb.append(zzw);
            zzv = sb.toString();
            str2 = zzw.length() == 6 ? "yyyyMMdd'T'HHmmss" : zzyn;
        } else {
            str2 = "yyyyMMdd";
        }
        Calendar instance = GregorianCalendar.getInstance();
        try {
            instance.setTime(new SimpleDateFormat(str2).parse(zzv));
            return instance;
        } catch (ParseException e) {
            zzbe.d("Error parsing string: %s", e.getMessage());
            return null;
        }
    }

    private static String zzv(String str) {
        if (TextUtils.isEmpty(str)) {
            zzbe.d("Input string is empty or null", new Object[0]);
            return null;
        }
        try {
            return str.substring(0, 8);
        } catch (IndexOutOfBoundsException e) {
            zzbe.i("Error extracting the date: %s", e.getMessage());
            return null;
        }
    }

    private static String zzw(String str) {
        if (TextUtils.isEmpty(str)) {
            zzbe.d("string is empty or null", new Object[0]);
            return null;
        }
        int indexOf = str.indexOf(84);
        int i = indexOf + 1;
        if (indexOf != 8) {
            zzbe.d("T delimeter is not found", new Object[0]);
            return null;
        }
        boolean z = true;
        try {
            String substring = str.substring(i);
            if (substring.length() == 6) {
                return substring;
            }
            char charAt = substring.charAt(6);
            if (charAt == '+' || charAt == '-') {
                int length = substring.length();
                if (!(length == zzym[1].length() + 6 || length == zzym[2].length() + 6 || length == zzym[3].length() + 6)) {
                    z = false;
                }
                if (z) {
                    return substring.replaceAll("([\\+\\-]\\d\\d):(\\d\\d)", "$1$2");
                }
            } else if (charAt != 'Z' || substring.length() != zzym[0].length() + 6) {
                return null;
            } else {
                String valueOf = String.valueOf(substring.substring(0, substring.length() - 1));
                String str2 = "+0000";
                return str2.length() != 0 ? valueOf.concat(str2) : new String(valueOf);
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            zzbe.d("Error extracting the time substring: %s", e.getMessage());
            return null;
        }
    }

    static {
        String valueOf = String.valueOf(zzym[0]);
        String str = "yyyyMMdd'T'HHmmss";
        zzyn = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }
}
