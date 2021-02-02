package com.kantv.flt_tencent_im.modules.group.member;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.kantv.flt_tencent_im.base.BaseFragment;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Group;

public class GroupMemberManagerFragment extends BaseFragment {
    private View mBaseView;
    private GroupInfo mGroupInfo;
    private GroupMemberManagerLayout mMemberLayout;

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        init();
        return this.mBaseView;
    }

    private void init() {
        this.mGroupInfo = (GroupInfo) getArguments().getSerializable(Group.GROUP_INFO);
        this.mMemberLayout.setDataSource(this.mGroupInfo);
        this.mMemberLayout.setRouter(new IGroupMemberRouter() {
            public void forwardListMember(GroupInfo groupInfo) {
            }

            public void forwardAddMember(GroupInfo groupInfo) {
                GroupMemberInviteFragment groupMemberInviteFragment = new GroupMemberInviteFragment();
                Bundle bundle = new Bundle();
                bundle.putSerializable(Group.GROUP_INFO, groupInfo);
                groupMemberInviteFragment.setArguments(bundle);
                GroupMemberManagerFragment.this.forward(groupMemberInviteFragment, false);
            }

            public void forwardDeleteMember(GroupInfo groupInfo) {
                GroupMemberDeleteFragment groupMemberDeleteFragment = new GroupMemberDeleteFragment();
                Bundle bundle = new Bundle();
                bundle.putSerializable(Group.GROUP_INFO, groupInfo);
                groupMemberDeleteFragment.setArguments(bundle);
                GroupMemberManagerFragment.this.forward(groupMemberDeleteFragment, false);
            }
        });
    }
}
