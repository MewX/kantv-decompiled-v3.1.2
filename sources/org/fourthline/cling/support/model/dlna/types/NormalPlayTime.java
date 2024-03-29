package org.fourthline.cling.support.model.dlna.types;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.InvalidValueException;

public class NormalPlayTime {
    static final Pattern pattern = Pattern.compile("^(\\d+):(\\d{1,2}):(\\d{1,2})(\\.(\\d{1,3}))?|(\\d+)(\\.(\\d{1,3}))?$", 2);
    private long milliseconds;

    /* renamed from: org.fourthline.cling.support.model.dlna.types.NormalPlayTime$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format = new int[Format.values().length];

        static {
            try {
                $SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format[Format.TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public enum Format {
        SECONDS,
        TIME
    }

    public NormalPlayTime(long j) {
        if (j >= 0) {
            this.milliseconds = j;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid parameter milliseconds: ");
        sb.append(j);
        throw new InvalidValueException(sb.toString());
    }

    public NormalPlayTime(long j, long j2, long j3, long j4) throws InvalidValueException {
        if (j < 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid parameter hours: ");
            sb.append(j);
            throw new InvalidValueException(sb.toString());
        } else if (j2 < 0 || j2 > 59) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid parameter minutes: ");
            sb2.append(j);
            throw new InvalidValueException(sb2.toString());
        } else if (j3 < 0 || j3 > 59) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Invalid parameter seconds: ");
            sb3.append(j);
            throw new InvalidValueException(sb3.toString());
        } else if (j4 < 0 || j4 > 999) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Invalid parameter milliseconds: ");
            sb4.append(j4);
            throw new InvalidValueException(sb4.toString());
        } else {
            this.milliseconds = (((j * 60 * 60) + (j2 * 60) + j3) * 1000) + j4;
        }
    }

    public long getMilliseconds() {
        return this.milliseconds;
    }

    public void setMilliseconds(long j) {
        if (j >= 0) {
            this.milliseconds = j;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid parameter milliseconds: ");
        sb.append(j);
        throw new InvalidValueException(sb.toString());
    }

    public String getString() {
        return getString(Format.SECONDS);
    }

    public String getString(Format format) {
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.milliseconds);
        long j = this.milliseconds % 1000;
        if (AnonymousClass1.$SwitchMap$org$fourthline$cling$support$model$dlna$types$NormalPlayTime$Format[format.ordinal()] != 1) {
            return String.format(Locale.ROOT, "%d.%03d", new Object[]{Long.valueOf(seconds), Long.valueOf(j)});
        }
        long seconds2 = TimeUnit.MILLISECONDS.toSeconds(this.milliseconds) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(this.milliseconds));
        long hours = TimeUnit.MILLISECONDS.toHours(this.milliseconds);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(this.milliseconds) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(this.milliseconds));
        return String.format(Locale.ROOT, "%d:%02d:%02d.%03d", new Object[]{Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds2), Long.valueOf(j)});
    }

    public static NormalPlayTime valueOf(String str) throws InvalidValueException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            try {
                if (matcher.group(1) != null) {
                    NormalPlayTime normalPlayTime = new NormalPlayTime(Long.parseLong(matcher.group(1)), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)), Long.parseLong(matcher.group(5)) * ((long) ((int) Math.pow(10.0d, (double) (3 - matcher.group(5).length())))));
                    return normalPlayTime;
                }
                return new NormalPlayTime((Long.parseLong(matcher.group(6)) * 1000) + (Long.parseLong(matcher.group(8)) * ((long) ((int) Math.pow(10.0d, (double) (3 - matcher.group(8).length()))))));
            } catch (NumberFormatException unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse NormalPlayTime: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }
}
