package com.kantv.flt_tencent_im.modules.conversation;

import com.kantv.flt_tencent_im.modules.conversation.base.ConversationInfo;
import com.kantv.flt_tencent_im.modules.conversation.interfaces.IConversationProvider;
import java.util.ArrayList;
import java.util.List;

public class ConversationProvider implements IConversationProvider {
    private ArrayList<ConversationInfo> mDataSource = new ArrayList<>();

    public void updateAdapter() {
    }

    public List<ConversationInfo> getDataSource() {
        return this.mDataSource;
    }

    public void setDataSource(List<ConversationInfo> list) {
        this.mDataSource.clear();
        this.mDataSource.addAll(list);
        updateAdapter();
    }

    public boolean addConversations(List<ConversationInfo> list) {
        if (list.size() == 1) {
            ConversationInfo conversationInfo = (ConversationInfo) list.get(0);
            for (int i = 0; i < this.mDataSource.size(); i++) {
                if (((ConversationInfo) this.mDataSource.get(i)).getId().equals(conversationInfo.getId())) {
                    return true;
                }
            }
        }
        boolean addAll = this.mDataSource.addAll(list);
        if (addAll) {
            updateAdapter();
        }
        return addAll;
    }

    public boolean deleteConversations(List<ConversationInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mDataSource.size(); i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                } else if (((ConversationInfo) this.mDataSource.get(i)).getId().equals(((ConversationInfo) list.get(i2)).getId())) {
                    arrayList.add(Integer.valueOf(i));
                    list.remove(i2);
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (arrayList.size() <= 0) {
            return false;
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.mDataSource.remove(arrayList.get(i3));
        }
        updateAdapter();
        return true;
    }

    public void deleteConversation(int i) {
        if (this.mDataSource.remove(i) != null) {
            updateAdapter();
        }
    }

    public void deleteConversation(String str) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            if (((ConversationInfo) this.mDataSource.get(i)).getId().equals(str)) {
                if (this.mDataSource.remove(i) != null) {
                    updateAdapter();
                }
                return;
            }
        }
    }

    public boolean updateConversations(List<ConversationInfo> list) {
        boolean z = false;
        for (int i = 0; i < this.mDataSource.size(); i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                ConversationInfo conversationInfo = (ConversationInfo) list.get(i2);
                if (((ConversationInfo) this.mDataSource.get(i)).getId().equals(conversationInfo.getId())) {
                    this.mDataSource.remove(i);
                    this.mDataSource.add(i, conversationInfo);
                    list.remove(i2);
                    z = true;
                    break;
                }
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        updateAdapter();
        return true;
    }

    public void clear() {
        this.mDataSource.clear();
        updateAdapter();
    }
}
