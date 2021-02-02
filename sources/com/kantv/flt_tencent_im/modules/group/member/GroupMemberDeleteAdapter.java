package com.kantv.flt_tencent_im.modules.group.member;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.kantv.flt_tencent_im.utils.BackgroundTasks;
import java.util.ArrayList;
import java.util.List;

public class GroupMemberDeleteAdapter extends BaseAdapter {
    private List<GroupMemberInfo> mDelMembers = new ArrayList();
    private List<GroupMemberInfo> mGroupMembers = new ArrayList();
    private OnSelectChangedListener mSelectCallback;

    private class MyViewHolder {
        private CheckBox delCheck;
        private ImageView memberIcon;
        private TextView memberName;

        private MyViewHolder() {
        }
    }

    public interface OnSelectChangedListener {
        void onSelectChanged(List<GroupMemberInfo> list);
    }

    public long getItemId(int i) {
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return view;
    }

    public int getCount() {
        return this.mGroupMembers.size();
    }

    public GroupMemberInfo getItem(int i) {
        return (GroupMemberInfo) this.mGroupMembers.get(i);
    }

    public void setDataSource(List<GroupMemberInfo> list) {
        if (list != null) {
            this.mGroupMembers = list;
            BackgroundTasks.getInstance().runOnUiThread(new Runnable() {
                public void run() {
                    GroupMemberDeleteAdapter.this.notifyDataSetChanged();
                }
            });
        }
    }

    public void setOnSelectChangedListener(OnSelectChangedListener onSelectChangedListener) {
        this.mSelectCallback = onSelectChangedListener;
    }

    public void clear() {
        this.mDelMembers.clear();
    }
}
