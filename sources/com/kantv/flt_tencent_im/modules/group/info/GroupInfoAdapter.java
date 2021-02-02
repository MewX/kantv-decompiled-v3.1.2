package com.kantv.flt_tencent_im.modules.group.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo;
import com.kantv.flt_tencent_im.modules.group.member.IGroupMemberRouter;
import java.util.ArrayList;
import java.util.List;

public class GroupInfoAdapter extends BaseAdapter {
    private static final int ADD_TYPE = -100;
    private static final int DEL_TYPE = -101;
    private static final int NORMAL_CHATROOM_MAX_LIMIT = 12;
    private static final int NORMAL_PRIVATE_MAX_LIMIT = 11;
    private static final int NORMAL_PUBLIC_MAX_LIMIT = 12;
    private static final int OWNER_CHATROOM_MAX_LIMIT = 11;
    private static final int OWNER_PRIVATE_MAX_LIMIT = 10;
    private static final int OWNER_PUBLIC_MAX_LIMIT = 11;
    private GroupInfo mGroupInfo;
    private List<GroupMemberInfo> mGroupMembers = new ArrayList();
    private IGroupMemberRouter mTailListener;

    private class MyViewHolder {
        private ImageView memberIcon;
        private TextView memberName;

        private MyViewHolder() {
        }
    }

    public long getItemId(int i) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return view;
    }

    public void setManagerCallBack(IGroupMemberRouter iGroupMemberRouter) {
        this.mTailListener = iGroupMemberRouter;
    }

    public int getCount() {
        return this.mGroupMembers.size();
    }

    public GroupMemberInfo getItem(int i) {
        return (GroupMemberInfo) this.mGroupMembers.get(i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x009e A[LOOP:0: B:37:0x009c->B:38:0x009e, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00eb A[EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00eb A[EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00eb A[EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00eb A[EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  
    EDGE_INSN: B:58:0x00eb->B:49:0x00eb ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDataSource(com.kantv.flt_tencent_im.modules.group.info.GroupInfo r8) {
        /*
            r7 = this;
            r7.mGroupInfo = r8
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r0 = r7.mGroupMembers
            r0.clear()
            java.util.List r0 = r8.getMemberDetails()
            if (r0 == 0) goto L_0x0116
            java.lang.String r1 = r8.getGroupType()
            java.lang.String r2 = "Private"
            boolean r1 = android.text.TextUtils.equals(r1, r2)
            r3 = 0
            r4 = 11
            if (r1 == 0) goto L_0x0042
            boolean r1 = r8.isOwner()
            if (r1 == 0) goto L_0x0034
            int r1 = r0.size()
            r4 = 10
            if (r1 <= r4) goto L_0x002e
            r1 = 10
            goto L_0x009b
        L_0x002e:
            int r1 = r0.size()
            goto L_0x009b
        L_0x0034:
            int r1 = r0.size()
            if (r1 <= r4) goto L_0x003d
        L_0x003a:
            r1 = 11
            goto L_0x009b
        L_0x003d:
            int r1 = r0.size()
            goto L_0x009b
        L_0x0042:
            java.lang.String r1 = r8.getGroupType()
            java.lang.String r5 = "Public"
            boolean r1 = android.text.TextUtils.equals(r1, r5)
            r5 = 12
            if (r1 == 0) goto L_0x0070
            boolean r1 = r8.isOwner()
            if (r1 == 0) goto L_0x0062
            int r1 = r0.size()
            if (r1 <= r4) goto L_0x005d
            goto L_0x003a
        L_0x005d:
            int r1 = r0.size()
            goto L_0x009b
        L_0x0062:
            int r1 = r0.size()
            if (r1 <= r5) goto L_0x006b
        L_0x0068:
            r1 = 12
            goto L_0x009b
        L_0x006b:
            int r1 = r0.size()
            goto L_0x009b
        L_0x0070:
            java.lang.String r1 = r8.getGroupType()
            java.lang.String r6 = "ChatRoom"
            boolean r1 = android.text.TextUtils.equals(r1, r6)
            if (r1 == 0) goto L_0x009a
            boolean r1 = r8.isOwner()
            if (r1 == 0) goto L_0x008e
            int r1 = r0.size()
            if (r1 <= r4) goto L_0x0089
            goto L_0x003a
        L_0x0089:
            int r1 = r0.size()
            goto L_0x009b
        L_0x008e:
            int r1 = r0.size()
            if (r1 <= r5) goto L_0x0095
            goto L_0x0068
        L_0x0095:
            int r1 = r0.size()
            goto L_0x009b
        L_0x009a:
            r1 = 0
        L_0x009b:
            r4 = 0
        L_0x009c:
            if (r4 >= r1) goto L_0x00aa
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r5 = r7.mGroupMembers
            java.lang.Object r6 = r0.get(r4)
            r5.add(r6)
            int r4 = r4 + 1
            goto L_0x009c
        L_0x00aa:
            java.lang.String r0 = r8.getGroupType()
            boolean r0 = android.text.TextUtils.equals(r0, r2)
            if (r0 == 0) goto L_0x00c3
            com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo r0 = new com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo
            r0.<init>()
            r1 = -100
            r0.setMemberType(r1)
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r1 = r7.mGroupMembers
            r1.add(r0)
        L_0x00c3:
            r0 = 0
        L_0x00c4:
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r1 = r7.mGroupMembers
            int r1 = r1.size()
            if (r3 >= r1) goto L_0x00eb
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r1 = r7.mGroupMembers
            java.lang.Object r1 = r1.get(r3)
            com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo r1 = (com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo) r1
            java.lang.String r2 = r1.getAccount()
            com.tencent.imsdk.TIMManager r4 = com.tencent.imsdk.TIMManager.getInstance()
            java.lang.String r4 = r4.getLoginUser()
            boolean r2 = android.text.TextUtils.equals(r2, r4)
            if (r2 == 0) goto L_0x00e8
            r0 = r1
            goto L_0x00eb
        L_0x00e8:
            int r3 = r3 + 1
            goto L_0x00c4
        L_0x00eb:
            boolean r8 = r8.isOwner()
            if (r8 != 0) goto L_0x00fb
            if (r0 == 0) goto L_0x010a
            int r8 = r0.getMemberType()
            r0 = 300(0x12c, float:4.2E-43)
            if (r8 != r0) goto L_0x010a
        L_0x00fb:
            com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo r8 = new com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo
            r8.<init>()
            r0 = -101(0xffffffffffffff9b, float:NaN)
            r8.setMemberType(r0)
            java.util.List<com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo> r0 = r7.mGroupMembers
            r0.add(r8)
        L_0x010a:
            com.kantv.flt_tencent_im.utils.BackgroundTasks r8 = com.kantv.flt_tencent_im.utils.BackgroundTasks.getInstance()
            com.kantv.flt_tencent_im.modules.group.info.GroupInfoAdapter$1 r0 = new com.kantv.flt_tencent_im.modules.group.info.GroupInfoAdapter$1
            r0.<init>()
            r8.runOnUiThread(r0)
        L_0x0116:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.modules.group.info.GroupInfoAdapter.setDataSource(com.kantv.flt_tencent_im.modules.group.info.GroupInfo):void");
    }
}
