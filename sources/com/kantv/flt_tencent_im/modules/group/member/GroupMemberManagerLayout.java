package com.kantv.flt_tencent_im.modules.group.member;

import android.app.AlertDialog;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;
import com.kantv.flt_tencent_im.modules.group.interfaces.IGroupMemberLayout;

public class GroupMemberManagerLayout extends LinearLayout implements IGroupMemberLayout {
    private GroupMemberManagerAdapter mAdapter;
    private AlertDialog mDialog;
    private GroupInfo mGroupInfo;
    private IGroupMemberRouter mGroupMemberManager;
    private String mTitleBar;

    public String getTitleBar() {
        return null;
    }

    public void setDataSource(GroupInfo groupInfo) {
    }

    public void setParentLayout(Object obj) {
    }

    public GroupMemberManagerLayout(Context context) {
        super(context);
    }

    public GroupMemberManagerLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GroupMemberManagerLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setRouter(IGroupMemberRouter iGroupMemberRouter) {
        this.mGroupMemberManager = iGroupMemberRouter;
    }
}
