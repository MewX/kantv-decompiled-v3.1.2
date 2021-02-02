package com.kantv.flt_tencent_im.modules.message;

import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.ext.message.TIMMessageRevokedListener;
import java.util.ArrayList;
import java.util.List;

public class MessageRevokedManager implements TIMMessageRevokedListener {
    private static final MessageRevokedManager instance = new MessageRevokedManager();
    private List<MessageRevokeHandler> mHandlers = new ArrayList();

    public interface MessageRevokeHandler {
        void handleInvoke(TIMMessageLocator tIMMessageLocator);
    }

    private MessageRevokedManager() {
    }

    public static MessageRevokedManager getInstance() {
        return instance;
    }

    public void onMessageRevoked(TIMMessageLocator tIMMessageLocator) {
        for (int i = 0; i < this.mHandlers.size(); i++) {
            ((MessageRevokeHandler) this.mHandlers.get(i)).handleInvoke(tIMMessageLocator);
        }
    }

    public void addHandler(MessageRevokeHandler messageRevokeHandler) {
        if (!this.mHandlers.contains(messageRevokeHandler)) {
            this.mHandlers.add(messageRevokeHandler);
        }
    }

    public void removeHandler(MessageRevokeHandler messageRevokeHandler) {
        this.mHandlers.remove(messageRevokeHandler);
    }
}
