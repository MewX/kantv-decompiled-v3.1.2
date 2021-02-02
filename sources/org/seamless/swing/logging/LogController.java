package org.seamless.swing.logging;

import com.avos.avoscloud.Messages.OpType;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JToolBar;
import javax.swing.SwingUtilities;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import org.seamless.swing.AbstractController;
import org.seamless.swing.Application;
import org.seamless.swing.Controller;

public abstract class LogController extends AbstractController<JPanel> {
    private final JButton clearButton;
    private final JButton configureButton;
    /* access modifiers changed from: private */
    public final JButton copyButton;
    /* access modifiers changed from: private */
    public final JButton expandButton;
    private final JComboBox expirationComboBox;
    /* access modifiers changed from: private */
    public final LogCategorySelector logCategorySelector;
    /* access modifiers changed from: private */
    public final JTable logTable;
    /* access modifiers changed from: private */
    public final LogTableModel logTableModel;
    private final JButton pauseButton;
    /* access modifiers changed from: private */
    public final JLabel pauseLabel;
    private final JToolBar toolBar;

    public enum Expiration {
        TEN_SECONDS(10, "10 Seconds"),
        SIXTY_SECONDS(60, "60 Seconds"),
        FIVE_MINUTES(300, "5 Minutes"),
        NEVER(Integer.MAX_VALUE, "Never");
        
        private String label;
        private int seconds;

        private Expiration(int i, String str) {
            this.seconds = i;
            this.label = str;
        }

        public int getSeconds() {
            return this.seconds;
        }

        public String getLabel() {
            return this.label;
        }

        public String toString() {
            return getLabel();
        }
    }

    /* access modifiers changed from: protected */
    public abstract void expand(LogMessage logMessage);

    /* access modifiers changed from: protected */
    public int getExpandMessageCharacterLimit() {
        return 100;
    }

    /* access modifiers changed from: protected */
    public abstract Frame getParentWindow();

    public LogController(Controller controller, List<LogCategory> list) {
        this(controller, Expiration.SIXTY_SECONDS, list);
    }

    public LogController(Controller controller, Expiration expiration, List<LogCategory> list) {
        super(new JPanel(new BorderLayout()), controller);
        this.toolBar = new JToolBar();
        this.configureButton = createConfigureButton();
        this.clearButton = createClearButton();
        this.copyButton = createCopyButton();
        this.expandButton = createExpandButton();
        this.pauseButton = createPauseButton();
        this.pauseLabel = new JLabel(" (Active)");
        this.expirationComboBox = new JComboBox(Expiration.values());
        this.logCategorySelector = new LogCategorySelector(list);
        this.logTableModel = new LogTableModel(expiration.getSeconds());
        this.logTable = new JTable(this.logTableModel);
        this.logTable.setDefaultRenderer(LogMessage.class, new LogTableCellRenderer() {
            /* access modifiers changed from: protected */
            public ImageIcon getWarnErrorIcon() {
                return LogController.this.getWarnErrorIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getDebugIcon() {
                return LogController.this.getDebugIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getTraceIcon() {
                return LogController.this.getTraceIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getInfoIcon() {
                return LogController.this.getInfoIcon();
            }
        });
        this.logTable.setCellSelectionEnabled(false);
        this.logTable.setRowSelectionAllowed(true);
        this.logTable.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
            public void valueChanged(ListSelectionEvent listSelectionEvent) {
                if (!listSelectionEvent.getValueIsAdjusting() && listSelectionEvent.getSource() == LogController.this.logTable.getSelectionModel()) {
                    int[] selectedRows = LogController.this.logTable.getSelectedRows();
                    if (selectedRows == null || selectedRows.length == 0) {
                        LogController.this.copyButton.setEnabled(false);
                        LogController.this.expandButton.setEnabled(false);
                    } else if (selectedRows.length == 1) {
                        LogController.this.copyButton.setEnabled(true);
                        if (((LogMessage) LogController.this.logTableModel.getValueAt(selectedRows[0], 0)).getMessage().length() > LogController.this.getExpandMessageCharacterLimit()) {
                            LogController.this.expandButton.setEnabled(true);
                        } else {
                            LogController.this.expandButton.setEnabled(false);
                        }
                    } else {
                        LogController.this.copyButton.setEnabled(true);
                        LogController.this.expandButton.setEnabled(false);
                    }
                }
            }
        });
        adjustTableUI();
        initializeToolBar(expiration);
        getView().setPreferredSize(new Dimension(250, 100));
        getView().setMinimumSize(new Dimension(250, 50));
        getView().add(new JScrollPane(this.logTable), "Center");
        getView().add(this.toolBar, "South");
    }

    public void pushMessage(final LogMessage logMessage) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                LogController.this.logTableModel.pushMessage(logMessage);
                if (!LogController.this.logTableModel.isPaused()) {
                    LogController.this.logTable.scrollRectToVisible(LogController.this.logTable.getCellRect(LogController.this.logTableModel.getRowCount() - 1, 0, true));
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void adjustTableUI() {
        this.logTable.setFocusable(false);
        this.logTable.setRowHeight(18);
        this.logTable.getTableHeader().setReorderingAllowed(false);
        this.logTable.setBorder(BorderFactory.createEmptyBorder());
        this.logTable.getColumnModel().getColumn(0).setMinWidth(30);
        this.logTable.getColumnModel().getColumn(0).setMaxWidth(30);
        this.logTable.getColumnModel().getColumn(0).setResizable(false);
        this.logTable.getColumnModel().getColumn(1).setMinWidth(90);
        this.logTable.getColumnModel().getColumn(1).setMaxWidth(90);
        this.logTable.getColumnModel().getColumn(1).setResizable(false);
        this.logTable.getColumnModel().getColumn(2).setMinWidth(100);
        this.logTable.getColumnModel().getColumn(2).setMaxWidth(250);
        this.logTable.getColumnModel().getColumn(3).setPreferredWidth(OpType.modify_VALUE);
        this.logTable.getColumnModel().getColumn(3).setMaxWidth(400);
        this.logTable.getColumnModel().getColumn(4).setPreferredWidth(600);
    }

    /* access modifiers changed from: protected */
    public void initializeToolBar(Expiration expiration) {
        this.configureButton.setFocusable(false);
        this.configureButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                Application.center(LogController.this.logCategorySelector, LogController.this.getParentWindow());
                LogController.this.logCategorySelector.setVisible(!LogController.this.logCategorySelector.isVisible());
            }
        });
        this.clearButton.setFocusable(false);
        this.clearButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogController.this.logTableModel.clearMessages();
            }
        });
        this.copyButton.setFocusable(false);
        this.copyButton.setEnabled(false);
        this.copyButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                StringBuilder sb = new StringBuilder();
                for (LogMessage logMessage : LogController.this.getSelectedMessages()) {
                    sb.append(logMessage.toString());
                    sb.append("\n");
                }
                Application.copyToClipboard(sb.toString());
            }
        });
        this.expandButton.setFocusable(false);
        this.expandButton.setEnabled(false);
        this.expandButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                List selectedMessages = LogController.this.getSelectedMessages();
                if (selectedMessages.size() == 1) {
                    LogController.this.expand((LogMessage) selectedMessages.get(0));
                }
            }
        });
        this.pauseButton.setFocusable(false);
        this.pauseButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogController.this.logTableModel.setPaused(!LogController.this.logTableModel.isPaused());
                if (LogController.this.logTableModel.isPaused()) {
                    LogController.this.pauseLabel.setText(" (Paused)");
                } else {
                    LogController.this.pauseLabel.setText(" (Active)");
                }
            }
        });
        this.expirationComboBox.setSelectedItem(expiration);
        this.expirationComboBox.setMaximumSize(new Dimension(100, 32));
        this.expirationComboBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogController.this.logTableModel.setMaxAgeSeconds(((Expiration) ((JComboBox) actionEvent.getSource()).getSelectedItem()).getSeconds());
            }
        });
        this.toolBar.setFloatable(false);
        this.toolBar.add(this.copyButton);
        this.toolBar.add(this.expandButton);
        this.toolBar.add(Box.createHorizontalGlue());
        this.toolBar.add(this.configureButton);
        this.toolBar.add(this.clearButton);
        this.toolBar.add(this.pauseButton);
        this.toolBar.add(this.pauseLabel);
        this.toolBar.add(Box.createHorizontalGlue());
        this.toolBar.add(new JLabel("Clear after:"));
        this.toolBar.add(this.expirationComboBox);
    }

    /* access modifiers changed from: protected */
    public List<LogMessage> getSelectedMessages() {
        ArrayList arrayList = new ArrayList();
        for (int valueAt : this.logTable.getSelectedRows()) {
            arrayList.add((LogMessage) this.logTableModel.getValueAt(valueAt, 0));
        }
        return arrayList;
    }

    public LogTableModel getLogTableModel() {
        return this.logTableModel;
    }

    /* access modifiers changed from: protected */
    public JButton createConfigureButton() {
        return new JButton("Options...", Application.createImageIcon(LogController.class, "img/configure.png"));
    }

    /* access modifiers changed from: protected */
    public JButton createClearButton() {
        return new JButton("Clear Log", Application.createImageIcon(LogController.class, "img/removetext.png"));
    }

    /* access modifiers changed from: protected */
    public JButton createCopyButton() {
        return new JButton("Copy", Application.createImageIcon(LogController.class, "img/copyclipboard.png"));
    }

    /* access modifiers changed from: protected */
    public JButton createExpandButton() {
        return new JButton("Expand", Application.createImageIcon(LogController.class, "img/viewtext.png"));
    }

    /* access modifiers changed from: protected */
    public JButton createPauseButton() {
        return new JButton("Pause/Continue Log", Application.createImageIcon(LogController.class, "img/pause.png"));
    }

    /* access modifiers changed from: protected */
    public ImageIcon getWarnErrorIcon() {
        return Application.createImageIcon(LogController.class, "img/warn.png");
    }

    /* access modifiers changed from: protected */
    public ImageIcon getDebugIcon() {
        return Application.createImageIcon(LogController.class, "img/debug.png");
    }

    /* access modifiers changed from: protected */
    public ImageIcon getTraceIcon() {
        return Application.createImageIcon(LogController.class, "img/trace.png");
    }

    /* access modifiers changed from: protected */
    public ImageIcon getInfoIcon() {
        return Application.createImageIcon(LogController.class, "img/info.png");
    }
}
