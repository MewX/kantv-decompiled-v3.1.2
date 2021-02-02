package com.avos.avoscloud;

import android.content.Context;
import com.avos.avospush.session.CommandPacket;
import java.util.List;

public abstract class AVSessionListener {
    public abstract void onError(Context context, AVSession aVSession, Throwable th, int i, int i2);

    public abstract void onOnlineQuery(Context context, AVSession aVSession, List<String> list, int i);

    public abstract void onSessionClose(Context context, AVSession aVSession, int i);

    public abstract void onSessionClosedFromServer(Context context, AVSession aVSession, int i);

    public abstract void onSessionOpen(Context context, AVSession aVSession, int i);

    public abstract void onSessionPaused(Context context, AVSession aVSession);

    public abstract void onSessionResumed(Context context, AVSession aVSession);

    public abstract void onSessionTokenRenewed(Context context, AVSession aVSession, int i);

    public void onError(Context context, AVSession aVSession, Throwable th) {
        onError(context, aVSession, th, -1, CommandPacket.UNSUPPORTED_OPERATION);
    }
}
