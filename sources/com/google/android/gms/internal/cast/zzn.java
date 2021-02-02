package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.RelativeLayout;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.IntroductoryOverlay.Builder;
import com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.internal.featurehighlight.zza;
import com.google.android.gms.cast.framework.internal.featurehighlight.zzi;

public final class zzn extends RelativeLayout implements IntroductoryOverlay {
    private int color;
    /* access modifiers changed from: private */
    public Activity zzhy;
    private View zzhz;
    private String zzib;
    /* access modifiers changed from: private */
    public OnOverlayDismissedListener zzic;
    private final boolean zzit;
    /* access modifiers changed from: private */
    public zza zziu;
    /* access modifiers changed from: private */
    public boolean zziv;

    @TargetApi(15)
    public zzn(Builder builder) {
        super(builder.getActivity());
        this.zzhy = builder.getActivity();
        this.zzit = builder.zzaf();
        this.zzic = builder.zzad();
        this.zzhz = builder.zzac();
        this.zzib = builder.zzag();
        this.color = builder.zzae();
    }

    /* access modifiers changed from: private */
    public final void reset() {
        removeAllViews();
        this.zzhy = null;
        this.zzic = null;
        this.zzhz = null;
        this.zziu = null;
        this.zzib = null;
        this.color = 0;
        this.zziv = false;
    }

    public final void show() {
        Activity activity = this.zzhy;
        if (activity != null && this.zzhz != null && !this.zziv && !zzg(activity)) {
            if (!this.zzit || !IntroductoryOverlay.zza.zze(this.zzhy)) {
                this.zziu = new zza(this.zzhy);
                int i = this.color;
                if (i != 0) {
                    this.zziu.zzg(i);
                }
                addView(this.zziu);
                zzi zzi = (zzi) this.zzhy.getLayoutInflater().inflate(R.layout.cast_help_text, this.zziu, false);
                zzi.setText(this.zzib, null);
                this.zziu.zza(zzi);
                this.zziu.zza(this.zzhz, null, true, new zzo(this));
                this.zziv = true;
                ((ViewGroup) this.zzhy.getWindow().getDecorView()).addView(this);
                this.zziu.zza((Runnable) null);
                return;
            }
            reset();
        }
    }

    public final void remove() {
        if (this.zziv) {
            ((ViewGroup) this.zzhy.getWindow().getDecorView()).removeView(this);
            reset();
        }
    }

    static boolean zzg(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        return accessibilityManager != null && accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
    }
}
