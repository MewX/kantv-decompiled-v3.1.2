package org.seamless.swing;

import java.awt.Component;
import java.awt.FontMetrics;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JTabbedPane;
import javax.swing.JViewport;
import javax.swing.SwingUtilities;
import javax.swing.event.EventListenerList;
import javax.swing.plaf.basic.BasicTabbedPaneUI;
import javax.swing.plaf.metal.MetalTabbedPaneUI;
import javax.swing.text.View;

public class ClosableTabbedPane extends JTabbedPane implements MouseListener, MouseMotionListener {
    private JViewport headerViewport = null;
    /* access modifiers changed from: private */
    public Icon hooverCloseIcon = null;
    private EventListenerList listenerList = null;
    /* access modifiers changed from: private */
    public Icon normalCloseIcon = null;
    /* access modifiers changed from: private */
    public Icon pressedCloseIcon = null;

    class CloseTabIcon implements Icon {
        private Icon fileIcon;
        private int height;
        /* access modifiers changed from: private */
        public boolean mouseover = false;
        /* access modifiers changed from: private */
        public boolean mousepressed = false;
        private int width;
        private int x_pos;
        private int y_pos;

        public CloseTabIcon(Icon icon) {
            this.fileIcon = icon;
            this.width = 16;
            this.height = 16;
        }

        /* JADX WARNING: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void paintIcon(java.awt.Component r10, java.awt.Graphics r11, int r12, int r13) {
            /*
                r9 = this;
                r0 = 1
                r1 = r10
                javax.swing.JTabbedPane r1 = (javax.swing.JTabbedPane) r1     // Catch:{ Exception -> 0x0021 }
                javax.swing.plaf.TabbedPaneUI r2 = r1.getUI()     // Catch:{ Exception -> 0x0021 }
                int r2 = r2.tabForCoordinate(r1, r12, r13)     // Catch:{ Exception -> 0x0021 }
                java.awt.Component r1 = r1.getComponentAt(r2)     // Catch:{ Exception -> 0x0021 }
                javax.swing.JComponent r1 = (javax.swing.JComponent) r1     // Catch:{ Exception -> 0x0021 }
                java.lang.String r2 = "isClosable"
                java.lang.Object r1 = r1.getClientProperty(r2)     // Catch:{ Exception -> 0x0021 }
                if (r1 == 0) goto L_0x0021
                java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch:{ Exception -> 0x0021 }
                boolean r1 = r1.booleanValue()     // Catch:{ Exception -> 0x0021 }
                goto L_0x0022
            L_0x0021:
                r1 = 1
            L_0x0022:
                if (r1 == 0) goto L_0x00e1
                r9.x_pos = r12
                r9.y_pos = r13
                int r13 = r13 + r0
                org.seamless.swing.ClosableTabbedPane r1 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r1 = r1.normalCloseIcon
                if (r1 == 0) goto L_0x0040
                boolean r1 = r9.mouseover
                if (r1 != 0) goto L_0x0040
                org.seamless.swing.ClosableTabbedPane r0 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r0 = r0.normalCloseIcon
                r0.paintIcon(r10, r11, r12, r13)
                goto L_0x00e1
            L_0x0040:
                org.seamless.swing.ClosableTabbedPane r1 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r1 = r1.hooverCloseIcon
                if (r1 == 0) goto L_0x005b
                boolean r1 = r9.mouseover
                if (r1 == 0) goto L_0x005b
                boolean r1 = r9.mousepressed
                if (r1 != 0) goto L_0x005b
                org.seamless.swing.ClosableTabbedPane r0 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r0 = r0.hooverCloseIcon
                r0.paintIcon(r10, r11, r12, r13)
                goto L_0x00e1
            L_0x005b:
                org.seamless.swing.ClosableTabbedPane r1 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r1 = r1.pressedCloseIcon
                if (r1 == 0) goto L_0x0071
                boolean r1 = r9.mousepressed
                if (r1 == 0) goto L_0x0071
                org.seamless.swing.ClosableTabbedPane r0 = org.seamless.swing.ClosableTabbedPane.this
                javax.swing.Icon r0 = r0.pressedCloseIcon
                r0.paintIcon(r10, r11, r12, r13)
                goto L_0x00e1
            L_0x0071:
                int r13 = r13 + r0
                java.awt.Color r0 = r11.getColor()
                boolean r1 = r9.mousepressed
                if (r1 == 0) goto L_0x008c
                boolean r1 = r9.mouseover
                if (r1 == 0) goto L_0x008c
                java.awt.Color r1 = java.awt.Color.WHITE
                r11.setColor(r1)
                int r1 = r12 + 1
                r2 = 13
                r3 = 12
                r11.fillRect(r1, r13, r3, r2)
            L_0x008c:
                java.awt.Color r1 = java.awt.Color.black
                r11.setColor(r1)
                int r1 = r12 + 1
                int r2 = r12 + 12
                r11.drawLine(r1, r13, r2, r13)
                int r3 = r13 + 13
                r11.drawLine(r1, r3, r2, r3)
                int r1 = r13 + 1
                int r2 = r13 + 12
                r11.drawLine(r12, r1, r12, r2)
                int r3 = r12 + 13
                r11.drawLine(r3, r1, r3, r2)
                int r1 = r12 + 3
                int r2 = r13 + 3
                int r3 = r12 + 10
                int r4 = r13 + 10
                r11.drawLine(r1, r2, r3, r4)
                boolean r5 = r9.mouseover
                if (r5 == 0) goto L_0x00bd
                java.awt.Color r5 = java.awt.Color.GRAY
                r11.setColor(r5)
            L_0x00bd:
                int r5 = r13 + 4
                int r6 = r12 + 9
                r11.drawLine(r1, r5, r6, r4)
                int r7 = r12 + 4
                int r8 = r13 + 9
                r11.drawLine(r7, r2, r3, r8)
                r11.drawLine(r3, r2, r1, r4)
                r11.drawLine(r3, r5, r7, r4)
                r11.drawLine(r6, r2, r1, r8)
                r11.setColor(r0)
                javax.swing.Icon r0 = r9.fileIcon
                if (r0 == 0) goto L_0x00e1
                int r1 = r9.width
                int r12 = r12 + r1
                r0.paintIcon(r10, r11, r12, r13)
            L_0x00e1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.seamless.swing.ClosableTabbedPane.CloseTabIcon.paintIcon(java.awt.Component, java.awt.Graphics, int, int):void");
        }

        public int getIconWidth() {
            int i = this.width;
            Icon icon = this.fileIcon;
            return i + (icon != null ? icon.getIconWidth() : 0);
        }

        public int getIconHeight() {
            return this.height;
        }

        public Rectangle getBounds() {
            return new Rectangle(this.x_pos, this.y_pos, this.width, this.height);
        }
    }

    class CloseableMetalTabbedPaneUI extends MetalTabbedPaneUI {
        private int horizontalTextPosition = 2;

        public CloseableMetalTabbedPaneUI() {
        }

        public CloseableMetalTabbedPaneUI(int i) {
            this.horizontalTextPosition = i;
        }

        /* access modifiers changed from: protected */
        public void layoutLabel(int i, FontMetrics fontMetrics, int i2, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z) {
            int i3 = i;
            int i4 = i2;
            Rectangle rectangle4 = rectangle2;
            Rectangle rectangle5 = rectangle3;
            boolean z2 = z;
            rectangle4.y = 0;
            rectangle4.x = 0;
            rectangle5.y = 0;
            rectangle5.x = 0;
            View textViewForTab = getTextViewForTab(i4);
            String str2 = "html";
            if (textViewForTab != null) {
                this.tabPane.putClientProperty(str2, textViewForTab);
            }
            String str3 = str2;
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty(str3, null);
            boolean z3 = z;
            int tabLabelShiftX = getTabLabelShiftX(i3, i4, z3);
            int tabLabelShiftY = getTabLabelShiftY(i3, i4, z3);
            rectangle4.x += tabLabelShiftX;
            rectangle4.y += tabLabelShiftY;
            Rectangle rectangle6 = rectangle3;
            rectangle6.x += tabLabelShiftX;
            rectangle6.y += tabLabelShiftY;
        }
    }

    class CloseableTabbedPaneUI extends BasicTabbedPaneUI {
        private int horizontalTextPosition = 2;

        public CloseableTabbedPaneUI() {
        }

        public CloseableTabbedPaneUI(int i) {
            this.horizontalTextPosition = i;
        }

        /* access modifiers changed from: protected */
        public void layoutLabel(int i, FontMetrics fontMetrics, int i2, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z) {
            int i3 = i;
            int i4 = i2;
            Rectangle rectangle4 = rectangle2;
            Rectangle rectangle5 = rectangle3;
            boolean z2 = z;
            rectangle4.y = 0;
            rectangle4.x = 0;
            rectangle5.y = 0;
            rectangle5.x = 0;
            View textViewForTab = getTextViewForTab(i4);
            String str2 = "html";
            if (textViewForTab != null) {
                this.tabPane.putClientProperty(str2, textViewForTab);
            }
            String str3 = str2;
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty(str3, null);
            boolean z3 = z;
            int tabLabelShiftX = getTabLabelShiftX(i3, i4, z3);
            int tabLabelShiftY = getTabLabelShiftY(i3, i4, z3);
            rectangle4.x += tabLabelShiftX;
            rectangle4.y += tabLabelShiftY;
            Rectangle rectangle6 = rectangle3;
            rectangle6.x += tabLabelShiftX;
            rectangle6.y += tabLabelShiftY;
        }
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseReleased(MouseEvent mouseEvent) {
    }

    public ClosableTabbedPane() {
        init(2);
    }

    public ClosableTabbedPane(int i) {
        init(i);
    }

    private void init(int i) {
        this.listenerList = new EventListenerList();
        addMouseListener(this);
        addMouseMotionListener(this);
        if (getUI() instanceof MetalTabbedPaneUI) {
            setUI(new CloseableMetalTabbedPaneUI(i));
        } else {
            setUI(new CloseableTabbedPaneUI(i));
        }
    }

    public void setCloseIcons(Icon icon, Icon icon2, Icon icon3) {
        this.normalCloseIcon = icon;
        this.hooverCloseIcon = icon2;
        this.pressedCloseIcon = icon3;
    }

    public void addTab(String str, Component component) {
        addTab(str, component, null);
    }

    public void addTab(String str, Component component, Icon icon) {
        JViewport[] components;
        boolean z = true;
        try {
            Object clientProperty = ((JComponent) component).getClientProperty("isClosable");
            if (clientProperty != null) {
                z = ((Boolean) clientProperty).booleanValue();
            }
        } catch (Exception unused) {
        }
        ClosableTabbedPane.super.addTab(str, z ? new CloseTabIcon(icon) : null, component);
        if (this.headerViewport == null) {
            for (JViewport jViewport : getComponents()) {
                if ("TabbedPane.scrollableViewport".equals(jViewport.getName())) {
                    this.headerViewport = jViewport;
                }
            }
        }
    }

    public void mouseClicked(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseExited(MouseEvent mouseEvent) {
        for (int i = 0; i < getTabCount(); i++) {
            CloseTabIcon iconAt = getIconAt(i);
            if (iconAt != null) {
                iconAt.mouseover = false;
            }
        }
        repaint();
    }

    public void mousePressed(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseDragged(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseMoved(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    private void processMouseEvents(MouseEvent mouseEvent) {
        int tabForCoordinate = getUI().tabForCoordinate(this, mouseEvent.getX(), mouseEvent.getY());
        if (tabForCoordinate >= 0) {
            CloseTabIcon iconAt = getIconAt(tabForCoordinate);
            if (iconAt != null) {
                Rectangle bounds = iconAt.getBounds();
                JViewport jViewport = this.headerViewport;
                Point point = jViewport == null ? new Point() : jViewport.getViewPosition();
                Rectangle rectangle = new Rectangle(bounds.x - point.x, bounds.y - point.y, bounds.width, bounds.height);
                boolean z = true;
                if (mouseEvent.getID() == 501) {
                    if (mouseEvent.getModifiers() != 16) {
                        z = false;
                    }
                    iconAt.mousepressed = z;
                    repaint(rectangle);
                } else if (mouseEvent.getID() == 503 || mouseEvent.getID() == 506 || mouseEvent.getID() == 500) {
                    point.x += mouseEvent.getX();
                    point.y += mouseEvent.getY();
                    if (!bounds.contains(point)) {
                        iconAt.mouseover = false;
                    } else if (mouseEvent.getID() == 500) {
                        int selectedIndex = getSelectedIndex();
                        if (fireCloseTab(selectedIndex)) {
                            if (selectedIndex > 0) {
                                Rectangle tabBounds = getUI().getTabBounds(this, selectedIndex - 1);
                                MouseEvent mouseEvent2 = new MouseEvent((Component) mouseEvent.getSource(), mouseEvent.getID() + 1, System.currentTimeMillis(), mouseEvent.getModifiers(), tabBounds.x, tabBounds.y, mouseEvent.getClickCount(), mouseEvent.isPopupTrigger(), mouseEvent.getButton());
                                dispatchEvent(mouseEvent2);
                            }
                            remove(selectedIndex);
                        } else {
                            iconAt.mouseover = false;
                            iconAt.mousepressed = false;
                            repaint(rectangle);
                        }
                    } else {
                        iconAt.mouseover = true;
                        if (mouseEvent.getModifiers() != 16) {
                            z = false;
                        }
                        iconAt.mousepressed = z;
                    }
                    repaint(rectangle);
                }
            }
        }
    }

    public void addCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.add(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public void removeCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.remove(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public ClosableTabbedPaneListener[] getCloseableTabbedPaneListener() {
        return (ClosableTabbedPaneListener[]) this.listenerList.getListeners(ClosableTabbedPaneListener.class);
    }

    /* access modifiers changed from: protected */
    public boolean fireCloseTab(int i) {
        Object[] listenerList2;
        for (Object obj : this.listenerList.getListenerList()) {
            if ((obj instanceof ClosableTabbedPaneListener) && !((ClosableTabbedPaneListener) obj).closeTab(i)) {
                return false;
            }
        }
        return true;
    }
}
