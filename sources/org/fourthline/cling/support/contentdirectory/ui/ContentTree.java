package org.fourthline.cling.support.contentdirectory.ui;

import javax.swing.JTree;
import javax.swing.event.TreeWillExpandListener;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeCellRenderer;
import javax.swing.tree.DefaultTreeModel;
import org.fourthline.cling.controlpoint.ActionCallback;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.support.contentdirectory.callback.Browse.Status;
import org.fourthline.cling.support.model.container.Container;

public abstract class ContentTree extends JTree implements ContentBrowseActionCallbackCreator {
    protected Container rootContainer;
    protected DefaultMutableTreeNode rootNode;

    /* renamed from: org.fourthline.cling.support.contentdirectory.ui.ContentTree$3 reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status = new int[Status.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                org.fourthline.cling.support.contentdirectory.callback.Browse$Status[] r0 = org.fourthline.cling.support.contentdirectory.callback.Browse.Status.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status = r0
                int[] r0 = $SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status     // Catch:{ NoSuchFieldError -> 0x0014 }
                org.fourthline.cling.support.contentdirectory.callback.Browse$Status r1 = org.fourthline.cling.support.contentdirectory.callback.Browse.Status.LOADING     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status     // Catch:{ NoSuchFieldError -> 0x001f }
                org.fourthline.cling.support.contentdirectory.callback.Browse$Status r1 = org.fourthline.cling.support.contentdirectory.callback.Browse.Status.NO_CONTENT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.contentdirectory.ui.ContentTree.AnonymousClass3.<clinit>():void");
        }
    }

    public abstract void failure(String str);

    protected ContentTree() {
    }

    public ContentTree(ControlPoint controlPoint, Service service) {
        init(controlPoint, service);
    }

    public void init(ControlPoint controlPoint, Service service) {
        this.rootContainer = createRootContainer(service);
        this.rootNode = new DefaultMutableTreeNode(this.rootContainer) {
            public boolean isLeaf() {
                return false;
            }
        };
        DefaultTreeModel defaultTreeModel = new DefaultTreeModel(this.rootNode);
        setModel(defaultTreeModel);
        getSelectionModel().setSelectionMode(1);
        addTreeWillExpandListener(createContainerTreeExpandListener(controlPoint, service, defaultTreeModel));
        setCellRenderer(createContainerTreeCellRenderer());
        controlPoint.execute(createContentBrowseActionCallback(service, defaultTreeModel, getRootNode()));
    }

    public Container getRootContainer() {
        return this.rootContainer;
    }

    public DefaultMutableTreeNode getRootNode() {
        return this.rootNode;
    }

    public DefaultMutableTreeNode getSelectedNode() {
        return (DefaultMutableTreeNode) getLastSelectedPathComponent();
    }

    /* access modifiers changed from: protected */
    public Container createRootContainer(Service service) {
        Container container = new Container();
        container.setId("0");
        StringBuilder sb = new StringBuilder();
        sb.append("Content Directory on ");
        sb.append(service.getDevice().getDisplayString());
        container.setTitle(sb.toString());
        return container;
    }

    /* access modifiers changed from: protected */
    public TreeWillExpandListener createContainerTreeExpandListener(ControlPoint controlPoint, Service service, DefaultTreeModel defaultTreeModel) {
        return new ContentTreeExpandListener(controlPoint, service, defaultTreeModel, this);
    }

    /* access modifiers changed from: protected */
    public DefaultTreeCellRenderer createContainerTreeCellRenderer() {
        return new ContentTreeCellRenderer();
    }

    public ActionCallback createContentBrowseActionCallback(Service service, DefaultTreeModel defaultTreeModel, DefaultMutableTreeNode defaultMutableTreeNode) {
        return new ContentBrowseActionCallback(service, defaultTreeModel, defaultMutableTreeNode) {
            public void updateStatusUI(Status status, DefaultMutableTreeNode defaultMutableTreeNode, DefaultTreeModel defaultTreeModel) {
                ContentTree.this.updateStatus(status, defaultMutableTreeNode, defaultTreeModel);
            }

            public void failureUI(String str) {
                ContentTree.this.failure(str);
            }
        };
    }

    public void updateStatus(Status status, DefaultMutableTreeNode defaultMutableTreeNode, DefaultTreeModel defaultTreeModel) {
        int i = AnonymousClass3.$SwitchMap$org$fourthline$cling$support$contentdirectory$callback$Browse$Status[status.ordinal()];
        if (i == 1 || i == 2) {
            defaultMutableTreeNode.removeAllChildren();
            defaultTreeModel.insertNodeInto(new DefaultMutableTreeNode(status.getDefaultMessage()), defaultMutableTreeNode, defaultMutableTreeNode.getChildCount() <= 0 ? 0 : defaultMutableTreeNode.getChildCount());
            defaultTreeModel.nodeStructureChanged(defaultMutableTreeNode);
        }
    }
}
