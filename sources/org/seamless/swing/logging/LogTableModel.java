package org.seamless.swing.logging;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.swing.table.AbstractTableModel;

public class LogTableModel extends AbstractTableModel {
    protected int maxAgeSeconds;
    protected List<LogMessage> messages = new ArrayList();
    protected boolean paused = false;

    public int getColumnCount() {
        return 5;
    }

    public String getColumnName(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "Message" : "Source" : "Thread" : "Time" : "";
    }

    public LogTableModel(int i) {
        this.maxAgeSeconds = i;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public void setMaxAgeSeconds(int i) {
        this.maxAgeSeconds = i;
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void setPaused(boolean z) {
        this.paused = z;
    }

    public synchronized void pushMessage(LogMessage logMessage) {
        if (!this.paused) {
            if (this.maxAgeSeconds != Integer.MAX_VALUE) {
                Iterator it = this.messages.iterator();
                long time = new Date().getTime();
                while (it.hasNext()) {
                    if (((LogMessage) it.next()).getCreatedOn().longValue() + ((long) (this.maxAgeSeconds * 1000)) < time) {
                        it.remove();
                    }
                }
            }
            this.messages.add(logMessage);
            fireTableDataChanged();
        }
    }

    public Object getValueAt(int i, int i2) {
        return this.messages.get(i);
    }

    public void clearMessages() {
        this.messages.clear();
        fireTableDataChanged();
    }

    public int getRowCount() {
        return this.messages.size();
    }

    public Class<?> getColumnClass(int i) {
        return LogMessage.class;
    }
}
