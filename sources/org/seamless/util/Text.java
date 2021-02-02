package org.seamless.util;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class Text {
    public static final String ISO8601_PATTERN = "yyyy-MM-dd'T'HH:mm:ssz";

    public static String ltrim(String str) {
        return str.replaceAll("(?s)^\\s+", "");
    }

    public static String rtrim(String str) {
        return str.replaceAll("(?s)\\s+$", "");
    }

    public static String displayFilesize(long j) {
        if (j >= IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb = new StringBuilder();
            sb.append(new BigDecimal(((j / 1024) / 1024) / 1024));
            sb.append(" GiB");
            return sb.toString();
        } else if (j >= 1048576) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new BigDecimal((j / 1024) / 1024));
            sb2.append(" MiB");
            return sb2.toString();
        } else if (j >= 1024) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new BigDecimal(j / 1024));
            sb3.append(" KiB");
            return sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(new BigDecimal(j));
            sb4.append(" bytes");
            return sb4.toString();
        }
    }

    public static Calendar fromISO8601String(TimeZone timeZone, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO8601_PATTERN);
        simpleDateFormat.setTimeZone(timeZone);
        try {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(simpleDateFormat.parse(str));
            return gregorianCalendar;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String toISO8601String(TimeZone timeZone, Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        return toISO8601String(timeZone, (Calendar) gregorianCalendar);
    }

    public static String toISO8601String(TimeZone timeZone, long j) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j);
        return toISO8601String(timeZone, (Calendar) gregorianCalendar);
    }

    public static String toISO8601String(TimeZone timeZone, Calendar calendar) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO8601_PATTERN);
        simpleDateFormat.setTimeZone(timeZone);
        try {
            return simpleDateFormat.format(calendar.getTime());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
