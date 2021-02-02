package com.kantv.flt_tencent_im.modules.chat.base;

import android.text.TextUtils;
import com.kantv.flt_tencent_im.base.IUIKitCallBack;
import com.kantv.flt_tencent_im.modules.conversation.ConversationManagerKit;
import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import com.kantv.flt_tencent_im.modules.message.MessageInfoUtil;
import com.kantv.flt_tencent_im.modules.message.MessageRevokedManager;
import com.kantv.flt_tencent_im.modules.message.MessageRevokedManager.MessageRevokeHandler;
import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.kantv.flt_tencent_im.utils.ToastUtil;
import com.tencent.imsdk.TIMCallBack;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMElem;
import com.tencent.imsdk.TIMElemType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.TIMMessage;
import com.tencent.imsdk.TIMMessageListener;
import com.tencent.imsdk.TIMSNSSystemElem;
import com.tencent.imsdk.TIMValueCallBack;
import com.tencent.imsdk.ext.message.TIMMessageLocator;
import com.tencent.imsdk.ext.message.TIMMessageReceipt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class ChatManagerKit implements TIMMessageListener, MessageRevokeHandler {
    protected static final int MSG_PAGE_COUNT = 20;
    protected static final int REVOKE_TIME_OUT = 6223;
    /* access modifiers changed from: private */
    public static final String TAG = "ChatManagerKit";
    protected TIMConversation mCurrentConversation;
    protected ChatProvider mCurrentProvider;
    /* access modifiers changed from: private */
    public boolean mIsLoading;
    protected boolean mIsMore;

    /* access modifiers changed from: protected */
    public void addGroupMessage(MessageInfo messageInfo) {
    }

    /* access modifiers changed from: protected */
    public void assembleGroupMessage(MessageInfo messageInfo) {
    }

    public abstract ChatInfo getCurrentChatInfo();

    /* access modifiers changed from: protected */
    public abstract boolean isGroup();

    /* access modifiers changed from: protected */
    public void init() {
        destroyChat();
        TIMManager.getInstance().addMessageListener(this);
        MessageRevokedManager.getInstance().addHandler(this);
    }

    public void destroyChat() {
        this.mCurrentConversation = null;
        this.mCurrentProvider = null;
    }

    public void setCurrentChatInfo(ChatInfo chatInfo) {
        if (chatInfo != null) {
            this.mCurrentConversation = TIMManager.getInstance().getConversation(chatInfo.getType(), chatInfo.getId());
            this.mCurrentProvider = new ChatProvider();
            this.mIsMore = true;
            this.mIsLoading = false;
        }
    }

    public void onReadReport(List<TIMMessageReceipt> list) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onReadReport:");
        sb.append(list);
        TUIKitLog.i(str, sb.toString());
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
        } else if (list.size() != 0) {
            TIMMessageReceipt tIMMessageReceipt = (TIMMessageReceipt) list.get(0);
            for (TIMMessageReceipt tIMMessageReceipt2 : list) {
                if (TextUtils.equals(tIMMessageReceipt2.getConversation().getPeer(), this.mCurrentConversation.getPeer()) && tIMMessageReceipt2.getConversation().getType() != TIMConversationType.Group && tIMMessageReceipt.getTimestamp() < tIMMessageReceipt2.getTimestamp()) {
                    tIMMessageReceipt = tIMMessageReceipt2;
                }
            }
            this.mCurrentProvider.updateReadMessage(tIMMessageReceipt);
        }
    }

    public boolean onNewMessages(List<TIMMessage> list) {
        if (list != null && list.size() > 0) {
            for (TIMMessage tIMMessage : list) {
                TIMConversation conversation = tIMMessage.getConversation();
                TIMConversationType type = conversation.getType();
                if (type == TIMConversationType.C2C) {
                    if (MessageInfoUtil.isTyping(tIMMessage)) {
                        notifyTyping();
                    } else {
                        onReceiveMessage(conversation, tIMMessage);
                    }
                    String str = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onNewMessages() C2C msg = ");
                    sb.append(tIMMessage);
                    TUIKitLog.i(str, sb.toString());
                } else if (type == TIMConversationType.Group) {
                    onReceiveMessage(conversation, tIMMessage);
                    String str2 = TAG;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onNewMessages() Group msg = ");
                    sb2.append(tIMMessage);
                    TUIKitLog.i(str2, sb2.toString());
                } else if (type == TIMConversationType.System) {
                    onReceiveSystemMessage(tIMMessage);
                    String str3 = TAG;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("onReceiveSystemMessage() msg = ");
                    sb3.append(tIMMessage);
                    TUIKitLog.i(str3, sb3.toString());
                }
            }
        }
        return false;
    }

    private void notifyTyping() {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
        } else {
            this.mCurrentProvider.notifyTyping();
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveSystemMessage(TIMMessage tIMMessage) {
        TIMElem element = tIMMessage.getElement(0);
        TIMElemType type = element.getType();
        if (type == TIMElemType.ProfileTips) {
            TUIKitLog.i(TAG, "onReceiveSystemMessage eleType is ProfileTips, ignore");
        }
        if (type == TIMElemType.SNSTips) {
            TUIKitLog.i(TAG, "onReceiveSystemMessage eleType is SNSTips");
            TIMSNSSystemElem tIMSNSSystemElem = (TIMSNSSystemElem) element;
            if (tIMSNSSystemElem.getRequestAddFriendUserList().size() > 0) {
                ToastUtil.toastLongMessage("好友申请通过");
            }
            if (tIMSNSSystemElem.getDelFriendAddPendencyList().size() > 0) {
                ToastUtil.toastLongMessage("好友申请被拒绝");
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveMessage(TIMConversation tIMConversation, TIMMessage tIMMessage) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
            return;
        }
        if (!(tIMConversation == null || tIMConversation.getPeer() == null)) {
            addMessage(tIMConversation, tIMMessage);
        }
    }

    /* access modifiers changed from: protected */
    public void addMessage(TIMConversation tIMConversation, TIMMessage tIMMessage) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
            return;
        }
        List<MessageInfo> TIMMessage2MessageInfo = MessageInfoUtil.TIMMessage2MessageInfo(tIMMessage, isGroup());
        if (!(TIMMessage2MessageInfo == null || TIMMessage2MessageInfo.size() == 0 || !this.mCurrentConversation.getPeer().equals(tIMConversation.getPeer()))) {
            this.mCurrentProvider.addMessageInfoList(TIMMessage2MessageInfo);
            for (MessageInfo messageInfo : TIMMessage2MessageInfo) {
                messageInfo.setRead(true);
                addGroupMessage(messageInfo);
            }
            this.mCurrentConversation.setReadMessage(tIMMessage, new TIMCallBack() {
                public void onError(int i, String str) {
                    String access$000 = ChatManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("addMessage() setReadMessage failed, code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess() {
                    TUIKitLog.d(ChatManagerKit.TAG, "addMessage() setReadMessage success");
                }
            });
        }
    }

    public void deleteMessage(int i, MessageInfo messageInfo) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
            return;
        }
        if (messageInfo.remove()) {
            this.mCurrentProvider.remove(i);
        }
    }

    public void revokeMessage(int i, final MessageInfo messageInfo) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
        } else {
            this.mCurrentConversation.revokeMessage(messageInfo.getTIMMessage(), new TIMCallBack() {
                public void onError(int i, String str) {
                    if (i == 6223) {
                        ToastUtil.toastLongMessage("消息发送已超过2分钟");
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("撤回失败:");
                    sb.append(i);
                    sb.append("=");
                    sb.append(str);
                    ToastUtil.toastLongMessage(sb.toString());
                }

                public void onSuccess() {
                    if (!ChatManagerKit.this.safetyCall()) {
                        TUIKitLog.w(ChatManagerKit.TAG, "unSafetyCall");
                        return;
                    }
                    ChatManagerKit.this.mCurrentProvider.updateMessageRevoked(messageInfo.getId());
                    ConversationManagerKit.getInstance().loadConversation(null);
                }
            });
        }
    }

    public void sendMessage(final MessageInfo messageInfo, boolean z, final IUIKitCallBack iUIKitCallBack) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
            return;
        }
        if (!(messageInfo == null || messageInfo.getStatus() == 1)) {
            messageInfo.setSelf(true);
            messageInfo.setRead(true);
            assembleGroupMessage(messageInfo);
            if (messageInfo.getMsgType() < 256) {
                messageInfo.setStatus(1);
                if (z) {
                    this.mCurrentProvider.resendMessageInfo(messageInfo);
                } else {
                    this.mCurrentProvider.addMessageInfo(messageInfo);
                }
            }
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("sendMessage:");
            sb.append(messageInfo.getTIMMessage());
            TUIKitLog.i(str, sb.toString());
            this.mCurrentConversation.sendMessage(messageInfo.getTIMMessage(), new TIMValueCallBack<TIMMessage>() {
                public void onError(int i, String str) {
                    String access$000 = ChatManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("sendMessage fail:");
                    sb.append(i);
                    sb.append("=");
                    sb.append(str);
                    TUIKitLog.i(access$000, sb.toString());
                    if (!ChatManagerKit.this.safetyCall()) {
                        TUIKitLog.w(ChatManagerKit.TAG, "unSafetyCall");
                        return;
                    }
                    IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                    if (iUIKitCallBack != null) {
                        iUIKitCallBack.onError(ChatManagerKit.TAG, i, str);
                    }
                    messageInfo.setStatus(3);
                    ChatManagerKit.this.mCurrentProvider.updateMessageInfo(messageInfo);
                }

                public void onSuccess(TIMMessage tIMMessage) {
                    TUIKitLog.i(ChatManagerKit.TAG, "sendMessage onSuccess");
                    if (!ChatManagerKit.this.safetyCall()) {
                        TUIKitLog.w(ChatManagerKit.TAG, "unSafetyCall");
                        return;
                    }
                    IUIKitCallBack iUIKitCallBack = iUIKitCallBack;
                    if (iUIKitCallBack != null) {
                        iUIKitCallBack.onSuccess(ChatManagerKit.this.mCurrentProvider);
                    }
                    messageInfo.setStatus(2);
                    messageInfo.setId(tIMMessage.getMsgId());
                    ChatManagerKit.this.mCurrentProvider.updateMessageInfo(messageInfo);
                }
            });
        }
    }

    public void loadLocalChatMessages(MessageInfo messageInfo, final IUIKitCallBack iUIKitCallBack) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
        } else if (!this.mIsLoading) {
            this.mIsLoading = true;
            TIMMessage tIMMessage = null;
            if (!this.mIsMore) {
                this.mCurrentProvider.addMessageInfo(null);
                iUIKitCallBack.onSuccess(null);
                this.mIsLoading = false;
                return;
            }
            if (messageInfo == null) {
                this.mCurrentProvider.clear();
            } else {
                tIMMessage = messageInfo.getTIMMessage();
            }
            final int unreadMessageNum = (int) this.mCurrentConversation.getUnreadMessageNum();
            TIMConversation tIMConversation = this.mCurrentConversation;
            int i = 20;
            if (unreadMessageNum > 20) {
                i = unreadMessageNum;
            }
            tIMConversation.getLocalMessage(i, tIMMessage, new TIMValueCallBack<List<TIMMessage>>() {
                public void onError(int i, String str) {
                    ChatManagerKit.this.mIsLoading = false;
                    iUIKitCallBack.onError(ChatManagerKit.TAG, i, str);
                    String access$000 = ChatManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("loadChatMessages() getMessage failed, code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess(List<TIMMessage> list) {
                    ChatManagerKit.this.mIsLoading = false;
                    if (!ChatManagerKit.this.safetyCall()) {
                        TUIKitLog.w(ChatManagerKit.TAG, "unSafetyCall");
                        return;
                    }
                    if (unreadMessageNum > 0) {
                        ChatManagerKit.this.mCurrentConversation.setReadMessage(null, new TIMCallBack() {
                            public void onError(int i, String str) {
                                String access$000 = ChatManagerKit.TAG;
                                StringBuilder sb = new StringBuilder();
                                sb.append("loadChatMessages() setReadMessage failed, code = ");
                                sb.append(i);
                                sb.append(", desc = ");
                                sb.append(str);
                                TUIKitLog.e(access$000, sb.toString());
                            }

                            public void onSuccess() {
                                TUIKitLog.d(ChatManagerKit.TAG, "loadChatMessages() setReadMessage success");
                            }
                        });
                    }
                    if (list.size() < 20) {
                        ChatManagerKit.this.mIsMore = false;
                    }
                    ArrayList arrayList = new ArrayList(list);
                    Collections.reverse(arrayList);
                    List TIMMessages2MessageInfos = MessageInfoUtil.TIMMessages2MessageInfos(arrayList, ChatManagerKit.this.isGroup());
                    ChatManagerKit.this.mCurrentProvider.addMessageList(TIMMessages2MessageInfos, true);
                    for (int i = 0; i < TIMMessages2MessageInfos.size(); i++) {
                        MessageInfo messageInfo = (MessageInfo) TIMMessages2MessageInfos.get(i);
                        if (messageInfo.getStatus() == 1) {
                            ChatManagerKit.this.sendMessage(messageInfo, true, null);
                        }
                    }
                    iUIKitCallBack.onSuccess(ChatManagerKit.this.mCurrentProvider);
                }
            });
        }
    }

    public void loadChatMessages(MessageInfo messageInfo, final IUIKitCallBack iUIKitCallBack) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
        } else if (!this.mIsLoading) {
            this.mIsLoading = true;
            TIMMessage tIMMessage = null;
            if (!this.mIsMore) {
                this.mCurrentProvider.addMessageInfo(null);
                iUIKitCallBack.onSuccess(null);
                this.mIsLoading = false;
                return;
            }
            if (messageInfo == null) {
                this.mCurrentProvider.clear();
            } else {
                tIMMessage = messageInfo.getTIMMessage();
            }
            final int unreadMessageNum = (int) this.mCurrentConversation.getUnreadMessageNum();
            TIMConversation tIMConversation = this.mCurrentConversation;
            int i = 20;
            if (unreadMessageNum > 20) {
                i = unreadMessageNum;
            }
            tIMConversation.getMessage(i, tIMMessage, new TIMValueCallBack<List<TIMMessage>>() {
                public void onError(int i, String str) {
                    ChatManagerKit.this.mIsLoading = false;
                    ChatManagerKit.this.mCurrentProvider.addMessageList(new ArrayList(), true);
                    iUIKitCallBack.onError(ChatManagerKit.TAG, i, str);
                    String access$000 = ChatManagerKit.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("loadChatMessages() getMessage failed, code = ");
                    sb.append(i);
                    sb.append(", desc = ");
                    sb.append(str);
                    TUIKitLog.e(access$000, sb.toString());
                }

                public void onSuccess(List<TIMMessage> list) {
                    ChatManagerKit.this.mIsLoading = false;
                    if (!ChatManagerKit.this.safetyCall()) {
                        TUIKitLog.w(ChatManagerKit.TAG, "unSafetyCall");
                        return;
                    }
                    if (unreadMessageNum > 0) {
                        ChatManagerKit.this.mCurrentConversation.setReadMessage(null, new TIMCallBack() {
                            public void onError(int i, String str) {
                                String access$000 = ChatManagerKit.TAG;
                                StringBuilder sb = new StringBuilder();
                                sb.append("loadChatMessages() setReadMessage failed, code = ");
                                sb.append(i);
                                sb.append(", desc = ");
                                sb.append(str);
                                TUIKitLog.e(access$000, sb.toString());
                            }

                            public void onSuccess() {
                                TUIKitLog.d(ChatManagerKit.TAG, "loadChatMessages() setReadMessage success");
                            }
                        });
                    }
                    if (list.size() < 20) {
                        ChatManagerKit.this.mIsMore = false;
                    }
                    ArrayList arrayList = new ArrayList(list);
                    Collections.reverse(arrayList);
                    List TIMMessages2MessageInfos = MessageInfoUtil.TIMMessages2MessageInfos(arrayList, ChatManagerKit.this.isGroup());
                    ChatManagerKit.this.mCurrentProvider.addMessageList(TIMMessages2MessageInfos, true);
                    for (int i = 0; i < TIMMessages2MessageInfos.size(); i++) {
                        MessageInfo messageInfo = (MessageInfo) TIMMessages2MessageInfos.get(i);
                        if (messageInfo.getStatus() == 1) {
                            ChatManagerKit.this.sendMessage(messageInfo, true, null);
                        }
                    }
                    iUIKitCallBack.onSuccess(ChatManagerKit.this.mCurrentProvider);
                }
            });
        }
    }

    public void handleInvoke(TIMMessageLocator tIMMessageLocator) {
        if (!safetyCall()) {
            TUIKitLog.w(TAG, "unSafetyCall");
            return;
        }
        if (tIMMessageLocator.getConversationId().equals(getCurrentChatInfo().getId())) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("handleInvoke locator = ");
            sb.append(tIMMessageLocator);
            TUIKitLog.i(str, sb.toString());
            this.mCurrentProvider.updateMessageRevoked(tIMMessageLocator);
        }
    }

    /* access modifiers changed from: protected */
    public boolean safetyCall() {
        return (this.mCurrentConversation == null || this.mCurrentProvider == null || getCurrentChatInfo() == null) ? false : true;
    }
}
