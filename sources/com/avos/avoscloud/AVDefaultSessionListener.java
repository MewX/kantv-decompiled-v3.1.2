package com.avos.avoscloud;

import android.content.Context;
import android.os.Bundle;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.im.v2.AVIMClient;
import com.avos.avoscloud.im.v2.AVIMClientEventHandler;
import com.avos.avoscloud.im.v2.AVIMMessageManagerHelper;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import java.util.ArrayList;
import java.util.List;

public class AVDefaultSessionListener extends AVSessionListener {
    AVPushConnectionManager manager;

    public AVDefaultSessionListener(AVPushConnectionManager aVPushConnectionManager) {
        this.manager = aVPushConnectionManager;
    }

    public void onSessionOpen(Context context, AVSession aVSession, int i) {
        AVSessionCacheHelper.getTagCacheInstance().addSession(aVSession.getSelfPeerId(), aVSession.tag);
        if (i > -65537) {
            BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), null, i, AVIMOperation.CLIENT_OPEN);
        }
    }

    public void onSessionPaused(Context context, AVSession aVSession) {
        AVIMClientEventHandler clientEventHandler = AVIMMessageManagerHelper.getClientEventHandler();
        if (clientEventHandler != null) {
            clientEventHandler.processEvent(Conversation.STATUS_ON_CONNECTION_PAUSED, null, null, AVIMClient.getInstance(aVSession.getSelfPeerId()));
        }
    }

    public void onSessionTokenRenewed(Context context, AVSession aVSession, int i) {
        if (i > -65537) {
            BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), null, i, AVIMOperation.CLIENT_REFRESH_TOKEN);
        }
    }

    public void onSessionResumed(Context context, AVSession aVSession) {
        AVIMClientEventHandler clientEventHandler = AVIMMessageManagerHelper.getClientEventHandler();
        if (clientEventHandler != null) {
            clientEventHandler.processEvent(Conversation.STATUS_ON_CONNECTION_RESUMED, null, null, AVIMClient.getInstance(aVSession.getSelfPeerId()));
        }
    }

    public void onSessionClosedFromServer(Context context, AVSession aVSession, int i) {
        cleanSession(aVSession);
        AVIMClientEventHandler clientEventHandler = AVIMMessageManagerHelper.getClientEventHandler();
        if (clientEventHandler != null) {
            clientEventHandler.processEvent(Conversation.STATUS_ON_CLIENT_OFFLINE, null, Integer.valueOf(i), AVIMClient.getInstance(aVSession.getSelfPeerId()));
        }
    }

    public void onError(Context context, AVSession aVSession, Throwable th, int i, int i2) {
        if (AVOSCloud.isDebugLogEnabled() || AVOSCloud.showInternalDebugLog()) {
            StringBuilder sb = new StringBuilder();
            sb.append("session error:");
            sb.append(th);
            log.e(sb.toString());
        }
        if (i2 > -65537) {
            if (i == 10004) {
                BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), (String) null, i2, th, AVIMOperation.CLIENT_OPEN);
            } else if (i == 10005) {
                BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), (String) null, i2, th, AVIMOperation.CLIENT_DISCONNECT);
            }
            if (i == AVIMOperation.CONVERSATION_CREATION.getCode()) {
                BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), (String) null, i2, th, AVIMOperation.CONVERSATION_CREATION);
            }
        }
    }

    public void onSessionClose(Context context, AVSession aVSession, int i) {
        this.manager.removeSession(aVSession.getSelfPeerId());
        if (i > -65537) {
            BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), null, i, AVIMOperation.CLIENT_DISCONNECT);
        }
    }

    private void cleanSession(AVSession aVSession) {
        AVSessionCacheHelper.getTagCacheInstance().removeSession(aVSession.getSelfPeerId());
        aVSession.sessionOpened.set(false);
        aVSession.cleanUp();
        this.manager.removeSession(aVSession.getSelfPeerId());
    }

    public void onOnlineQuery(Context context, AVSession aVSession, List<String> list, int i) {
        if (i != -65537) {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(Conversation.callbackOnlineClients, new ArrayList(list));
            BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), (String) null, i, bundle, AVIMOperation.CLIENT_ONLINE_QUERY);
        }
    }
}
