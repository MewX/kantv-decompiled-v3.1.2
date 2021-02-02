package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo.Scope;
import androidx.fragment.app.DialogFragment;
import androidx.mediarouter.media.MediaRouteSelector;

public class MediaRouteChooserDialogFragment extends DialogFragment {
    private static final String ARGUMENT_SELECTOR = "selector";
    private static final boolean USE_SUPPORT_DYNAMIC_GROUP = Log.isLoggable("UseSupportDynamicGroup", 3);
    private Dialog mDialog;
    private MediaRouteSelector mSelector;

    public MediaRouteChooserDialogFragment() {
        setCancelable(true);
    }

    public MediaRouteSelector getRouteSelector() {
        ensureRouteSelector();
        return this.mSelector;
    }

    private void ensureRouteSelector() {
        if (this.mSelector == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.mSelector = MediaRouteSelector.fromBundle(arguments.getBundle(ARGUMENT_SELECTOR));
            }
            if (this.mSelector == null) {
                this.mSelector = MediaRouteSelector.EMPTY;
            }
        }
    }

    public void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            ensureRouteSelector();
            if (!this.mSelector.equals(mediaRouteSelector)) {
                this.mSelector = mediaRouteSelector;
                Bundle arguments = getArguments();
                if (arguments == null) {
                    arguments = new Bundle();
                }
                arguments.putBundle(ARGUMENT_SELECTOR, mediaRouteSelector.asBundle());
                setArguments(arguments);
                Dialog dialog = this.mDialog;
                if (dialog == null) {
                    return;
                }
                if (USE_SUPPORT_DYNAMIC_GROUP) {
                    ((MediaRouteDevicePickerDialog) dialog).setRouteSelector(mediaRouteSelector);
                } else {
                    ((MediaRouteChooserDialog) dialog).setRouteSelector(mediaRouteSelector);
                }
            }
        } else {
            throw new IllegalArgumentException("selector must not be null");
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public MediaRouteDevicePickerDialog onCreateDevicePickerDialog(Context context) {
        return new MediaRouteDevicePickerDialog(context);
    }

    public MediaRouteChooserDialog onCreateChooserDialog(Context context, Bundle bundle) {
        return new MediaRouteChooserDialog(context);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (USE_SUPPORT_DYNAMIC_GROUP) {
            this.mDialog = onCreateDevicePickerDialog(getContext());
            ((MediaRouteDevicePickerDialog) this.mDialog).setRouteSelector(getRouteSelector());
        } else {
            this.mDialog = onCreateChooserDialog(getContext(), bundle);
            ((MediaRouteChooserDialog) this.mDialog).setRouteSelector(getRouteSelector());
        }
        return this.mDialog;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Dialog dialog = this.mDialog;
        if (dialog != null) {
            if (USE_SUPPORT_DYNAMIC_GROUP) {
                ((MediaRouteDevicePickerDialog) dialog).updateLayout();
            } else {
                ((MediaRouteChooserDialog) dialog).updateLayout();
            }
        }
    }
}
