package org.fourthline.cling.support.contentdirectory.ui;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.swing.SwingUtilities;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.MutableTreeNode;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.support.contentdirectory.callback.Browse;
import org.fourthline.cling.support.contentdirectory.callback.Browse.Status;
import org.fourthline.cling.support.model.BrowseFlag;
import org.fourthline.cling.support.model.DIDLContent;
import org.fourthline.cling.support.model.SortCriterion;
import org.fourthline.cling.support.model.container.Container;
import org.fourthline.cling.support.model.item.Item;

public abstract class ContentBrowseActionCallback extends Browse {
    private static Logger log = Logger.getLogger(ContentBrowseActionCallback.class.getName());
    protected final DefaultTreeModel treeModel;
    protected final DefaultMutableTreeNode treeNode;

    public abstract void failureUI(String str);

    public abstract void updateStatusUI(Status status, DefaultMutableTreeNode defaultMutableTreeNode, DefaultTreeModel defaultTreeModel);

    public ContentBrowseActionCallback(Service service, DefaultTreeModel defaultTreeModel, DefaultMutableTreeNode defaultMutableTreeNode) {
        SortCriterion[] sortCriterionArr = {new SortCriterion(true, "dc:title")};
        Service service2 = service;
        super(service2, ((Container) defaultMutableTreeNode.getUserObject()).getId(), BrowseFlag.DIRECT_CHILDREN, "*", 0, null, sortCriterionArr);
        this.treeModel = defaultTreeModel;
        this.treeNode = defaultMutableTreeNode;
    }

    public ContentBrowseActionCallback(Service service, DefaultTreeModel defaultTreeModel, DefaultMutableTreeNode defaultMutableTreeNode, String str, long j, long j2, SortCriterion... sortCriterionArr) {
        super(service, ((Container) defaultMutableTreeNode.getUserObject()).getId(), BrowseFlag.DIRECT_CHILDREN, str, j, Long.valueOf(j2), sortCriterionArr);
        this.treeModel = defaultTreeModel;
        this.treeNode = defaultMutableTreeNode;
    }

    public DefaultTreeModel getTreeModel() {
        return this.treeModel;
    }

    public DefaultMutableTreeNode getTreeNode() {
        return this.treeNode;
    }

    public void received(ActionInvocation actionInvocation, DIDLContent dIDLContent) {
        log.fine("Received browse action DIDL descriptor, creating tree nodes");
        final ArrayList arrayList = new ArrayList();
        try {
            for (Container r2 : dIDLContent.getContainers()) {
                arrayList.add(new DefaultMutableTreeNode(r2) {
                    public boolean isLeaf() {
                        return false;
                    }
                });
            }
            for (Item r1 : dIDLContent.getItems()) {
                arrayList.add(new DefaultMutableTreeNode(r1) {
                    public boolean isLeaf() {
                        return true;
                    }
                });
            }
        } catch (Exception e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Creating DIDL tree nodes failed: ");
            sb.append(e);
            logger.fine(sb.toString());
            ErrorCode errorCode = ErrorCode.ACTION_FAILED;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't create tree child nodes: ");
            sb2.append(e);
            actionInvocation.setFailure(new ActionException(errorCode, sb2.toString(), (Throwable) e));
            failure(actionInvocation, null);
        }
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                ContentBrowseActionCallback.this.updateTreeModel(arrayList);
            }
        });
    }

    public void updateStatus(final Status status) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                ContentBrowseActionCallback contentBrowseActionCallback = ContentBrowseActionCallback.this;
                contentBrowseActionCallback.updateStatusUI(status, contentBrowseActionCallback.treeNode, ContentBrowseActionCallback.this.treeModel);
            }
        });
    }

    public void failure(ActionInvocation actionInvocation, UpnpResponse upnpResponse, final String str) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                ContentBrowseActionCallback.this.failureUI(str);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void updateTreeModel(List<DefaultMutableTreeNode> list) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Adding nodes to tree: ");
        sb.append(list.size());
        logger.fine(sb.toString());
        removeChildren();
        for (DefaultMutableTreeNode insertChild : list) {
            insertChild(insertChild);
        }
    }

    /* access modifiers changed from: protected */
    public void removeChildren() {
        this.treeNode.removeAllChildren();
        this.treeModel.nodeStructureChanged(this.treeNode);
    }

    /* access modifiers changed from: protected */
    public void insertChild(MutableTreeNode mutableTreeNode) {
        this.treeModel.insertNodeInto(mutableTreeNode, this.treeNode, this.treeNode.getChildCount() <= 0 ? 0 : this.treeNode.getChildCount());
    }
}
