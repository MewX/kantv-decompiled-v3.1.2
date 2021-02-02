package androidx.mediarouter.media;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo.Scope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class MediaRouteDescriptor {
    static final String KEY_CAN_DISCONNECT = "canDisconnect";
    static final String KEY_CONNECTING = "connecting";
    static final String KEY_CONNECTION_STATE = "connectionState";
    static final String KEY_CONTROL_FILTERS = "controlFilters";
    static final String KEY_DESCRIPTION = "status";
    static final String KEY_DEVICE_TYPE = "deviceType";
    static final String KEY_ENABLED = "enabled";
    static final String KEY_EXTRAS = "extras";
    static final String KEY_GROUP_MEMBER_IDS = "groupMemberIds";
    static final String KEY_ICON_URI = "iconUri";
    static final String KEY_ID = "id";
    static final String KEY_MAX_CLIENT_VERSION = "maxClientVersion";
    static final String KEY_MIN_CLIENT_VERSION = "minClientVersion";
    static final String KEY_NAME = "name";
    static final String KEY_PLAYBACK_STREAM = "playbackStream";
    static final String KEY_PLAYBACK_TYPE = "playbackType";
    static final String KEY_PRESENTATION_DISPLAY_ID = "presentationDisplayId";
    static final String KEY_SETTINGS_INTENT = "settingsIntent";
    static final String KEY_VOLUME = "volume";
    static final String KEY_VOLUME_HANDLING = "volumeHandling";
    static final String KEY_VOLUME_MAX = "volumeMax";
    final Bundle mBundle;
    List<IntentFilter> mControlFilters;

    public static final class Builder {
        private final Bundle mBundle;
        private ArrayList<IntentFilter> mControlFilters;
        private ArrayList<String> mGroupMemberIds;

        public Builder(String str, String str2) {
            this.mBundle = new Bundle();
            setId(str);
            setName(str2);
        }

        public Builder(MediaRouteDescriptor mediaRouteDescriptor) {
            if (mediaRouteDescriptor != null) {
                this.mBundle = new Bundle(mediaRouteDescriptor.mBundle);
                mediaRouteDescriptor.ensureControlFilters();
                if (!mediaRouteDescriptor.mControlFilters.isEmpty()) {
                    this.mControlFilters = new ArrayList<>(mediaRouteDescriptor.mControlFilters);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("descriptor must not be null");
        }

        public Builder setId(String str) {
            this.mBundle.putString("id", str);
            return this;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public Builder addGroupMemberId(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (this.mGroupMemberIds == null) {
                    this.mGroupMemberIds = new ArrayList<>();
                }
                if (!this.mGroupMemberIds.contains(str)) {
                    this.mGroupMemberIds.add(str);
                }
                return this;
            }
            throw new IllegalArgumentException("groupMemberId must not be empty");
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public Builder addGroupMemberIds(Collection<String> collection) {
            if (collection != null) {
                if (!collection.isEmpty()) {
                    for (String addGroupMemberId : collection) {
                        addGroupMemberId(addGroupMemberId);
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("groupMemberIds must not be null");
        }

        public Builder setName(String str) {
            this.mBundle.putString("name", str);
            return this;
        }

        public Builder setDescription(String str) {
            this.mBundle.putString("status", str);
            return this;
        }

        public Builder setIconUri(Uri uri) {
            if (uri != null) {
                this.mBundle.putString(MediaRouteDescriptor.KEY_ICON_URI, uri.toString());
                return this;
            }
            throw new IllegalArgumentException("iconUri must not be null");
        }

        public Builder setEnabled(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_ENABLED, z);
            return this;
        }

        @Deprecated
        public Builder setConnecting(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_CONNECTING, z);
            return this;
        }

        public Builder setConnectionState(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_CONNECTION_STATE, i);
            return this;
        }

        public Builder setCanDisconnect(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_CAN_DISCONNECT, z);
            return this;
        }

        public Builder setSettingsActivity(IntentSender intentSender) {
            this.mBundle.putParcelable(MediaRouteDescriptor.KEY_SETTINGS_INTENT, intentSender);
            return this;
        }

        public Builder addControlFilter(IntentFilter intentFilter) {
            if (intentFilter != null) {
                if (this.mControlFilters == null) {
                    this.mControlFilters = new ArrayList<>();
                }
                if (!this.mControlFilters.contains(intentFilter)) {
                    this.mControlFilters.add(intentFilter);
                }
                return this;
            }
            throw new IllegalArgumentException("filter must not be null");
        }

        public Builder addControlFilters(Collection<IntentFilter> collection) {
            if (collection != null) {
                if (!collection.isEmpty()) {
                    for (IntentFilter addControlFilter : collection) {
                        addControlFilter(addControlFilter);
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("filters must not be null");
        }

        public Builder setPlaybackType(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PLAYBACK_TYPE, i);
            return this;
        }

        public Builder setPlaybackStream(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PLAYBACK_STREAM, i);
            return this;
        }

        public Builder setDeviceType(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_DEVICE_TYPE, i);
            return this;
        }

        public Builder setVolume(int i) {
            this.mBundle.putInt("volume", i);
            return this;
        }

        public Builder setVolumeMax(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_VOLUME_MAX, i);
            return this;
        }

        public Builder setVolumeHandling(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_VOLUME_HANDLING, i);
            return this;
        }

        public Builder setPresentationDisplayId(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PRESENTATION_DISPLAY_ID, i);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mBundle.putBundle(MediaRouteDescriptor.KEY_EXTRAS, bundle);
            return this;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public Builder setMinClientVersion(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_MIN_CLIENT_VERSION, i);
            return this;
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public Builder setMaxClientVersion(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_MAX_CLIENT_VERSION, i);
            return this;
        }

        public MediaRouteDescriptor build() {
            ArrayList<IntentFilter> arrayList = this.mControlFilters;
            if (arrayList != null) {
                this.mBundle.putParcelableArrayList(MediaRouteDescriptor.KEY_CONTROL_FILTERS, arrayList);
            }
            ArrayList<String> arrayList2 = this.mGroupMemberIds;
            if (arrayList2 != null) {
                this.mBundle.putStringArrayList(MediaRouteDescriptor.KEY_GROUP_MEMBER_IDS, arrayList2);
            }
            return new MediaRouteDescriptor(this.mBundle, this.mControlFilters);
        }
    }

    MediaRouteDescriptor(Bundle bundle, List<IntentFilter> list) {
        this.mBundle = bundle;
        this.mControlFilters = list;
    }

    public String getId() {
        return this.mBundle.getString("id");
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public List<String> getGroupMemberIds() {
        return this.mBundle.getStringArrayList(KEY_GROUP_MEMBER_IDS);
    }

    public String getName() {
        return this.mBundle.getString("name");
    }

    public String getDescription() {
        return this.mBundle.getString("status");
    }

    public Uri getIconUri() {
        String string = this.mBundle.getString(KEY_ICON_URI);
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public boolean isEnabled() {
        return this.mBundle.getBoolean(KEY_ENABLED, true);
    }

    @Deprecated
    public boolean isConnecting() {
        return this.mBundle.getBoolean(KEY_CONNECTING, false);
    }

    public int getConnectionState() {
        return this.mBundle.getInt(KEY_CONNECTION_STATE, 0);
    }

    public boolean canDisconnectAndKeepPlaying() {
        return this.mBundle.getBoolean(KEY_CAN_DISCONNECT, false);
    }

    public IntentSender getSettingsActivity() {
        return (IntentSender) this.mBundle.getParcelable(KEY_SETTINGS_INTENT);
    }

    public List<IntentFilter> getControlFilters() {
        ensureControlFilters();
        return this.mControlFilters;
    }

    /* access modifiers changed from: 0000 */
    public void ensureControlFilters() {
        if (this.mControlFilters == null) {
            this.mControlFilters = this.mBundle.getParcelableArrayList(KEY_CONTROL_FILTERS);
            if (this.mControlFilters == null) {
                this.mControlFilters = Collections.emptyList();
            }
        }
    }

    public int getPlaybackType() {
        return this.mBundle.getInt(KEY_PLAYBACK_TYPE, 1);
    }

    public int getPlaybackStream() {
        return this.mBundle.getInt(KEY_PLAYBACK_STREAM, -1);
    }

    public int getDeviceType() {
        return this.mBundle.getInt(KEY_DEVICE_TYPE);
    }

    public int getVolume() {
        return this.mBundle.getInt("volume");
    }

    public int getVolumeMax() {
        return this.mBundle.getInt(KEY_VOLUME_MAX);
    }

    public int getVolumeHandling() {
        return this.mBundle.getInt(KEY_VOLUME_HANDLING, 0);
    }

    public int getPresentationDisplayId() {
        return this.mBundle.getInt(KEY_PRESENTATION_DISPLAY_ID, -1);
    }

    public Bundle getExtras() {
        return this.mBundle.getBundle(KEY_EXTRAS);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public int getMinClientVersion() {
        return this.mBundle.getInt(KEY_MIN_CLIENT_VERSION, 1);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public int getMaxClientVersion() {
        return this.mBundle.getInt(KEY_MAX_CLIENT_VERSION, Integer.MAX_VALUE);
    }

    public boolean isValid() {
        ensureControlFilters();
        return !TextUtils.isEmpty(getId()) && !TextUtils.isEmpty(getName()) && !this.mControlFilters.contains(null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MediaRouteDescriptor{ ");
        sb.append("id=");
        sb.append(getId());
        sb.append(", groupMemberIds=");
        sb.append(getGroupMemberIds());
        sb.append(", name=");
        sb.append(getName());
        sb.append(", description=");
        sb.append(getDescription());
        sb.append(", iconUri=");
        sb.append(getIconUri());
        sb.append(", isEnabled=");
        sb.append(isEnabled());
        sb.append(", isConnecting=");
        sb.append(isConnecting());
        sb.append(", connectionState=");
        sb.append(getConnectionState());
        sb.append(", controlFilters=");
        sb.append(Arrays.toString(getControlFilters().toArray()));
        sb.append(", playbackType=");
        sb.append(getPlaybackType());
        sb.append(", playbackStream=");
        sb.append(getPlaybackStream());
        sb.append(", deviceType=");
        sb.append(getDeviceType());
        sb.append(", volume=");
        sb.append(getVolume());
        sb.append(", volumeMax=");
        sb.append(getVolumeMax());
        sb.append(", volumeHandling=");
        sb.append(getVolumeHandling());
        sb.append(", presentationDisplayId=");
        sb.append(getPresentationDisplayId());
        sb.append(", extras=");
        sb.append(getExtras());
        sb.append(", isValid=");
        sb.append(isValid());
        sb.append(", minClientVersion=");
        sb.append(getMinClientVersion());
        sb.append(", maxClientVersion=");
        sb.append(getMaxClientVersion());
        sb.append(" }");
        return sb.toString();
    }

    public Bundle asBundle() {
        return this.mBundle;
    }

    public static MediaRouteDescriptor fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaRouteDescriptor(bundle, null);
        }
        return null;
    }
}