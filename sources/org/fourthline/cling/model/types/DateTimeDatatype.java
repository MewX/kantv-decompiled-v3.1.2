package org.fourthline.cling.model.types;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class DateTimeDatatype extends AbstractDatatype<Calendar> {
    protected String[] readFormats;
    protected String writeFormat;

    public DateTimeDatatype(String[] strArr, String str) {
        this.readFormats = strArr;
        this.writeFormat = str;
    }

    public Calendar valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        Date dateValue = getDateValue(str, this.readFormats);
        if (dateValue != null) {
            Calendar instance = Calendar.getInstance(getTimeZone());
            instance.setTime(dateValue);
            return instance;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse date/time from: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }

    public String getString(Calendar calendar) throws InvalidValueException {
        if (calendar == null) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.writeFormat);
        simpleDateFormat.setTimeZone(getTimeZone());
        return simpleDateFormat.format(calendar.getTime());
    }

    /* access modifiers changed from: protected */
    public String normalizeTimeZone(String str) {
        if (str.endsWith("Z")) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, str.length() - 1));
            sb.append("+0000");
            return sb.toString();
        } else if (str.length() <= 7 || str.charAt(str.length() - 3) != ':') {
            return str;
        } else {
            if (str.charAt(str.length() - 6) != '-' && str.charAt(str.length() - 6) != '+') {
                return str;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.substring(0, str.length() - 3));
            sb2.append(str.substring(str.length() - 2));
            return sb2.toString();
        }
    }

    /* access modifiers changed from: protected */
    public Date getDateValue(String str, String[] strArr) {
        String normalizeTimeZone = normalizeTimeZone(str);
        Date date = null;
        for (String simpleDateFormat : strArr) {
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(simpleDateFormat);
            simpleDateFormat2.setTimeZone(getTimeZone());
            try {
                date = simpleDateFormat2.parse(normalizeTimeZone);
            } catch (ParseException unused) {
            }
        }
        return date;
    }

    /* access modifiers changed from: protected */
    public TimeZone getTimeZone() {
        return TimeZone.getDefault();
    }
}
