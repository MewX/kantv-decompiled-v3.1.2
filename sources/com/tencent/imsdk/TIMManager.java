package com.tencent.imsdk;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.imsdk.conversation.ConversationManager;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.manager.BaseManager;
import java.util.List;

public class TIMManager {
    private static final String TAG = "TIMManager";
    private static BaseManager mBase;
    private static TIMManager mInstance = new TIMManager();
    private ConversationManager mConversationManager = ConversationManager.getInstance();

    private TIMManager() {
        mBase = BaseManager.getInstance();
    }

    public static TIMManager getInstance() {
        return mInstance;
    }

    public boolean init(Context context, TIMSdkConfig tIMSdkConfig) {
        return mBase.init(context, tIMSdkConfig);
    }

    public boolean unInit() {
        return mBase.unInit();
    }

    public TIMSdkConfig getSdkConfig() {
        return mBase.getmSdkConfig();
    }

    public void setUserConfig(TIMUserConfig tIMUserConfig) {
        StringBuilder sb = new StringBuilder();
        sb.append("setUserConfig: userConfig=");
        sb.append(tIMUserConfig);
        QLog.i(TAG, sb.toString());
        mBase.setUserConfig(tIMUserConfig);
    }

    public TIMUserConfig getUserConfig() {
        return mBase.getUserConfig();
    }

    public void addMessageListener(TIMMessageListener tIMMessageListener) {
        this.mConversationManager.addMessageListener(tIMMessageListener);
    }

    public void removeMessageListener(TIMMessageListener tIMMessageListener) {
        this.mConversationManager.removeMessageListener(tIMMessageListener);
    }

    public boolean isInited() {
        return mBase.isInited();
    }

    public void login(String str, String str2, TIMCallBack tIMCallBack) {
        StringBuilder sb = new StringBuilder();
        sb.append("login : userID = ");
        sb.append(str);
        String sb2 = sb.toString();
        String str3 = TAG;
        QLog.i(str3, sb2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            QLog.e(str3, "userSig is empty");
            tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, "userID or userSig is empty");
            return;
        }
        mBase.login(str, str2, tIMCallBack);
    }

    public void autoLogin(String str, TIMCallBack tIMCallBack) {
        StringBuilder sb = new StringBuilder();
        sb.append("autoLogin : userID = ");
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        QLog.i(str2, sb2);
        if (TextUtils.isEmpty(str)) {
            String str3 = "userID is empty";
            QLog.e(str2, str3);
            tIMCallBack.onError(BaseConstants.ERR_INVALID_PARAMETERS, str3);
            return;
        }
        mBase.login(str, "", tIMCallBack);
    }

    public void logout(TIMCallBack tIMCallBack) {
        StringBuilder sb = new StringBuilder();
        sb.append("logout: userID=");
        sb.append(getLoginUser());
        QLog.i(TAG, sb.toString());
        mBase.logout(tIMCallBack);
    }

    public String getLoginUser() {
        return mBase.getLoginUser();
    }

    public List<TIMConversation> getConversationList() {
        return this.mConversationManager.getConversationList();
    }

    public TIMConversation getConversation(TIMConversationType tIMConversationType, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("getConversation: type = ");
        sb.append(tIMConversationType.ordinal());
        sb.append(", conversationId = ");
        sb.append(str);
        QLog.i(TAG, sb.toString());
        return this.mConversationManager.getConversation(tIMConversationType, str);
    }

    public boolean deleteConversation(TIMConversationType tIMConversationType, String str) {
        this.mConversationManager.deleteConversation(tIMConversationType, str);
        return true;
    }

    public boolean deleteConversationAndLocalMsgs(TIMConversationType tIMConversationType, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("deleteConversationAndLocalMsgs: type = ");
        sb.append(tIMConversationType.ordinal());
        sb.append(", conversationId = ");
        sb.append(str);
        QLog.i(TAG, sb.toString());
        this.mConversationManager.deleteConversationAndLocalMsgs(tIMConversationType, str);
        return true;
    }

    public void setOfflinePushToken(TIMOfflinePushToken tIMOfflinePushToken, TIMCallBack tIMCallBack) {
        mBase.setToken(tIMOfflinePushToken, tIMCallBack);
    }

    public void setOfflinePushSettings(TIMOfflinePushSettings tIMOfflinePushSettings) {
        StringBuilder sb = new StringBuilder();
        sb.append("setOfflinePushSettings: settings enable = ");
        sb.append(tIMOfflinePushSettings.isEnabled());
        sb.append(", c2c remind sound = ");
        sb.append(tIMOfflinePushSettings.getC2cMsgRemindSound());
        sb.append("group msg remind sound = ");
        sb.append(tIMOfflinePushSettings.getGroupMsgRemindSound());
        sb.append(", video sound = ");
        sb.append(tIMOfflinePushSettings.getVideoSound());
        QLog.i(TAG, sb.toString());
        mBase.setOfflinePushConfig(tIMOfflinePushSettings);
    }

    public void getOfflinePushSettings(TIMValueCallBack<TIMOfflinePushSettings> tIMValueCallBack) {
        mBase.getOfflinePushConfig(tIMValueCallBack);
    }

    @Deprecated
    public void setOfflinePushListener(TIMOfflinePushListener tIMOfflinePushListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("setOfflinePushListener: ");
        sb.append(tIMOfflinePushListener);
        QLog.i(TAG, sb.toString());
        this.mConversationManager.setOfflinePushListener(tIMOfflinePushListener);
    }

    public void doBackground(TIMBackgroundParam tIMBackgroundParam, TIMCallBack tIMCallBack) {
        StringBuilder sb = new StringBuilder();
        sb.append("doBackground called, c2cUnread = ");
        sb.append(tIMBackgroundParam.getC2cUnread());
        sb.append(", groupUnread = ");
        sb.append(tIMBackgroundParam.getGroupUnread());
        QLog.i(TAG, sb.toString());
        mBase.doBackground(tIMBackgroundParam, tIMCallBack);
    }

    public void doForeground(TIMCallBack tIMCallBack) {
        QLog.i(TAG, "doForeground called");
        mBase.doForeground(tIMCallBack);
    }

    public int initStorage(@NonNull String str, @NonNull TIMCallBack tIMCallBack) {
        return mBase.initStorage(str, tIMCallBack);
    }

    public String getVersion() {
        return BaseManager.getInstance().getVersion();
    }

    public void addMessageUpdateListener(TIMMessageUpdateListener tIMMessageUpdateListener) {
        this.mConversationManager.addMessageUpdateListener(tIMMessageUpdateListener);
    }

    public void removeMessageUpdateListener(TIMMessageUpdateListener tIMMessageUpdateListener) {
        this.mConversationManager.removeMessageUpdateListener(tIMMessageUpdateListener);
    }

    public TIMNetworkStatus getNetworkStatus() {
        return mBase.getNetworkStatus();
    }

    public long getServerTimeDiff() {
        return mBase.getServerTimeDiff();
    }
}
