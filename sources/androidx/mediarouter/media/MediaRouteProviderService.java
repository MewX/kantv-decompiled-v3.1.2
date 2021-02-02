package androidx.mediarouter.media;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouteProvider.Callback;
import androidx.mediarouter.media.MediaRouteProvider.RouteController;
import androidx.mediarouter.media.MediaRouteProviderDescriptor.Builder;
import androidx.mediarouter.media.MediaRouter.ControlRequestCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public abstract class MediaRouteProviderService extends Service {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    static final int PRIVATE_MSG_CLIENT_DIED = 1;
    public static final String SERVICE_INTERFACE = "android.media.MediaRouteProviderService";
    static final String TAG = "MediaRouteProviderSrv";
    private final ArrayList<ClientRecord> mClients = new ArrayList<>();
    private MediaRouteDiscoveryRequest mCompositeDiscoveryRequest;
    final PrivateHandler mPrivateHandler = new PrivateHandler();
    MediaRouteProvider mProvider;
    private final ProviderCallback mProviderCallback = new ProviderCallback();
    private final ReceiveHandler mReceiveHandler = new ReceiveHandler(this);
    private final Messenger mReceiveMessenger = new Messenger(this.mReceiveHandler);

    private final class ClientRecord implements DeathRecipient {
        private final SparseArray<RouteController> mControllers = new SparseArray<>();
        public MediaRouteDiscoveryRequest mDiscoveryRequest;
        public final Messenger mMessenger;
        public final int mVersion;

        public ClientRecord(Messenger messenger, int i) {
            this.mMessenger = messenger;
            this.mVersion = i;
        }

        public boolean register() {
            try {
                this.mMessenger.getBinder().linkToDeath(this, 0);
                return true;
            } catch (RemoteException unused) {
                binderDied();
                return false;
            }
        }

        public void dispose() {
            int size = this.mControllers.size();
            for (int i = 0; i < size; i++) {
                ((RouteController) this.mControllers.valueAt(i)).onRelease();
            }
            this.mControllers.clear();
            this.mMessenger.getBinder().unlinkToDeath(this, 0);
            setDiscoveryRequest(null);
        }

        public boolean hasMessenger(Messenger messenger) {
            return this.mMessenger.getBinder() == messenger.getBinder();
        }

        public boolean createRouteController(String str, String str2, int i) {
            RouteController routeController;
            if (this.mControllers.indexOfKey(i) < 0) {
                if (str2 == null) {
                    routeController = MediaRouteProviderService.this.mProvider.onCreateRouteController(str);
                } else {
                    routeController = MediaRouteProviderService.this.mProvider.onCreateRouteController(str, str2);
                }
                if (routeController != null) {
                    this.mControllers.put(i, routeController);
                    return true;
                }
            }
            return false;
        }

        public boolean releaseRouteController(int i) {
            RouteController routeController = (RouteController) this.mControllers.get(i);
            if (routeController == null) {
                return false;
            }
            this.mControllers.remove(i);
            routeController.onRelease();
            return true;
        }

        public RouteController getRouteController(int i) {
            return (RouteController) this.mControllers.get(i);
        }

        public boolean setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            if (ObjectsCompat.equals(this.mDiscoveryRequest, mediaRouteDiscoveryRequest)) {
                return false;
            }
            this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
            return MediaRouteProviderService.this.updateCompositeDiscoveryRequest();
        }

        public void binderDied() {
            MediaRouteProviderService.this.mPrivateHandler.obtainMessage(1, this.mMessenger).sendToTarget();
        }

        public String toString() {
            return MediaRouteProviderService.getClientId(this.mMessenger);
        }
    }

    private final class PrivateHandler extends Handler {
        PrivateHandler() {
        }

        public void handleMessage(Message message) {
            if (message.what == 1) {
                MediaRouteProviderService.this.onBinderDied((Messenger) message.obj);
            }
        }
    }

    private final class ProviderCallback extends Callback {
        ProviderCallback() {
        }

        public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            MediaRouteProviderService.this.sendDescriptorChanged(mediaRouteProviderDescriptor);
        }
    }

    private static final class ReceiveHandler extends Handler {
        private final WeakReference<MediaRouteProviderService> mServiceRef;

        public ReceiveHandler(MediaRouteProviderService mediaRouteProviderService) {
            this.mServiceRef = new WeakReference<>(mediaRouteProviderService);
        }

        public void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            boolean isValidRemoteMessenger = MediaRouteProviderProtocol.isValidRemoteMessenger(messenger);
            String str = MediaRouteProviderService.TAG;
            if (isValidRemoteMessenger) {
                int i = message.what;
                int i2 = message.arg1;
                int i3 = message.arg2;
                Object obj = message.obj;
                Bundle peekData = message.peekData();
                if (!processMessage(i, messenger, i2, i3, obj, peekData)) {
                    if (MediaRouteProviderService.DEBUG) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(MediaRouteProviderService.getClientId(messenger));
                        sb.append(": Message failed, what=");
                        sb.append(i);
                        sb.append(", requestId=");
                        sb.append(i2);
                        sb.append(", arg=");
                        sb.append(i3);
                        sb.append(", obj=");
                        sb.append(obj);
                        sb.append(", data=");
                        sb.append(peekData);
                        Log.d(str, sb.toString());
                    }
                    MediaRouteProviderService.sendGenericFailure(messenger, i2);
                }
            } else if (MediaRouteProviderService.DEBUG) {
                Log.d(str, "Ignoring message without valid reply messenger.");
            }
        }

        private boolean processMessage(int i, Messenger messenger, int i2, int i3, Object obj, Bundle bundle) {
            MediaRouteProviderService mediaRouteProviderService = (MediaRouteProviderService) this.mServiceRef.get();
            int i4 = 0;
            if (mediaRouteProviderService != null) {
                String str = MediaRouteProviderProtocol.CLIENT_DATA_VOLUME;
                switch (i) {
                    case 1:
                        return mediaRouteProviderService.onRegisterClient(messenger, i2, i3);
                    case 2:
                        return mediaRouteProviderService.onUnregisterClient(messenger, i2);
                    case 3:
                        String string = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID);
                        String string2 = bundle.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_LIBRARY_GROUP);
                        if (string != null) {
                            return mediaRouteProviderService.onCreateRouteController(messenger, i2, i3, string, string2);
                        }
                        break;
                    case 4:
                        return mediaRouteProviderService.onReleaseRouteController(messenger, i2, i3);
                    case 5:
                        return mediaRouteProviderService.onSelectRoute(messenger, i2, i3);
                    case 6:
                        if (bundle != null) {
                            i4 = bundle.getInt(MediaRouteProviderProtocol.CLIENT_DATA_UNSELECT_REASON, 0);
                        }
                        return mediaRouteProviderService.onUnselectRoute(messenger, i2, i3, i4);
                    case 7:
                        int i5 = bundle.getInt(str, -1);
                        if (i5 >= 0) {
                            return mediaRouteProviderService.onSetRouteVolume(messenger, i2, i3, i5);
                        }
                        break;
                    case 8:
                        int i6 = bundle.getInt(str, 0);
                        if (i6 != 0) {
                            return mediaRouteProviderService.onUpdateRouteVolume(messenger, i2, i3, i6);
                        }
                        break;
                    case 9:
                        if (obj instanceof Intent) {
                            return mediaRouteProviderService.onRouteControlRequest(messenger, i2, i3, (Intent) obj);
                        }
                        break;
                    case 10:
                        if (obj == null || (obj instanceof Bundle)) {
                            MediaRouteDiscoveryRequest fromBundle = MediaRouteDiscoveryRequest.fromBundle((Bundle) obj);
                            if (fromBundle == null || !fromBundle.isValid()) {
                                fromBundle = null;
                            }
                            return mediaRouteProviderService.onSetDiscoveryRequest(messenger, i2, fromBundle);
                        }
                }
            }
            return false;
        }
    }

    public abstract MediaRouteProvider onCreateMediaRouteProvider();

    public MediaRouteProvider getMediaRouteProvider() {
        return this.mProvider;
    }

    public IBinder onBind(Intent intent) {
        if (intent.getAction().equals("android.media.MediaRouteProviderService")) {
            if (this.mProvider == null) {
                MediaRouteProvider onCreateMediaRouteProvider = onCreateMediaRouteProvider();
                if (onCreateMediaRouteProvider != null) {
                    String packageName = onCreateMediaRouteProvider.getMetadata().getPackageName();
                    if (packageName.equals(getPackageName())) {
                        this.mProvider = onCreateMediaRouteProvider;
                        this.mProvider.setCallback(this.mProviderCallback);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: ");
                        sb.append(packageName);
                        sb.append(".  Service package name: ");
                        sb.append(getPackageName());
                        sb.append(".");
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
            if (this.mProvider != null) {
                return this.mReceiveMessenger.getBinder();
            }
        }
        return null;
    }

    public boolean onUnbind(Intent intent) {
        MediaRouteProvider mediaRouteProvider = this.mProvider;
        if (mediaRouteProvider != null) {
            mediaRouteProvider.setCallback(null);
        }
        return super.onUnbind(intent);
    }

    /* access modifiers changed from: 0000 */
    public boolean onRegisterClient(Messenger messenger, int i, int i2) {
        if (i2 >= 1 && findClient(messenger) < 0) {
            ClientRecord clientRecord = new ClientRecord(messenger, i2);
            if (clientRecord.register()) {
                this.mClients.add(clientRecord);
                if (DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(clientRecord);
                    sb.append(": Registered, version=");
                    sb.append(i2);
                    Log.d(TAG, sb.toString());
                }
                if (i != 0) {
                    sendReply(messenger, 2, i, 1, createDescriptorBundleForClientVersion(this.mProvider.getDescriptor(), clientRecord.mVersion), null);
                }
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onUnregisterClient(Messenger messenger, int i) {
        int findClient = findClient(messenger);
        if (findClient < 0) {
            return false;
        }
        ClientRecord clientRecord = (ClientRecord) this.mClients.remove(findClient);
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append(clientRecord);
            sb.append(": Unregistered");
            Log.d(TAG, sb.toString());
        }
        clientRecord.dispose();
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void onBinderDied(Messenger messenger) {
        int findClient = findClient(messenger);
        if (findClient >= 0) {
            ClientRecord clientRecord = (ClientRecord) this.mClients.remove(findClient);
            if (DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append(clientRecord);
                sb.append(": Binder died");
                Log.d(TAG, sb.toString());
            }
            clientRecord.dispose();
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean onCreateRouteController(Messenger messenger, int i, int i2, String str, String str2) {
        ClientRecord client = getClient(messenger);
        if (client == null || !client.createRouteController(str, str2, i2)) {
            return false;
        }
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append(client);
            sb.append(": Route controller created, controllerId=");
            sb.append(i2);
            sb.append(", routeId=");
            sb.append(str);
            sb.append(", routeGroupId=");
            sb.append(str2);
            Log.d(TAG, sb.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean onReleaseRouteController(Messenger messenger, int i, int i2) {
        ClientRecord client = getClient(messenger);
        if (client == null || !client.releaseRouteController(i2)) {
            return false;
        }
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append(client);
            sb.append(": Route controller released");
            sb.append(", controllerId=");
            sb.append(i2);
            Log.d(TAG, sb.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public boolean onSelectRoute(Messenger messenger, int i, int i2) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onSelect();
                if (DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(client);
                    sb.append(": Route selected");
                    sb.append(", controllerId=");
                    sb.append(i2);
                    Log.d(TAG, sb.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onUnselectRoute(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onUnselect(i3);
                if (DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(client);
                    sb.append(": Route unselected");
                    sb.append(", controllerId=");
                    sb.append(i2);
                    Log.d(TAG, sb.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onSetRouteVolume(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onSetVolume(i3);
                if (DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(client);
                    sb.append(": Route volume changed");
                    sb.append(", controllerId=");
                    sb.append(i2);
                    sb.append(", volume=");
                    sb.append(i3);
                    Log.d(TAG, sb.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onUpdateRouteVolume(Messenger messenger, int i, int i2, int i3) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                routeController.onUpdateVolume(i3);
                if (DEBUG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(client);
                    sb.append(": Route volume updated");
                    sb.append(", controllerId=");
                    sb.append(i2);
                    sb.append(", delta=");
                    sb.append(i3);
                    Log.d(TAG, sb.toString());
                }
                sendGenericSuccess(messenger, i);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onRouteControlRequest(Messenger messenger, int i, int i2, Intent intent) {
        ClientRecord client = getClient(messenger);
        if (client != null) {
            RouteController routeController = client.getRouteController(i2);
            if (routeController != null) {
                AnonymousClass1 r0 = null;
                if (i != 0) {
                    final ClientRecord clientRecord = client;
                    final int i3 = i2;
                    final Intent intent2 = intent;
                    final Messenger messenger2 = messenger;
                    final int i4 = i;
                    r0 = new ControlRequestCallback() {
                        public void onResult(Bundle bundle) {
                            if (MediaRouteProviderService.DEBUG) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(clientRecord);
                                sb.append(": Route control request succeeded");
                                sb.append(", controllerId=");
                                sb.append(i3);
                                sb.append(", intent=");
                                sb.append(intent2);
                                sb.append(", data=");
                                sb.append(bundle);
                                Log.d(MediaRouteProviderService.TAG, sb.toString());
                            }
                            if (MediaRouteProviderService.this.findClient(messenger2) >= 0) {
                                MediaRouteProviderService.sendReply(messenger2, 3, i4, 0, bundle, null);
                            }
                        }

                        public void onError(String str, Bundle bundle) {
                            if (MediaRouteProviderService.DEBUG) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(clientRecord);
                                sb.append(": Route control request failed");
                                sb.append(", controllerId=");
                                sb.append(i3);
                                sb.append(", intent=");
                                sb.append(intent2);
                                sb.append(", error=");
                                sb.append(str);
                                sb.append(", data=");
                                sb.append(bundle);
                                Log.d(MediaRouteProviderService.TAG, sb.toString());
                            }
                            if (MediaRouteProviderService.this.findClient(messenger2) < 0) {
                                return;
                            }
                            if (str != null) {
                                Bundle bundle2 = new Bundle();
                                bundle2.putString("error", str);
                                MediaRouteProviderService.sendReply(messenger2, 4, i4, 0, bundle, bundle2);
                                return;
                            }
                            MediaRouteProviderService.sendReply(messenger2, 4, i4, 0, bundle, null);
                        }
                    };
                }
                if (routeController.onControlRequest(intent, r0)) {
                    if (DEBUG) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(client);
                        sb.append(": Route control request delivered");
                        sb.append(", controllerId=");
                        sb.append(i2);
                        sb.append(", intent=");
                        sb.append(intent);
                        Log.d(TAG, sb.toString());
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean onSetDiscoveryRequest(Messenger messenger, int i, MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        ClientRecord client = getClient(messenger);
        if (client == null) {
            return false;
        }
        boolean discoveryRequest = client.setDiscoveryRequest(mediaRouteDiscoveryRequest);
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append(client);
            sb.append(": Set discovery request, request=");
            sb.append(mediaRouteDiscoveryRequest);
            sb.append(", actuallyChanged=");
            sb.append(discoveryRequest);
            sb.append(", compositeDiscoveryRequest=");
            sb.append(this.mCompositeDiscoveryRequest);
            Log.d(TAG, sb.toString());
        }
        sendGenericSuccess(messenger, i);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void sendDescriptorChanged(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        int size = this.mClients.size();
        for (int i = 0; i < size; i++) {
            ClientRecord clientRecord = (ClientRecord) this.mClients.get(i);
            sendReply(clientRecord.mMessenger, 5, 0, 0, createDescriptorBundleForClientVersion(mediaRouteProviderDescriptor, clientRecord.mVersion), null);
            if (DEBUG) {
                StringBuilder sb = new StringBuilder();
                sb.append(clientRecord);
                sb.append(": Sent descriptor change event, descriptor=");
                sb.append(mediaRouteProviderDescriptor);
                Log.d(TAG, sb.toString());
            }
        }
    }

    @VisibleForTesting
    static Bundle createDescriptorBundleForClientVersion(MediaRouteProviderDescriptor mediaRouteProviderDescriptor, int i) {
        if (mediaRouteProviderDescriptor == null) {
            return null;
        }
        Builder builder = new Builder(mediaRouteProviderDescriptor);
        builder.setRoutes(null);
        for (MediaRouteDescriptor mediaRouteDescriptor : mediaRouteProviderDescriptor.getRoutes()) {
            if (i >= mediaRouteDescriptor.getMinClientVersion() && i <= mediaRouteDescriptor.getMaxClientVersion()) {
                builder.addRoute(mediaRouteDescriptor);
            }
        }
        return builder.build().asBundle();
    }

    /* access modifiers changed from: 0000 */
    public boolean updateCompositeDiscoveryRequest() {
        int size = this.mClients.size();
        MediaRouteSelector.Builder builder = null;
        MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = null;
        boolean z = false;
        for (int i = 0; i < size; i++) {
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest2 = ((ClientRecord) this.mClients.get(i)).mDiscoveryRequest;
            if (mediaRouteDiscoveryRequest2 != null && (!mediaRouteDiscoveryRequest2.getSelector().isEmpty() || mediaRouteDiscoveryRequest2.isActiveScan())) {
                z |= mediaRouteDiscoveryRequest2.isActiveScan();
                if (mediaRouteDiscoveryRequest == null) {
                    mediaRouteDiscoveryRequest = mediaRouteDiscoveryRequest2;
                } else {
                    if (builder == null) {
                        builder = new MediaRouteSelector.Builder(mediaRouteDiscoveryRequest.getSelector());
                    }
                    builder.addSelector(mediaRouteDiscoveryRequest2.getSelector());
                }
            }
        }
        if (builder != null) {
            mediaRouteDiscoveryRequest = new MediaRouteDiscoveryRequest(builder.build(), z);
        }
        if (ObjectsCompat.equals(this.mCompositeDiscoveryRequest, mediaRouteDiscoveryRequest)) {
            return false;
        }
        this.mCompositeDiscoveryRequest = mediaRouteDiscoveryRequest;
        this.mProvider.setDiscoveryRequest(mediaRouteDiscoveryRequest);
        return true;
    }

    private ClientRecord getClient(Messenger messenger) {
        int findClient = findClient(messenger);
        if (findClient >= 0) {
            return (ClientRecord) this.mClients.get(findClient);
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public int findClient(Messenger messenger) {
        int size = this.mClients.size();
        for (int i = 0; i < size; i++) {
            if (((ClientRecord) this.mClients.get(i)).hasMessenger(messenger)) {
                return i;
            }
        }
        return -1;
    }

    static void sendGenericFailure(Messenger messenger, int i) {
        if (i != 0) {
            sendReply(messenger, 0, i, 0, null, null);
        }
    }

    private static void sendGenericSuccess(Messenger messenger, int i) {
        if (i != 0) {
            sendReply(messenger, 1, i, 0, null, null);
        }
    }

    static void sendReply(Messenger messenger, int i, int i2, int i3, Object obj, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        obtain.arg2 = i3;
        obtain.obj = obj;
        obtain.setData(bundle);
        try {
            messenger.send(obtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not send message to ");
            sb.append(getClientId(messenger));
            Log.e(TAG, sb.toString(), e);
        }
    }

    static String getClientId(Messenger messenger) {
        StringBuilder sb = new StringBuilder();
        sb.append("Client connection ");
        sb.append(messenger.getBinder().toString());
        return sb.toString();
    }
}
