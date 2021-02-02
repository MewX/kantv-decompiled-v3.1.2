package org.fourthline.cling.support.shared.log.impl;

import com.avos.avoscloud.Messages.OpType;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.enterprise.event.Event;
import javax.inject.Inject;
import javax.inject.Singleton;
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
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import org.fourthline.cling.support.shared.CenterWindow;
import org.fourthline.cling.support.shared.log.LogView;
import org.fourthline.cling.support.shared.log.LogView.LogCategories;
import org.fourthline.cling.support.shared.log.LogView.Presenter;
import org.seamless.swing.Application;
import org.seamless.swing.logging.LogCategorySelector;
import org.seamless.swing.logging.LogController;
import org.seamless.swing.logging.LogController.Expiration;
import org.seamless.swing.logging.LogMessage;
import org.seamless.swing.logging.LogTableCellRenderer;
import org.seamless.swing.logging.LogTableModel;

@Singleton
public class LogViewImpl extends JPanel implements LogView {
    @Inject
    protected Event<CenterWindow> centerWindowEvent;
    protected final JButton clearButton = new JButton("Clear Log", Application.createImageIcon(LogController.class, "img/removetext.png"));
    protected final JButton configureButton = new JButton("Options...", Application.createImageIcon(LogController.class, "img/configure.png"));
    protected final JButton copyButton = new JButton("Copy", Application.createImageIcon(LogController.class, "img/copyclipboard.png"));
    protected final JButton expandButton = new JButton("Expand", Application.createImageIcon(LogController.class, "img/viewtext.png"));
    protected final JComboBox expirationComboBox = new JComboBox(Expiration.values());
    @Inject
    protected LogCategories logCategories;
    protected LogCategorySelector logCategorySelector;
    protected JTable logTable;
    protected LogTableModel logTableModel;
    protected final JButton pauseButton = new JButton("Pause/Continue Log", Application.createImageIcon(LogController.class, "img/pause.png"));
    protected final JLabel pauseLabel = new JLabel(" (Active)");
    protected Presenter presenter;
    protected final JToolBar toolBar = new JToolBar();

    public Component asUIComponent() {
        return this;
    }

    /* access modifiers changed from: protected */
    public int getExpandMessageCharacterLimit() {
        return 100;
    }

    @PostConstruct
    public void init() {
        setLayout(new BorderLayout());
        Expiration defaultExpiration = getDefaultExpiration();
        this.logCategorySelector = new LogCategorySelector(this.logCategories);
        this.logTableModel = new LogTableModel(defaultExpiration.getSeconds());
        this.logTable = new JTable(this.logTableModel);
        this.logTable.setDefaultRenderer(LogMessage.class, new LogTableCellRenderer() {
            /* access modifiers changed from: protected */
            public ImageIcon getWarnErrorIcon() {
                return LogViewImpl.this.getWarnErrorIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getDebugIcon() {
                return LogViewImpl.this.getDebugIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getTraceIcon() {
                return LogViewImpl.this.getTraceIcon();
            }

            /* access modifiers changed from: protected */
            public ImageIcon getInfoIcon() {
                return LogViewImpl.this.getInfoIcon();
            }
        });
        this.logTable.setCellSelectionEnabled(false);
        this.logTable.setRowSelectionAllowed(true);
        this.logTable.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
            public void valueChanged(ListSelectionEvent listSelectionEvent) {
                if (!listSelectionEvent.getValueIsAdjusting() && listSelectionEvent.getSource() == LogViewImpl.this.logTable.getSelectionModel()) {
                    int[] selectedRows = LogViewImpl.this.logTable.getSelectedRows();
                    if (selectedRows == null || selectedRows.length == 0) {
                        LogViewImpl.this.copyButton.setEnabled(false);
                        LogViewImpl.this.expandButton.setEnabled(false);
                    } else if (selectedRows.length == 1) {
                        LogViewImpl.this.copyButton.setEnabled(true);
                        if (((LogMessage) LogViewImpl.this.logTableModel.getValueAt(selectedRows[0], 0)).getMessage().length() > LogViewImpl.this.getExpandMessageCharacterLimit()) {
                            LogViewImpl.this.expandButton.setEnabled(true);
                        } else {
                            LogViewImpl.this.expandButton.setEnabled(false);
                        }
                    } else {
                        LogViewImpl.this.copyButton.setEnabled(true);
                        LogViewImpl.this.expandButton.setEnabled(false);
                    }
                }
            }
        });
        adjustTableUI();
        initializeToolBar(defaultExpiration);
        setPreferredSize(new Dimension(250, 100));
        setMinimumSize(new Dimension(250, 50));
        add(new JScrollPane(this.logTable), "Center");
        add(this.toolBar, "South");
    }

    public void setPresenter(Presenter presenter2) {
        this.presenter = presenter2;
    }

    public void pushMessage(LogMessage logMessage) {
        this.logTableModel.pushMessage(logMessage);
        if (!this.logTableModel.isPaused()) {
            JTable jTable = this.logTable;
            jTable.scrollRectToVisible(jTable.getCellRect(this.logTableModel.getRowCount() - 1, 0, true));
        }
    }

    public void dispose() {
        this.logCategorySelector.dispose();
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
        this.logTable.getColumnModel().getColumn(2).setMinWidth(110);
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
                LogViewImpl.this.centerWindowEvent.fire(new CenterWindow(LogViewImpl.this.logCategorySelector));
                LogViewImpl.this.logCategorySelector.setVisible(!LogViewImpl.this.logCategorySelector.isVisible());
            }
        });
        this.clearButton.setFocusable(false);
        this.clearButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogViewImpl.this.logTableModel.clearMessages();
            }
        });
        this.copyButton.setFocusable(false);
        this.copyButton.setEnabled(false);
        this.copyButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                StringBuilder sb = new StringBuilder();
                for (LogMessage logMessage : LogViewImpl.this.getSelectedMessages()) {
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
                List selectedMessages = LogViewImpl.this.getSelectedMessages();
                if (selectedMessages.size() == 1) {
                    LogViewImpl.this.presenter.onExpand((LogMessage) selectedMessages.get(0));
                }
            }
        });
        this.pauseButton.setFocusable(false);
        this.pauseButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogViewImpl.this.logTableModel.setPaused(!LogViewImpl.this.logTableModel.isPaused());
                if (LogViewImpl.this.logTableModel.isPaused()) {
                    LogViewImpl.this.pauseLabel.setText(" (Paused)");
                } else {
                    LogViewImpl.this.pauseLabel.setText(" (Active)");
                }
            }
        });
        this.expirationComboBox.setSelectedItem(expiration);
        this.expirationComboBox.setMaximumSize(new Dimension(100, 32));
        this.expirationComboBox.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                LogViewImpl.this.logTableModel.setMaxAgeSeconds(((Expiration) ((JComboBox) actionEvent.getSource()).getSelectedItem()).getSeconds());
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
    public Expiration getDefaultExpiration() {
        return Expiration.SIXTY_SECONDS;
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

    /* access modifiers changed from: protected */
    public List<LogMessage> getSelectedMessages() {
        ArrayList arrayList = new ArrayList();
        for (int valueAt : this.logTable.getSelectedRows()) {
            arrayList.add((LogMessage) this.logTableModel.getValueAt(valueAt, 0));
        }
        return arrayList;
    }
}
