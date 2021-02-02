package org.seamless.swing.logging;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JToolBar;
import org.seamless.swing.logging.LogCategory.Group;
import org.seamless.swing.logging.LogCategory.LoggerLevel;

public class LogCategorySelector extends JDialog {
    protected final JPanel mainPanel = new JPanel();

    public LogCategorySelector(List<LogCategory> list) {
        setTitle("Select logging categories...");
        JPanel jPanel = this.mainPanel;
        jPanel.setLayout(new BoxLayout(jPanel, 1));
        this.mainPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        addLogCategories(list);
        JScrollPane jScrollPane = new JScrollPane(this.mainPanel);
        jScrollPane.setBorder(BorderFactory.createEmptyBorder());
        add(jScrollPane);
        setMaximumSize(new Dimension(750, 550));
        setResizable(false);
        pack();
    }

    /* access modifiers changed from: protected */
    public void addLogCategories(List<LogCategory> list) {
        for (LogCategory addLogCategory : list) {
            addLogCategory(addLogCategory);
        }
    }

    /* access modifiers changed from: protected */
    public void addLogCategory(LogCategory logCategory) {
        JPanel jPanel = new JPanel(new BorderLayout());
        jPanel.setBorder(BorderFactory.createTitledBorder(logCategory.getName()));
        addLoggerGroups(logCategory, jPanel);
        this.mainPanel.add(jPanel);
    }

    /* access modifiers changed from: protected */
    public void addLoggerGroups(final LogCategory logCategory, final JPanel jPanel) {
        JPanel jPanel2 = new JPanel();
        jPanel2.setLayout(new BoxLayout(jPanel2, 1));
        for (final Group group : logCategory.getGroups()) {
            JCheckBox jCheckBox = new JCheckBox(group.getName());
            jCheckBox.setSelected(group.isEnabled());
            jCheckBox.setFocusable(false);
            jCheckBox.addItemListener(new ItemListener() {
                public void itemStateChanged(ItemEvent itemEvent) {
                    if (itemEvent.getStateChange() == 2) {
                        LogCategorySelector.this.disableLoggerGroup(group);
                    } else if (itemEvent.getStateChange() == 1) {
                        LogCategorySelector.this.enableLoggerGroup(group);
                    }
                }
            });
            jPanel2.add(jCheckBox);
        }
        JToolBar jToolBar = new JToolBar();
        jToolBar.setFloatable(false);
        JButton jButton = new JButton("All");
        jButton.setFocusable(false);
        jButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                for (Group enableLoggerGroup : logCategory.getGroups()) {
                    LogCategorySelector.this.enableLoggerGroup(enableLoggerGroup);
                }
                jPanel.removeAll();
                LogCategorySelector.this.addLoggerGroups(logCategory, jPanel);
                jPanel.revalidate();
            }
        });
        jToolBar.add(jButton);
        JButton jButton2 = new JButton("None");
        jButton2.setFocusable(false);
        jButton2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent actionEvent) {
                for (Group disableLoggerGroup : logCategory.getGroups()) {
                    LogCategorySelector.this.disableLoggerGroup(disableLoggerGroup);
                }
                jPanel.removeAll();
                LogCategorySelector.this.addLoggerGroups(logCategory, jPanel);
                jPanel.revalidate();
            }
        });
        jToolBar.add(jButton2);
        jPanel.add(jPanel2, "Center");
        jPanel.add(jToolBar, "North");
    }

    /* access modifiers changed from: protected */
    public void enableLoggerGroup(Group group) {
        group.setEnabled(true);
        group.getPreviousLevels().clear();
        for (LoggerLevel loggerLevel : group.getLoggerLevels()) {
            Logger logger = Logger.getLogger(loggerLevel.getLogger());
            group.getPreviousLevels().add(new LoggerLevel(logger.getName(), getLevel(logger)));
            logger.setLevel(loggerLevel.getLevel());
        }
    }

    /* access modifiers changed from: protected */
    public void disableLoggerGroup(Group group) {
        group.setEnabled(false);
        for (LoggerLevel loggerLevel : group.getPreviousLevels()) {
            Logger.getLogger(loggerLevel.getLogger()).setLevel(loggerLevel.getLevel());
        }
        if (group.getPreviousLevels().size() == 0) {
            for (LoggerLevel logger : group.getLoggerLevels()) {
                Logger.getLogger(logger.getLogger()).setLevel(Level.INFO);
            }
        }
        group.getPreviousLevels().clear();
    }

    public Level getLevel(Logger logger) {
        Level level = logger.getLevel();
        return (level != null || logger.getParent() == null) ? level : logger.getParent().getLevel();
    }
}
