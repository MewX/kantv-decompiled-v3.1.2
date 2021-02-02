package com.google.android.gms.cast.framework;

import android.app.Activity;
import android.content.Context;
import android.preference.PreferenceManager;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.StringRes;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzn;
import com.google.android.gms.internal.cast.zzr;

public interface IntroductoryOverlay {

    public static class Builder {
        private final Activity zzhy;
        private final View zzhz;
        private int zzia;
        private String zzib;
        private OnOverlayDismissedListener zzic;
        private boolean zzid;
        private float zzie;
        private String zzif;

        public Builder(Activity activity, MenuItem menuItem) {
            this.zzhy = (Activity) Preconditions.checkNotNull(activity);
            this.zzhz = ((MenuItem) Preconditions.checkNotNull(menuItem)).getActionView();
        }

        public Builder(Activity activity, MediaRouteButton mediaRouteButton) {
            this.zzhy = (Activity) Preconditions.checkNotNull(activity);
            this.zzhz = (View) Preconditions.checkNotNull(mediaRouteButton);
        }

        public Builder setOverlayColor(@ColorRes int i) {
            this.zzia = this.zzhy.getResources().getColor(i);
            return this;
        }

        public Builder setTitleText(String str) {
            this.zzib = str;
            return this;
        }

        public Builder setTitleText(@StringRes int i) {
            this.zzib = this.zzhy.getResources().getString(i);
            return this;
        }

        public Builder setOnOverlayDismissedListener(OnOverlayDismissedListener onOverlayDismissedListener) {
            this.zzic = onOverlayDismissedListener;
            return this;
        }

        public Builder setSingleTime() {
            this.zzid = true;
            return this;
        }

        public Builder setFocusRadiusId(@DimenRes int i) {
            this.zzie = this.zzhy.getResources().getDimension(i);
            return this;
        }

        public Builder setFocusRadius(float f) {
            this.zzie = f;
            return this;
        }

        public Builder setButtonText(String str) {
            this.zzif = str;
            return this;
        }

        public Builder setButtonText(@StringRes int i) {
            this.zzif = this.zzhy.getResources().getString(i);
            return this;
        }

        public final Activity getActivity() {
            return this.zzhy;
        }

        public final View zzac() {
            return this.zzhz;
        }

        public final OnOverlayDismissedListener zzad() {
            return this.zzic;
        }

        public final int zzae() {
            return this.zzia;
        }

        public final boolean zzaf() {
            return this.zzid;
        }

        public final String zzag() {
            return this.zzib;
        }

        public final String zzah() {
            return this.zzif;
        }

        public final float zzai() {
            return this.zzie;
        }

        public IntroductoryOverlay build() {
            if (PlatformVersion.isAtLeastJellyBean()) {
                return new zzn(this);
            }
            return new zzr(this);
        }
    }

    public interface OnOverlayDismissedListener {
        void onOverlayDismissed();
    }

    public static class zza {
        public static void zzd(Context context) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("googlecast-introOverlayShown", true).apply();
        }

        public static boolean zze(Context context) {
            return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("googlecast-introOverlayShown", false);
        }
    }

    void remove();

    void show();
}
