package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.AVIMEventHandler;
import com.avos.avoscloud.LogUtil.avlog;

public abstract class AVIMClientEventHandler extends AVIMEventHandler {
    public abstract void onClientOffline(AVIMClient aVIMClient, int i);

    public abstract void onConnectionPaused(AVIMClient aVIMClient);

    public abstract void onConnectionResume(AVIMClient aVIMClient);

    /* access modifiers changed from: protected */
    public final void processEvent0(int i, Object obj, Object obj2, Object obj3) {
        switch (i) {
            case Conversation.STATUS_ON_CONNECTION_PAUSED /*50006*/:
                onConnectionPaused((AVIMClient) obj3);
                return;
            case Conversation.STATUS_ON_CONNECTION_RESUMED /*50007*/:
                onConnectionResume((AVIMClient) obj3);
                return;
            case Conversation.STATUS_ON_CLIENT_OFFLINE /*50010*/:
                AVIMClient aVIMClient = (AVIMClient) obj3;
                onClientOffline(aVIMClient, ((Integer) obj2).intValue());
                aVIMClient.close();
                return;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Not supported operation:");
                sb.append(obj2);
                avlog.d(sb.toString());
                return;
        }
    }
}
