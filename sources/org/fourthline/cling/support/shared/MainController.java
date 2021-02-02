package org.fourthline.cling.support.shared;

import java.awt.Dimension;
import java.awt.Frame;
import java.io.PrintStream;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.LogManager;
import javax.swing.BorderFactory;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JWindow;
import javax.swing.UIManager;
import org.fourthline.cling.UpnpService;
import org.seamless.swing.AbstractController;
import org.seamless.swing.Application;
import org.seamless.swing.logging.LogCategory;
import org.seamless.swing.logging.LogController;
import org.seamless.swing.logging.LogMessage;
import org.seamless.swing.logging.LoggingHandler;
import org.seamless.util.logging.LoggingUtil;

public abstract class MainController extends AbstractController<JFrame> {
    /* access modifiers changed from: private */
    public final LogController logController;
    private final JPanel logPanel;

    public static class ShutdownWindow extends JWindow {
        public static final JWindow INSTANCE = new ShutdownWindow();

        protected ShutdownWindow() {
            JLabel jLabel = new JLabel("Shutting down, please wait...");
            jLabel.setHorizontalAlignment(0);
            getContentPane().add(jLabel);
            setPreferredSize(new Dimension(300, 30));
            pack();
            Application.center(this);
        }
    }

    public abstract UpnpService getUpnpService();

    public MainController(JFrame jFrame, List<LogCategory> list) {
        super(jFrame);
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to load native look and feel: ");
            sb.append(e.toString());
            printStream.println(sb.toString());
        }
        System.setProperty("sun.awt.exception.handler", AWTExceptionHandler.class.getName());
        Runtime.getRuntime().addShutdownHook(new Thread() {
            public void run() {
                if (MainController.this.getUpnpService() != null) {
                    MainController.this.getUpnpService().shutdown();
                }
            }
        });
        this.logController = new LogController(this, list) {
            /* access modifiers changed from: protected */
            public void expand(LogMessage logMessage) {
                fireEventGlobal(new TextExpandEvent(logMessage.getMessage()));
            }

            /* access modifiers changed from: protected */
            public Frame getParentWindow() {
                return MainController.this.getView();
            }
        };
        this.logPanel = this.logController.getView();
        this.logPanel.setBorder(BorderFactory.createEmptyBorder(5, 0, 0, 0));
        AnonymousClass3 r4 = new LoggingHandler() {
            /* access modifiers changed from: protected */
            public void log(LogMessage logMessage) {
                MainController.this.logController.pushMessage(logMessage);
            }
        };
        if (System.getProperty("java.util.logging.config.file") == null) {
            LoggingUtil.resetRootHandler(r4);
            return;
        }
        LogManager.getLogManager().getLogger("").addHandler(r4);
    }

    public LogController getLogController() {
        return this.logController;
    }

    public JPanel getLogPanel() {
        return this.logPanel;
    }

    public void log(Level level, String str) {
        log(new LogMessage(level, str));
    }

    public void log(LogMessage logMessage) {
        getLogController().pushMessage(logMessage);
    }

    public void dispose() {
        super.dispose();
        ShutdownWindow.INSTANCE.setVisible(true);
        new Thread() {
            public void run() {
                System.exit(0);
            }
        }.start();
    }
}
