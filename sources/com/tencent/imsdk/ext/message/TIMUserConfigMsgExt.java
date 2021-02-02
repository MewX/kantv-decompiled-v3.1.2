package com.tencent.imsdk.ext.message;

import androidx.annotation.NonNull;
import com.tencent.imsdk.TIMUserConfig;
import com.tencent.imsdk.conversation.ConversationManager;

@Deprecated
public class TIMUserConfigMsgExt extends TIMUserConfig {
    public TIMUserConfigMsgExt(@NonNull TIMUserConfig tIMUserConfig) {
        super(tIMUserConfig);
    }

    @Deprecated
    public boolean isAutoReportEnabled() {
        return this.isAutoReportEnabled;
    }

    @Deprecated
    public TIMUserConfigMsgExt enableAutoReport(boolean z) {
        this.isAutoReportEnabled = z;
        return this;
    }

    @Deprecated
    public boolean isReadReceiptEnabled() {
        return this.isReadReceiptEnabled;
    }

    @Deprecated
    public TIMUserConfigMsgExt enableReadReceipt(boolean z) {
        this.isReadReceiptEnabled = z;
        return this;
    }

    @Deprecated
    public TIMMessageReceiptListener getMessageReceiptListener() {
        return ConversationManager.getInstance().getReceiptListener();
    }

    @Deprecated
    public TIMUserConfigMsgExt setMessageReceiptListener(TIMMessageReceiptListener tIMMessageReceiptListener) {
        ConversationManager.getInstance().setMessageReceiptListener(tIMMessageReceiptListener);
        return this;
    }

    @Deprecated
    public TIMUserConfigMsgExt setMessageRevokedListener(@NonNull TIMMessageRevokedListener tIMMessageRevokedListener) {
        ConversationManager.getInstance().setMessageRevokedListener(tIMMessageRevokedListener);
        return this;
    }

    @Deprecated
    public TIMMessageRevokedListener getMessageRevokedListener() {
        return ConversationManager.getInstance().getRevokedListener();
    }
}
