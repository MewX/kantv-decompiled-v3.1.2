package org.seamless.swing.logging;

import java.awt.Component;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

public abstract class LogTableCellRenderer extends DefaultTableCellRenderer {
    protected SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss:SSS");

    /* access modifiers changed from: protected */
    public abstract ImageIcon getDebugIcon();

    /* access modifiers changed from: protected */
    public abstract ImageIcon getInfoIcon();

    /* access modifiers changed from: protected */
    public abstract ImageIcon getTraceIcon();

    /* access modifiers changed from: protected */
    public abstract ImageIcon getWarnErrorIcon();

    public Component getTableCellRendererComponent(JTable jTable, Object obj, boolean z, boolean z2, int i, int i2) {
        LogMessage logMessage = (LogMessage) obj;
        if (i2 != 0) {
            if (i2 == 1) {
                return LogTableCellRenderer.super.getTableCellRendererComponent(jTable, this.dateFormat.format(new Date(logMessage.getCreatedOn().longValue())), z, z2, i, i2);
            } else if (i2 == 2) {
                return LogTableCellRenderer.super.getTableCellRendererComponent(jTable, logMessage.getThread(), z, z2, i, i2);
            } else if (i2 != 3) {
                return LogTableCellRenderer.super.getTableCellRendererComponent(jTable, logMessage.getMessage().replaceAll("\n", "<NL>").replaceAll("\r", "<CR>"), z, z2, i, i2);
            } else {
                return LogTableCellRenderer.super.getTableCellRendererComponent(jTable, logMessage.getSource(), z, z2, i, i2);
            }
        } else if (logMessage.getLevel().equals(Level.SEVERE) || logMessage.getLevel().equals(Level.WARNING)) {
            return new JLabel(getWarnErrorIcon());
        } else {
            if (logMessage.getLevel().equals(Level.FINE)) {
                return new JLabel(getDebugIcon());
            }
            if (logMessage.getLevel().equals(Level.FINER) || logMessage.getLevel().equals(Level.FINEST)) {
                return new JLabel(getTraceIcon());
            }
            return new JLabel(getInfoIcon());
        }
    }
}
