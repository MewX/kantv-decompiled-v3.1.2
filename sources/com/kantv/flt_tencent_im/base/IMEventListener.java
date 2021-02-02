package com.kantv.flt_tencent_im.base;

import com.kantv.flt_tencent_im.utils.TUIKitLog;
import com.tencent.imsdk.TIMConversation;
import com.tencent.imsdk.TIMGroupTipsElem;
import com.tencent.imsdk.TIMMessage;
import java.util.List;

public abstract class IMEventListener {
    private static final String TAG = "IMEventListener";

    public void onForceOffline() {
        TUIKitLog.d(TAG, "recv onForceOffline");
    }

    public void onUserSigExpired() {
        TUIKitLog.d(TAG, "recv onUserSigExpired");
    }

    public void onConnected() {
        TUIKitLog.d(TAG, "recv onConnected");
    }

    public void onDisconnected(int i, String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("recv onDisconnected, code ");
        sb.append(i);
        sb.append("|desc ");
        sb.append(str);
        TUIKitLog.d(str2, sb.toString());
    }

    public void onWifiNeedAuth(String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("recv onWifiNeedAuth, wifi name ");
        sb.append(str);
        TUIKitLog.d(str2, sb.toString());
    }

    public void onRefreshConversation(List<TIMConversation> list) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("recv onRefreshConversation, size ");
        sb.append(list != null ? list.size() : 0);
        TUIKitLog.d(str, sb.toString());
    }

    public void onNewMessages(List<TIMMessage> list) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("recv onNewMessages, size ");
        sb.append(list != null ? list.size() : 0);
        TUIKitLog.d(str, sb.toString());
    }

    public void onGroupTipsEvent(TIMGroupTipsElem tIMGroupTipsElem) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("recv onGroupTipsEvent, groupid: ");
        sb.append(tIMGroupTipsElem.getGroupId());
        sb.append("|type: ");
        sb.append(tIMGroupTipsElem.getTipsType());
        TUIKitLog.d(str, sb.toString());
    }
}
