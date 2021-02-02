package com.google.android.gms.cast.framework.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;

public class MediaIntentReceiver extends BroadcastReceiver {
    public static final String ACTION_DISCONNECT = "com.google.android.gms.cast.framework.action.DISCONNECT";
    public static final String ACTION_FORWARD = "com.google.android.gms.cast.framework.action.FORWARD";
    public static final String ACTION_REWIND = "com.google.android.gms.cast.framework.action.REWIND";
    public static final String ACTION_SKIP_NEXT = "com.google.android.gms.cast.framework.action.SKIP_NEXT";
    public static final String ACTION_SKIP_PREV = "com.google.android.gms.cast.framework.action.SKIP_PREV";
    public static final String ACTION_STOP_CASTING = "com.google.android.gms.cast.framework.action.STOP_CASTING";
    public static final String ACTION_TOGGLE_PLAYBACK = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK";
    public static final String EXTRA_SKIP_STEP_MS = "googlecast-extra_skip_step_ms";

    /* access modifiers changed from: protected */
    public void onReceiveOtherAction(Context context, String str, Intent intent) {
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            SessionManager sessionManager = CastContext.getSharedInstance(context).getSessionManager();
            char c = 65535;
            switch (action.hashCode()) {
                case -1699820260:
                    if (action.equals(ACTION_REWIND)) {
                        c = 4;
                        break;
                    }
                    break;
                case -945151566:
                    if (action.equals(ACTION_SKIP_NEXT)) {
                        c = 1;
                        break;
                    }
                    break;
                case -945080078:
                    if (action.equals(ACTION_SKIP_PREV)) {
                        c = 2;
                        break;
                    }
                    break;
                case -668151673:
                    if (action.equals(ACTION_STOP_CASTING)) {
                        c = 5;
                        break;
                    }
                    break;
                case -124479363:
                    if (action.equals(ACTION_DISCONNECT)) {
                        c = 6;
                        break;
                    }
                    break;
                case 235550565:
                    if (action.equals(ACTION_TOGGLE_PLAYBACK)) {
                        c = 0;
                        break;
                    }
                    break;
                case 1362116196:
                    if (action.equals(ACTION_FORWARD)) {
                        c = 3;
                        break;
                    }
                    break;
                case 1997055314:
                    if (action.equals("android.intent.action.MEDIA_BUTTON")) {
                        c = 7;
                        break;
                    }
                    break;
            }
            String str = EXTRA_SKIP_STEP_MS;
            switch (c) {
                case 0:
                    onReceiveActionTogglePlayback(sessionManager.getCurrentSession());
                    return;
                case 1:
                    onReceiveActionSkipNext(sessionManager.getCurrentSession());
                    return;
                case 2:
                    onReceiveActionSkipPrev(sessionManager.getCurrentSession());
                    return;
                case 3:
                    onReceiveActionForward(sessionManager.getCurrentSession(), intent.getLongExtra(str, 0));
                    return;
                case 4:
                    onReceiveActionRewind(sessionManager.getCurrentSession(), intent.getLongExtra(str, 0));
                    return;
                case 5:
                    sessionManager.endCurrentSession(true);
                    return;
                case 6:
                    sessionManager.endCurrentSession(false);
                    return;
                case 7:
                    onReceiveActionMediaButton(sessionManager.getCurrentSession(), intent);
                    return;
                default:
                    onReceiveOtherAction(context, action, intent);
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionTogglePlayback(Session session) {
        if (session instanceof CastSession) {
            zzg((CastSession) session);
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionSkipNext(Session session) {
        if (session instanceof CastSession) {
            RemoteMediaClient zzh = zzh((CastSession) session);
            if (zzh != null && !zzh.isPlayingAd()) {
                zzh.queueNext(null);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionSkipPrev(Session session) {
        if (session instanceof CastSession) {
            RemoteMediaClient zzh = zzh((CastSession) session);
            if (zzh != null && !zzh.isPlayingAd()) {
                zzh.queuePrev(null);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionForward(Session session, long j) {
        if (session instanceof CastSession) {
            zza((CastSession) session, j);
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionRewind(Session session, long j) {
        if (session instanceof CastSession) {
            zza((CastSession) session, -j);
        }
    }

    /* access modifiers changed from: protected */
    public void onReceiveActionMediaButton(Session session, Intent intent) {
        if (session instanceof CastSession) {
            String str = "android.intent.extra.KEY_EVENT";
            if (intent.hasExtra(str)) {
                KeyEvent keyEvent = (KeyEvent) intent.getExtras().get(str);
                if (keyEvent != null && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 85) {
                    zzg((CastSession) session);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onReceiveOtherAction(String str, Intent intent) {
        onReceiveOtherAction(null, str, intent);
    }

    private static void zzg(CastSession castSession) {
        RemoteMediaClient zzh = zzh(castSession);
        if (zzh != null) {
            zzh.togglePlayback();
        }
    }

    private static void zza(CastSession castSession, long j) {
        if (j != 0) {
            RemoteMediaClient zzh = zzh(castSession);
            if (zzh != null && !zzh.isLiveStream() && !zzh.isPlayingAd()) {
                zzh.seek(zzh.getApproximateStreamPosition() + j);
            }
        }
    }

    private static RemoteMediaClient zzh(CastSession castSession) {
        if (castSession == null || !castSession.isConnected()) {
            return null;
        }
        return castSession.getRemoteMediaClient();
    }
}
