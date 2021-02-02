package com.kantv.flt_tencent_im.modules.chat.base;

import android.text.TextUtils;
import com.kantv.flt_tencent_im.modules.chat.interfaces.IChatProvider;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.ext.message.TIMMessageReceipt;
import java.util.ArrayList;
import java.util.List;

public class ChatProvider implements IChatProvider {
    private ArrayList<MessageInfo> mDataSource = new ArrayList<>();
    private TypingListener mTypingListener;

    public interface TypingListener {
        void onTyping();
    }

    private void updateAdapter(int i, int i2) {
    }

    public boolean updateMessageList(List<MessageInfo> list) {
        return false;
    }

    public List<MessageInfo> getDataSource() {
        return this.mDataSource;
    }

    public boolean addMessageList(List<MessageInfo> list, boolean z) {
        if (z) {
            boolean addAll = this.mDataSource.addAll(0, list);
            updateAdapter(2, list.size());
            return addAll;
        }
        boolean addAll2 = this.mDataSource.addAll(list);
        updateAdapter(3, list.size());
        return addAll2;
    }

    private boolean checkExist(MessageInfo messageInfo) {
        if (messageInfo != null) {
            String id = messageInfo.getId();
            for (int size = this.mDataSource.size() - 1; size >= 0; size--) {
                if (((MessageInfo) this.mDataSource.get(size)).getId().equals(id) && ((MessageInfo) this.mDataSource.get(size)).getUniqueId() == messageInfo.getUniqueId() && TextUtils.equals(((MessageInfo) this.mDataSource.get(size)).getExtra().toString(), messageInfo.getExtra().toString())) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean deleteMessageList(List<MessageInfo> list) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                } else if (((MessageInfo) this.mDataSource.get(i)).getId().equals(((MessageInfo) list.get(i2)).getId())) {
                    this.mDataSource.remove(i);
                    updateAdapter(5, i);
                    break;
                } else {
                    i2++;
                }
            }
        }
        return false;
    }

    public boolean addMessageInfoList(List<MessageInfo> list) {
        if (list == null || list.size() == 0) {
            updateAdapter(1, 0);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        for (MessageInfo messageInfo : list) {
            if (!checkExist(messageInfo)) {
                arrayList.add(messageInfo);
            }
        }
        boolean addAll = this.mDataSource.addAll(arrayList);
        updateAdapter(3, arrayList.size());
        return addAll;
    }

    public boolean addMessageInfo(MessageInfo messageInfo) {
        if (messageInfo == null) {
            updateAdapter(1, 0);
            return true;
        } else if (checkExist(messageInfo)) {
            return true;
        } else {
            boolean add = this.mDataSource.add(messageInfo);
            updateAdapter(3, 1);
            return add;
        }
    }

    public boolean deleteMessageInfo(MessageInfo messageInfo) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            if (((MessageInfo) this.mDataSource.get(i)).getId().equals(messageInfo.getId())) {
                this.mDataSource.remove(i);
                updateAdapter(5, -1);
                return true;
            }
        }
        return false;
    }

    public boolean resendMessageInfo(MessageInfo messageInfo) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.mDataSource.size()) {
                z = false;
                break;
            } else if (((MessageInfo) this.mDataSource.get(i)).getId().equals(messageInfo.getId())) {
                this.mDataSource.remove(i);
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            return false;
        }
        return addMessageInfo(messageInfo);
    }

    public boolean updateMessageInfo(MessageInfo messageInfo) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            if (((MessageInfo) this.mDataSource.get(i)).getId().equals(messageInfo.getId())) {
                this.mDataSource.remove(i);
                this.mDataSource.add(i, messageInfo);
                updateAdapter(4, i);
                return true;
            }
        }
        return false;
    }

    public boolean updateMessageRevoked(TIMMessageLocator tIMMessageLocator) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            MessageInfo messageInfo = (MessageInfo) this.mDataSource.get(i);
            if (messageInfo.checkEquals(tIMMessageLocator)) {
                messageInfo.setMsgType(275);
                messageInfo.setStatus(275);
                updateAdapter(4, i);
            }
        }
        return false;
    }

    public boolean updateMessageRevoked(String str) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            MessageInfo messageInfo = (MessageInfo) this.mDataSource.get(i);
            if (messageInfo.getId().equals(str)) {
                messageInfo.setMsgType(275);
                messageInfo.setStatus(275);
                updateAdapter(4, i);
            }
        }
        return false;
    }

    public void updateReadMessage(TIMMessageReceipt tIMMessageReceipt) {
        for (int i = 0; i < this.mDataSource.size(); i++) {
            MessageInfo messageInfo = (MessageInfo) this.mDataSource.get(i);
            if (messageInfo.getMsgTime() > tIMMessageReceipt.getTimestamp()) {
                messageInfo.setPeerRead(false);
            } else {
                messageInfo.setPeerRead(true);
                updateAdapter(4, i);
            }
        }
    }

    public void notifyTyping() {
        TypingListener typingListener = this.mTypingListener;
        if (typingListener != null) {
            typingListener.onTyping();
        }
    }

    public void setTypingListener(TypingListener typingListener) {
        this.mTypingListener = typingListener;
    }

    public void remove(int i) {
        this.mDataSource.remove(i);
        updateAdapter(5, i);
    }

    public void clear() {
        this.mDataSource.clear();
        updateAdapter(1, 0);
    }
}
