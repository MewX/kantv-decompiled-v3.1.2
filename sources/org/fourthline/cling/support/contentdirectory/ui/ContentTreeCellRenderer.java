package org.fourthline.cling.support.contentdirectory.ui;

import java.awt.Component;
import javax.swing.Icon;
import javax.swing.JTree;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.container.Container;
import org.fourthline.cling.support.model.item.Item;

public class ContentTreeCellRenderer extends DefaultTreeCellRenderer {
    /* access modifiers changed from: protected */
    public Icon getContainerClosedIcon() {
        return null;
    }

    /* access modifiers changed from: protected */
    public Icon getContainerOpenIcon() {
        return null;
    }

    /* access modifiers changed from: protected */
    public Icon getInfoIcon() {
        return null;
    }

    /* access modifiers changed from: protected */
    public Icon getItemIcon(Item item, String str) {
        return null;
    }

    /* access modifiers changed from: protected */
    public void onCreate() {
    }

    public Component getTreeCellRendererComponent(JTree jTree, Object obj, boolean z, boolean z2, boolean z3, int i, boolean z4) {
        ContentTreeCellRenderer.super.getTreeCellRendererComponent(jTree, obj, z, z2, z3, i, z4);
        DefaultMutableTreeNode defaultMutableTreeNode = (DefaultMutableTreeNode) obj;
        if (defaultMutableTreeNode.getUserObject() instanceof Container) {
            setText(((Container) defaultMutableTreeNode.getUserObject()).getTitle());
            setIcon(z2 ? getContainerOpenIcon() : getContainerClosedIcon());
        } else if (defaultMutableTreeNode.getUserObject() instanceof Item) {
            Item item = (Item) defaultMutableTreeNode.getUserObject();
            setText(item.getTitle());
            Class clazz = item.getClazz();
            setIcon(getItemIcon(item, clazz != null ? clazz.getValue() : null));
        } else if (defaultMutableTreeNode.getUserObject() instanceof String) {
            setIcon(getInfoIcon());
        }
        onCreate();
        return this;
    }
}
