package org.seamless.swing;

import com.avos.avoscloud.Messages.OpType;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.Window;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URL;
import javax.swing.ImageIcon;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import org.eclipse.jetty.http.HttpHeaders;

public class Application {
    public static void showError(Component component, Throwable th) {
        JTextArea jTextArea = new JTextArea();
        jTextArea.setFont(new Font("Sans-Serif", 0, 10));
        jTextArea.setEditable(false);
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        jTextArea.setText(stringWriter.toString());
        JScrollPane jScrollPane = new JScrollPane(jTextArea);
        jScrollPane.setPreferredSize(new Dimension(350, OpType.modify_VALUE));
        JOptionPane.showMessageDialog(component, jScrollPane, "An Error Has Occurred", 0);
    }

    public static void showWarning(Component component, String... strArr) {
        JTextArea jTextArea = new JTextArea();
        jTextArea.setFont(new Font("Sans-Serif", 0, 10));
        jTextArea.setEditable(false);
        for (String str : strArr) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("\n");
            jTextArea.append(sb.toString());
        }
        JScrollPane jScrollPane = new JScrollPane(jTextArea);
        jScrollPane.setPreferredSize(new Dimension(350, OpType.modify_VALUE));
        JOptionPane.showMessageDialog(component, jScrollPane, HttpHeaders.WARNING, 0);
    }

    public static void showInfo(Component component, String... strArr) {
        JTextArea jTextArea = new JTextArea();
        jTextArea.setFont(new Font("Sans-Serif", 0, 10));
        jTextArea.setEditable(false);
        for (String str : strArr) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("\n");
            jTextArea.append(sb.toString());
        }
        JScrollPane jScrollPane = new JScrollPane(jTextArea);
        jScrollPane.setPreferredSize(new Dimension(350, OpType.modify_VALUE));
        JOptionPane.showMessageDialog(component, jScrollPane, "Info", 1);
    }

    public static void increaseFontSize(JComponent jComponent) {
        jComponent.setFont(new Font(jComponent.getFont().getFontName(), jComponent.getFont().getStyle(), jComponent.getFont().getSize() + 2));
    }

    public static void decreaseFontSize(JComponent jComponent) {
        jComponent.setFont(new Font(jComponent.getFont().getFontName(), jComponent.getFont().getStyle(), jComponent.getFont().getSize() - 2));
    }

    public static Window center(Window window) {
        Dimension size = window.getSize();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        int i = (screenSize.width - size.width) / 2;
        int i2 = (screenSize.height - size.height) / 2;
        int i3 = 0;
        if (i < 0) {
            i = 0;
        }
        if (i2 >= 0) {
            i3 = i2;
        }
        window.setLocation(i, i3);
        return window;
    }

    public static Window center(Window window, Window window2) {
        double x = (double) window2.getX();
        double width = window2.getSize().getWidth() / 2.0d;
        Double.isNaN(x);
        double d = x + width;
        double y = (double) window2.getY();
        double height = window2.getSize().getHeight() / 2.0d;
        Double.isNaN(y);
        window.setLocation((int) (d - (window.getSize().getWidth() / 2.0d)), (int) ((y + height) - (window.getSize().getHeight() / 2.0d)));
        return window;
    }

    public static Window maximize(Window window) {
        window.getSize();
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        window.setBounds(0, 0, screenSize.width, screenSize.height);
        return window;
    }

    public static ImageIcon createImageIcon(Class cls, String str, String str2) {
        URL resource = cls.getResource(str);
        if (resource != null) {
            return new ImageIcon(resource, str2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Couldn't find image icon on path: ");
        sb.append(str);
        throw new RuntimeException(sb.toString());
    }

    public static ImageIcon createImageIcon(Class cls, String str) {
        return createImageIcon(cls, str, null);
    }

    public static void copyToClipboard(String str) {
        Clipboard systemClipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        StringSelection stringSelection = new StringSelection(str);
        systemClipboard.setContents(stringSelection, stringSelection);
    }
}
