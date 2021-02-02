package org.seamless.swing.logging;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;

public class LogMessage {
    private Long createdOn;
    private Level level;
    private String message;
    private String source;
    private String thread;

    public LogMessage(String str) {
        this(Level.INFO, str);
    }

    public LogMessage(String str, String str2) {
        this(Level.INFO, str, str2);
    }

    public LogMessage(Level level2, String str) {
        this(level2, null, str);
    }

    public LogMessage(Level level2, String str, String str2) {
        this.createdOn = Long.valueOf(new Date().getTime());
        this.thread = Thread.currentThread().getName();
        this.level = level2;
        this.source = str;
        this.message = str2;
    }

    public Level getLevel() {
        return this.level;
    }

    public Long getCreatedOn() {
        return this.createdOn;
    }

    public String getThread() {
        return this.thread;
    }

    public String getSource() {
        return this.source;
    }

    public String getMessage() {
        return this.message;
    }

    public String toString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss:SSS");
        StringBuilder sb = new StringBuilder();
        sb.append(getLevel());
        String str = " - ";
        sb.append(str);
        sb.append(simpleDateFormat.format(new Date(getCreatedOn().longValue())));
        sb.append(str);
        sb.append(getThread());
        String str2 = " : ";
        sb.append(str2);
        sb.append(getSource());
        sb.append(str2);
        sb.append(getMessage());
        return sb.toString();
    }
}
