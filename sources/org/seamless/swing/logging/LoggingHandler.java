package org.seamless.swing.logging;

import java.util.Arrays;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

public abstract class LoggingHandler extends Handler {
    public int sourcePathElements = 3;

    public void close() throws SecurityException {
    }

    public void flush() {
    }

    /* access modifiers changed from: protected */
    public abstract void log(LogMessage logMessage);

    public LoggingHandler() {
    }

    public LoggingHandler(int i) {
        this.sourcePathElements = i;
    }

    public void publish(LogRecord logRecord) {
        log(new LogMessage(logRecord.getLevel(), getSource(logRecord), logRecord.getMessage()));
    }

    /* access modifiers changed from: protected */
    public String getSource(LogRecord logRecord) {
        StringBuilder sb = new StringBuilder(180);
        String[] split = logRecord.getSourceClassName().split("\\.");
        int length = split.length;
        int i = this.sourcePathElements;
        if (length > i) {
            split = (String[]) Arrays.copyOfRange(split, split.length - i, split.length);
        }
        for (String append : split) {
            sb.append(append);
            sb.append(".");
        }
        sb.append(logRecord.getSourceMethodName());
        return sb.toString();
    }
}
