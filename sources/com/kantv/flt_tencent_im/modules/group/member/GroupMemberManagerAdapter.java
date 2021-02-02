package com.kantv.flt_tencent_im.modules.group.member;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;
import com.kantv.flt_tencent_im.utils.BackgroundTasks;
import java.util.ArrayList;
import java.util.List;

public class GroupMemberManagerAdapter extends BaseAdapter {
    private IGroupMemberChangedCallback mCallback;
    private GroupInfo mGroupInfo;
    private List<GroupMemberInfo> mGroupMembers = new ArrayList();

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

    public void setMemberChangedCallback(IGroupMemberChangedCallback iGroupMemberChangedCallback) {
        this.mCallback = iGroupMemberChangedCallback;
    }

    public int getCount() {
        return this.mGroupMembers.size();
    }

    public GroupMemberInfo getItem(int i) {
        return (GroupMemberInfo) this.mGroupMembers.get(i);
    }

    public void setDataSource(GroupInfo groupInfo) {
        if (groupInfo != null) {
            this.mGroupInfo = groupInfo;
            this.mGroupMembers = groupInfo.getMemberDetails();
            BackgroundTasks.getInstance().runOnUiThread(new Runnable() {
                public void run() {
                    GroupMemberManagerAdapter.this.notifyDataSetChanged();
                }
            });
        }
    }
}
