package org.seamless.util.logging;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.StreamHandler;

public class SystemOutLoggingHandler extends StreamHandler {

    public static class SimpleFormatter extends Formatter {
        public String format(LogRecord logRecord) {
            StringBuffer stringBuffer = new StringBuffer(180);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("kk:mm:ss,SS");
            stringBuffer.append("[");
            stringBuffer.append(pad(Thread.currentThread().getName(), 32));
            stringBuffer.append("] ");
            stringBuffer.append(pad(logRecord.getLevel().toString(), 12));
            String str = " - ";
            stringBuffer.append(str);
            stringBuffer.append(pad(simpleDateFormat.format(new Date(logRecord.getMillis())), 24));
            stringBuffer.append(str);
            stringBuffer.append(toClassString(logRecord.getSourceClassName(), 30));
            stringBuffer.append('#');
            stringBuffer.append(logRecord.getSourceMethodName());
            stringBuffer.append(": ");
            stringBuffer.append(formatMessage(logRecord));
            stringBuffer.append("\n");
            Throwable thrown = logRecord.getThrown();
            if (thrown != null) {
                StringWriter stringWriter = new StringWriter();
                thrown.printStackTrace(new PrintWriter(stringWriter, true));
                stringBuffer.append(stringWriter.toString());
            }
            return stringBuffer.toString();
        }

        public String pad(String str, int i) {
            if (str.length() < i) {
                for (int length = str.length(); length < i - str.length(); length++) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" ");
                    str = sb.toString();
                }
            }
            return str;
        }

        public String toClassString(String str, int i) {
            return str.length() > i ? str.substring(str.length() - i) : str;
        }
    }

    public SystemOutLoggingHandler() {
        super(System.out, new SimpleFormatter());
        setLevel(Level.ALL);
    }

    public void close() {
        flush();
    }

    public void publish(LogRecord logRecord) {
        super.publish(logRecord);
        flush();
    }
}
