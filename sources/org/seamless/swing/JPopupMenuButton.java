package org.seamless.swing;

import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import javax.swing.DefaultButtonModel;
import javax.swing.Icon;
import javax.swing.JButton;
import javax.swing.JPopupMenu;

public class JPopupMenuButton extends JButton {
    public JPopupMenu popup;

    public JPopupMenuButton(JPopupMenu jPopupMenu) {
        this.popup = jPopupMenu;
        enableEvents(8);
        enableEvents(16);
    }

    public JPopupMenuButton(String str, JPopupMenu jPopupMenu) {
        super(str);
        this.popup = jPopupMenu;
        enableEvents(8);
        enableEvents(16);
    }

    public JPopupMenuButton(String str, Icon icon, JPopupMenu jPopupMenu) {
        super(str, icon);
        this.popup = jPopupMenu;
        enableEvents(8);
        enableEvents(16);
        setModel(new DefaultButtonModel() {
            public void setPressed(boolean z) {
            }
        });
    }

    /* access modifiers changed from: protected */
    public void processMouseEvent(MouseEvent mouseEvent) {
        JPopupMenuButton.super.processMouseEvent(mouseEvent);
        int id = mouseEvent.getID();
        if (id == 501) {
            JPopupMenu jPopupMenu = this.popup;
            if (jPopupMenu != null) {
                jPopupMenu.show(this, 0, 0);
            }
        } else if (id == 502) {
            JPopupMenu jPopupMenu2 = this.popup;
            if (jPopupMenu2 != null) {
                jPopupMenu2.setVisible(false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void processKeyEvent(KeyEvent keyEvent) {
        int id = keyEvent.getID();
        if (id == 401 || id == 400) {
            if (keyEvent.getKeyCode() == 10) {
                this.popup.show(this, 0, 10);
            }
            JPopupMenuButton.super.processKeyEvent(keyEvent);
        }
    }
}
