package androidx.mediarouter.media;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouter.ControlRequestCallback;
import androidx.mediarouter.media.MediaRouter.RouteInfo;

public class RemotePlaybackClient {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final String TAG = "RemotePlaybackClient";
    private final ActionReceiver mActionReceiver;
    private final Context mContext;
    private final PendingIntent mItemStatusPendingIntent;
    private final PendingIntent mMessagePendingIntent;
    OnMessageReceivedListener mOnMessageReceivedListener;
    private final RouteInfo mRoute;
    private boolean mRouteSupportsMessaging;
    private boolean mRouteSupportsQueuing;
    private boolean mRouteSupportsRemotePlayback;
    private boolean mRouteSupportsSessionManagement;
    String mSessionId;
    private final PendingIntent mSessionStatusPendingIntent;
    StatusCallback mStatusCallback;

    public static abstract class ActionCallback {
        public void onError(String str, int i, Bundle bundle) {
        }
    }

    private final class ActionReceiver extends BroadcastReceiver {
        public static final String ACTION_ITEM_STATUS_CHANGED = "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED";
        public static final String ACTION_MESSAGE_RECEIVED = "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED";
        public static final String ACTION_SESSION_STATUS_CHANGED = "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED";

        ActionReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra(MediaControlIntent.EXTRA_SESSION_ID);
            String str = RemotePlaybackClient.TAG;
            if (stringExtra == null || !stringExtra.equals(RemotePlaybackClient.this.mSessionId)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Discarding spurious status callback with missing or invalid session id: sessionId=");
                sb.append(stringExtra);
                Log.w(str, sb.toString());
                return;
            }
            MediaSessionStatus fromBundle = MediaSessionStatus.fromBundle(intent.getBundleExtra(MediaControlIntent.EXTRA_SESSION_STATUS));
            String action = intent.getAction();
            String str2 = ", sessionStatus=";
            if (action.equals(ACTION_ITEM_STATUS_CHANGED)) {
                String stringExtra2 = intent.getStringExtra(MediaControlIntent.EXTRA_ITEM_ID);
                if (stringExtra2 == null) {
                    Log.w(str, "Discarding spurious status callback with missing item id.");
                    return;
                }
                MediaItemStatus fromBundle2 = MediaItemStatus.fromBundle(intent.getBundleExtra(MediaControlIntent.EXTRA_ITEM_STATUS));
                if (fromBundle2 == null) {
                    Log.w(str, "Discarding spurious status callback with missing item status.");
                    return;
                }
                if (RemotePlaybackClient.DEBUG) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Received item status callback: sessionId=");
                    sb2.append(stringExtra);
                    sb2.append(str2);
                    sb2.append(fromBundle);
                    sb2.append(", itemId=");
                    sb2.append(stringExtra2);
                    sb2.append(", itemStatus=");
                    sb2.append(fromBundle2);
                    Log.d(str, sb2.toString());
                }
                if (RemotePlaybackClient.this.mStatusCallback != null) {
                    RemotePlaybackClient.this.mStatusCallback.onItemStatusChanged(intent.getExtras(), stringExtra, fromBundle, stringExtra2, fromBundle2);
                }
            } else if (action.equals(ACTION_SESSION_STATUS_CHANGED)) {
                if (fromBundle == null) {
                    Log.w(str, "Discarding spurious media status callback with missing session status.");
                    return;
                }
                if (RemotePlaybackClient.DEBUG) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Received session status callback: sessionId=");
                    sb3.append(stringExtra);
                    sb3.append(str2);
                    sb3.append(fromBundle);
                    Log.d(str, sb3.toString());
                }
                if (RemotePlaybackClient.this.mStatusCallback != null) {
                    RemotePlaybackClient.this.mStatusCallback.onSessionStatusChanged(intent.getExtras(), stringExtra, fromBundle);
                }
            } else if (action.equals(ACTION_MESSAGE_RECEIVED)) {
                if (RemotePlaybackClient.DEBUG) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Received message callback: sessionId=");
                    sb4.append(stringExtra);
                    Log.d(str, sb4.toString());
                }
                if (RemotePlaybackClient.this.mOnMessageReceivedListener != null) {
                    RemotePlaybackClient.this.mOnMessageReceivedListener.onMessageReceived(stringExtra, intent.getBundleExtra(MediaControlIntent.EXTRA_MESSAGE));
                }
            }
        }
    }

    public static abstract class ItemActionCallback extends ActionCallback {
        public void onResult(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus, String str2, MediaItemStatus mediaItemStatus) {
        }
    }

    public interface OnMessageReceivedListener {
        void onMessageReceived(String str, Bundle bundle);
    }

    public static abstract class SessionActionCallback extends ActionCallback {
        public void onResult(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus) {
        }
    }

    public static abstract class StatusCallback {
        public void onItemStatusChanged(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus, String str2, MediaItemStatus mediaItemStatus) {
        }

        public void onSessionChanged(String str) {
        }

        public void onSessionStatusChanged(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus) {
        }
    }

    public RemotePlaybackClient(Context context, RouteInfo routeInfo) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        } else if (routeInfo != null) {
            this.mContext = context;
            this.mRoute = routeInfo;
            IntentFilter intentFilter = new IntentFilter();
            String str = ActionReceiver.ACTION_ITEM_STATUS_CHANGED;
            intentFilter.addAction(str);
            String str2 = ActionReceiver.ACTION_SESSION_STATUS_CHANGED;
            intentFilter.addAction(str2);
            String str3 = ActionReceiver.ACTION_MESSAGE_RECEIVED;
            intentFilter.addAction(str3);
            this.mActionReceiver = new ActionReceiver();
            context.registerReceiver(this.mActionReceiver, intentFilter);
            Intent intent = new Intent(str);
            intent.setPackage(context.getPackageName());
            this.mItemStatusPendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
            Intent intent2 = new Intent(str2);
            intent2.setPackage(context.getPackageName());
            this.mSessionStatusPendingIntent = PendingIntent.getBroadcast(context, 0, intent2, 0);
            Intent intent3 = new Intent(str3);
            intent3.setPackage(context.getPackageName());
            this.mMessagePendingIntent = PendingIntent.getBroadcast(context, 0, intent3, 0);
            detectFeatures();
        } else {
            throw new IllegalArgumentException("route must not be null");
        }
    }

    public void release() {
        this.mContext.unregisterReceiver(this.mActionReceiver);
    }

    public boolean isRemotePlaybackSupported() {
        return this.mRouteSupportsRemotePlayback;
    }

    public boolean isQueuingSupported() {
        return this.mRouteSupportsQueuing;
    }

    public boolean isSessionManagementSupported() {
        return this.mRouteSupportsSessionManagement;
    }

    public boolean isMessagingSupported() {
        return this.mRouteSupportsMessaging;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public void setSessionId(String str) {
        if (!ObjectsCompat.equals(this.mSessionId, str)) {
            if (DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append("Session id is now: ");
                sb.append(str);
                Log.d(TAG, sb.toString());
            }
            this.mSessionId = str;
            StatusCallback statusCallback = this.mStatusCallback;
            if (statusCallback != null) {
                statusCallback.onSessionChanged(str);
            }
        }
    }

    public boolean hasSession() {
        return this.mSessionId != null;
    }

    public void setStatusCallback(StatusCallback statusCallback) {
        this.mStatusCallback = statusCallback;
    }

    public void setOnMessageReceivedListener(OnMessageReceivedListener onMessageReceivedListener) {
        this.mOnMessageReceivedListener = onMessageReceivedListener;
    }

    public void play(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback) {
        playOrEnqueue(uri, str, bundle, j, bundle2, itemActionCallback, MediaControlIntent.ACTION_PLAY);
    }

    public void enqueue(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback) {
        playOrEnqueue(uri, str, bundle, j, bundle2, itemActionCallback, MediaControlIntent.ACTION_ENQUEUE);
    }

    private void playOrEnqueue(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback, String str2) {
        if (uri != null) {
            throwIfRemotePlaybackNotSupported();
            if (str2.equals(MediaControlIntent.ACTION_ENQUEUE)) {
                throwIfQueuingNotSupported();
            }
            Intent intent = new Intent(str2);
            intent.setDataAndType(uri, str);
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_STATUS_UPDATE_RECEIVER, this.mItemStatusPendingIntent);
            if (bundle != null) {
                intent.putExtra(MediaControlIntent.EXTRA_ITEM_METADATA, bundle);
            }
            if (j != 0) {
                intent.putExtra(MediaControlIntent.EXTRA_ITEM_CONTENT_POSITION, j);
            }
            performItemAction(intent, this.mSessionId, null, bundle2, itemActionCallback);
            return;
        }
        throw new IllegalArgumentException("contentUri must not be null");
    }

    public void seek(String str, long j, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str != null) {
            throwIfNoCurrentSession();
            Intent intent = new Intent(MediaControlIntent.ACTION_SEEK);
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_CONTENT_POSITION, j);
            performItemAction(intent, this.mSessionId, str, bundle, itemActionCallback);
            return;
        }
        throw new IllegalArgumentException("itemId must not be null");
    }

    public void getStatus(String str, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str != null) {
            throwIfNoCurrentSession();
            performItemAction(new Intent(MediaControlIntent.ACTION_GET_STATUS), this.mSessionId, str, bundle, itemActionCallback);
            return;
        }
        throw new IllegalArgumentException("itemId must not be null");
    }

    public void remove(String str, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str != null) {
            throwIfQueuingNotSupported();
            throwIfNoCurrentSession();
            performItemAction(new Intent(MediaControlIntent.ACTION_REMOVE), this.mSessionId, str, bundle, itemActionCallback);
            return;
        }
        throw new IllegalArgumentException("itemId must not be null");
    }

    public void pause(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_PAUSE), this.mSessionId, bundle, sessionActionCallback);
    }

    public void resume(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_RESUME), this.mSessionId, bundle, sessionActionCallback);
    }

    public void stop(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_STOP), this.mSessionId, bundle, sessionActionCallback);
    }

    public void startSession(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        Intent intent = new Intent(MediaControlIntent.ACTION_START_SESSION);
        intent.putExtra(MediaControlIntent.EXTRA_SESSION_STATUS_UPDATE_RECEIVER, this.mSessionStatusPendingIntent);
        if (this.mRouteSupportsMessaging) {
            intent.putExtra(MediaControlIntent.EXTRA_MESSAGE_RECEIVER, this.mMessagePendingIntent);
        }
        performSessionAction(intent, null, bundle, sessionActionCallback);
    }

    public void sendMessage(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        throwIfMessageNotSupported();
        performSessionAction(new Intent(MediaControlIntent.ACTION_SEND_MESSAGE), this.mSessionId, bundle, sessionActionCallback);
    }

    public void getSessionStatus(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_GET_SESSION_STATUS), this.mSessionId, bundle, sessionActionCallback);
    }

    public void endSession(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_END_SESSION), this.mSessionId, bundle, sessionActionCallback);
    }

    private void performItemAction(Intent intent, String str, String str2, Bundle bundle, ItemActionCallback itemActionCallback) {
        intent.addCategory(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK);
        if (str != null) {
            intent.putExtra(MediaControlIntent.EXTRA_SESSION_ID, str);
        }
        if (str2 != null) {
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_ID, str2);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        logRequest(intent);
        RouteInfo routeInfo = this.mRoute;
        final String str3 = str;
        final String str4 = str2;
        final Intent intent2 = intent;
        final ItemActionCallback itemActionCallback2 = itemActionCallback;
        AnonymousClass1 r0 = new ControlRequestCallback() {
            public void onResult(Bundle bundle) {
                if (bundle != null) {
                    String inferMissingResult = RemotePlaybackClient.inferMissingResult(str3, bundle.getString(MediaControlIntent.EXTRA_SESSION_ID));
                    MediaSessionStatus fromBundle = MediaSessionStatus.fromBundle(bundle.getBundle(MediaControlIntent.EXTRA_SESSION_STATUS));
                    String inferMissingResult2 = RemotePlaybackClient.inferMissingResult(str4, bundle.getString(MediaControlIntent.EXTRA_ITEM_ID));
                    MediaItemStatus fromBundle2 = MediaItemStatus.fromBundle(bundle.getBundle(MediaControlIntent.EXTRA_ITEM_STATUS));
                    RemotePlaybackClient.this.adoptSession(inferMissingResult);
                    if (!(inferMissingResult == null || inferMissingResult2 == null || fromBundle2 == null)) {
                        if (RemotePlaybackClient.DEBUG) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Received result from ");
                            sb.append(intent2.getAction());
                            sb.append(": data=");
                            sb.append(RemotePlaybackClient.bundleToString(bundle));
                            sb.append(", sessionId=");
                            sb.append(inferMissingResult);
                            sb.append(", sessionStatus=");
                            sb.append(fromBundle);
                            sb.append(", itemId=");
                            sb.append(inferMissingResult2);
                            sb.append(", itemStatus=");
                            sb.append(fromBundle2);
                            Log.d(RemotePlaybackClient.TAG, sb.toString());
                        }
                        itemActionCallback2.onResult(bundle, inferMissingResult, fromBundle, inferMissingResult2, fromBundle2);
                        return;
                    }
                }
                RemotePlaybackClient.this.handleInvalidResult(intent2, itemActionCallback2, bundle);
            }

            public void onError(String str, Bundle bundle) {
                RemotePlaybackClient.this.handleError(intent2, itemActionCallback2, str, bundle);
            }
        };
        routeInfo.sendControlRequest(intent, r0);
    }

    private void performSessionAction(final Intent intent, final String str, Bundle bundle, final SessionActionCallback sessionActionCallback) {
        intent.addCategory(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK);
        if (str != null) {
            intent.putExtra(MediaControlIntent.EXTRA_SESSION_ID, str);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        logRequest(intent);
        this.mRoute.sendControlRequest(intent, new ControlRequestCallback() {
            public void onResult(Bundle bundle) {
                String str = MediaControlIntent.ACTION_END_SESSION;
                if (bundle != null) {
                    String inferMissingResult = RemotePlaybackClient.inferMissingResult(str, bundle.getString(MediaControlIntent.EXTRA_SESSION_ID));
                    MediaSessionStatus fromBundle = MediaSessionStatus.fromBundle(bundle.getBundle(MediaControlIntent.EXTRA_SESSION_STATUS));
                    RemotePlaybackClient.this.adoptSession(inferMissingResult);
                    if (inferMissingResult != null) {
                        if (RemotePlaybackClient.DEBUG) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Received result from ");
                            sb.append(intent.getAction());
                            sb.append(": data=");
                            sb.append(RemotePlaybackClient.bundleToString(bundle));
                            sb.append(", sessionId=");
                            sb.append(inferMissingResult);
                            sb.append(", sessionStatus=");
                            sb.append(fromBundle);
                            Log.d(RemotePlaybackClient.TAG, sb.toString());
                        }
                        try {
                            sessionActionCallback.onResult(bundle, inferMissingResult, fromBundle);
                            return;
                        } finally {
                            if (intent.getAction().equals(str) && inferMissingResult.equals(RemotePlaybackClient.this.mSessionId)) {
                                RemotePlaybackClient.this.setSessionId(null);
                            }
                        }
                    }
                }
                RemotePlaybackClient.this.handleInvalidResult(intent, sessionActionCallback, bundle);
            }

            public void onError(String str, Bundle bundle) {
                RemotePlaybackClient.this.handleError(intent, sessionActionCallback, str, bundle);
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void adoptSession(String str) {
        if (str != null) {
            setSessionId(str);
        }
    }

    /* access modifiers changed from: 0000 */
    public void handleInvalidResult(Intent intent, ActionCallback actionCallback, Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("Received invalid result data from ");
        sb.append(intent.getAction());
        sb.append(": data=");
        sb.append(bundleToString(bundle));
        Log.w(TAG, sb.toString());
        actionCallback.onError(null, 0, bundle);
    }

    /* access modifiers changed from: 0000 */
    public void handleError(Intent intent, ActionCallback actionCallback, String str, Bundle bundle) {
        int i = 0;
        if (bundle != null) {
            i = bundle.getInt(MediaControlIntent.EXTRA_ERROR_CODE, 0);
        }
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("Received error from ");
            sb.append(intent.getAction());
            sb.append(": error=");
            sb.append(str);
            sb.append(", code=");
            sb.append(i);
            sb.append(", data=");
            sb.append(bundleToString(bundle));
            Log.w(TAG, sb.toString());
        }
        actionCallback.onError(str, i, bundle);
    }

    private void detectFeatures() {
        boolean z = true;
        this.mRouteSupportsRemotePlayback = routeSupportsAction(MediaControlIntent.ACTION_PLAY) && routeSupportsAction(MediaControlIntent.ACTION_SEEK) && routeSupportsAction(MediaControlIntent.ACTION_GET_STATUS) && routeSupportsAction(MediaControlIntent.ACTION_PAUSE) && routeSupportsAction(MediaControlIntent.ACTION_RESUME) && routeSupportsAction(MediaControlIntent.ACTION_STOP);
        this.mRouteSupportsQueuing = this.mRouteSupportsRemotePlayback && routeSupportsAction(MediaControlIntent.ACTION_ENQUEUE) && routeSupportsAction(MediaControlIntent.ACTION_REMOVE);
        if (!this.mRouteSupportsRemotePlayback || !routeSupportsAction(MediaControlIntent.ACTION_START_SESSION) || !routeSupportsAction(MediaControlIntent.ACTION_GET_SESSION_STATUS) || !routeSupportsAction(MediaControlIntent.ACTION_END_SESSION)) {
            z = false;
        }
        this.mRouteSupportsSessionManagement = z;
        this.mRouteSupportsMessaging = doesRouteSupportMessaging();
    }

    private boolean routeSupportsAction(String str) {
        return this.mRoute.supportsControlAction(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK, str);
    }

    private boolean doesRouteSupportMessaging() {
        for (IntentFilter hasAction : this.mRoute.getControlFilters()) {
            if (hasAction.hasAction(MediaControlIntent.ACTION_SEND_MESSAGE)) {
                return true;
            }
        }
        return false;
    }

    private void throwIfRemotePlaybackNotSupported() {
        if (!this.mRouteSupportsRemotePlayback) {
            throw new UnsupportedOperationException("The route does not support remote playback.");
        }
    }

    private void throwIfQueuingNotSupported() {
        if (!this.mRouteSupportsQueuing) {
            throw new UnsupportedOperationException("The route does not support queuing.");
        }
    }

    private void throwIfSessionManagementNotSupported() {
        if (!this.mRouteSupportsSessionManagement) {
            throw new UnsupportedOperationException("The route does not support session management.");
        }
    }

    private void throwIfMessageNotSupported() {
        if (!this.mRouteSupportsMessaging) {
            throw new UnsupportedOperationException("The route does not support message.");
        }
    }

    private void throwIfNoCurrentSession() {
        if (this.mSessionId == null) {
            throw new IllegalStateException("There is no current session.");
        }
    }

    static String inferMissingResult(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        if (str == null || str.equals(str2)) {
            return str2;
        }
        return null;
    }

    private static void logRequest(Intent intent) {
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("Sending request: ");
            sb.append(intent);
            Log.d(TAG, sb.toString());
        }
    }

    static String bundleToString(Bundle bundle) {
        if (bundle == null) {
            return "null";
        }
        bundle.size();
        return bundle.toString();
    }
}
