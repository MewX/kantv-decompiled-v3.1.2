package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo.Scope;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouter.ControlRequestCallback;

public abstract class MediaRouteProvider {
    static final int MSG_DELIVER_DESCRIPTOR_CHANGED = 1;
    static final int MSG_DELIVER_DISCOVERY_REQUEST_CHANGED = 2;
    private Callback mCallback;
    private final Context mContext;
    private MediaRouteProviderDescriptor mDescriptor;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private final ProviderHandler mHandler;
    private final ProviderMetadata mMetadata;
    private boolean mPendingDescriptorChange;
    private boolean mPendingDiscoveryRequestChange;

    public static abstract class Callback {
        public void onDescriptorChanged(@NonNull MediaRouteProvider mediaRouteProvider, @Nullable MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        }
    }

    private final class ProviderHandler extends Handler {
        ProviderHandler() {
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                MediaRouteProvider.this.deliverDescriptorChanged();
            } else if (i == 2) {
                MediaRouteProvider.this.deliverDiscoveryRequestChanged();
            }
        }
    }

    public static final class ProviderMetadata {
        private final ComponentName mComponentName;

        ProviderMetadata(ComponentName componentName) {
            if (componentName != null) {
                this.mComponentName = componentName;
                return;
            }
            throw new IllegalArgumentException("componentName must not be null");
        }

        public String getPackageName() {
            return this.mComponentName.getPackageName();
        }

        public ComponentName getComponentName() {
            return this.mComponentName;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("ProviderMetadata{ componentName=");
            sb.append(this.mComponentName.flattenToShortString());
            sb.append(" }");
            return sb.toString();
        }
    }

    public static abstract class RouteController {
        public boolean onControlRequest(Intent intent, @Nullable ControlRequestCallback controlRequestCallback) {
            return false;
        }

        public void onRelease() {
        }

        public void onSelect() {
        }

        public void onSetVolume(int i) {
        }

        public void onUnselect() {
        }

        public void onUpdateVolume(int i) {
        }

        public void onUnselect(int i) {
            onUnselect();
        }
    }

    public void onDiscoveryRequestChanged(@Nullable MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
    }

    public MediaRouteProvider(@NonNull Context context) {
        this(context, null);
    }

    MediaRouteProvider(Context context, ProviderMetadata providerMetadata) {
        this.mHandler = new ProviderHandler();
        if (context != null) {
            this.mContext = context;
            if (providerMetadata == null) {
                this.mMetadata = new ProviderMetadata(new ComponentName(context, getClass()));
            } else {
                this.mMetadata = providerMetadata;
            }
        } else {
            throw new IllegalArgumentException("context must not be null");
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Handler getHandler() {
        return this.mHandler;
    }

    public final ProviderMetadata getMetadata() {
        return this.mMetadata;
    }

    public final void setCallback(@Nullable Callback callback) {
        MediaRouter.checkCallingThread();
        this.mCallback = callback;
    }

    @Nullable
    public final MediaRouteDiscoveryRequest getDiscoveryRequest() {
        return this.mDiscoveryRequest;
    }

    public final void setDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        MediaRouter.checkCallingThread();
        if (!ObjectsCompat.equals(this.mDiscoveryRequest, mediaRouteDiscoveryRequest)) {
            this.mDiscoveryRequest = mediaRouteDiscoveryRequest;
            if (!this.mPendingDiscoveryRequestChange) {
                this.mPendingDiscoveryRequestChange = true;
                this.mHandler.sendEmptyMessage(2);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void deliverDiscoveryRequestChanged() {
        this.mPendingDiscoveryRequestChange = false;
        onDiscoveryRequestChanged(this.mDiscoveryRequest);
    }

    @Nullable
    public final MediaRouteProviderDescriptor getDescriptor() {
        return this.mDescriptor;
    }

    public final void setDescriptor(@Nullable MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        MediaRouter.checkCallingThread();
        if (this.mDescriptor != mediaRouteProviderDescriptor) {
            this.mDescriptor = mediaRouteProviderDescriptor;
            if (!this.mPendingDescriptorChange) {
                this.mPendingDescriptorChange = true;
                this.mHandler.sendEmptyMessage(1);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void deliverDescriptorChanged() {
        this.mPendingDescriptorChange = false;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onDescriptorChanged(this, this.mDescriptor);
        }
    }

    @Nullable
    public RouteController onCreateRouteController(@NonNull String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Nullable
    @RestrictTo({Scope.LIBRARY_GROUP})
    public RouteController onCreateRouteController(@NonNull String str, @NonNull String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        } else if (str2 != null) {
            return onCreateRouteController(str);
        } else {
            throw new IllegalArgumentException("routeGroupId cannot be null");
        }
    }
}
