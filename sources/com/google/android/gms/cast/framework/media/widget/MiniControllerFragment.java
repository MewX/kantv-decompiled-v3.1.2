package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.fragment.app.Fragment;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzdg;

public class MiniControllerFragment extends Fragment implements ControlButtonsContainer {
    private static final zzdg zzbe = new zzdg("MiniControllerFragment");
    @DrawableRes
    private int zzsa;
    @DrawableRes
    private int zzsb;
    @DrawableRes
    private int zzsc;
    @DrawableRes
    private int zzsd;
    @DrawableRes
    private int zzse;
    @DrawableRes
    private int zzsf;
    @DrawableRes
    private int zzsg;
    @DrawableRes
    private int zzsh;
    @DrawableRes
    private int zzsi;
    private int zzsj;
    private int[] zzso;
    private ImageView[] zzsp = new ImageView[3];
    private UIMediaController zzsx;
    private boolean zztf;
    private int zztg;
    private int zzth;
    private TextView zzti;
    private int zztj;
    private int zztk;
    private int zztl;
    @DrawableRes
    private int zztm;
    @DrawableRes
    private int zztn;
    @DrawableRes
    private int zzto;

    public final int getButtonSlotCount() {
        return 3;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        if (this.zzso == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CastMiniController, R.attr.castMiniControllerStyle, R.style.CastMiniController);
            this.zztf = obtainStyledAttributes.getBoolean(R.styleable.CastMiniController_castShowImageThumbnail, true);
            this.zztg = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castTitleTextAppearance, 0);
            this.zzth = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
            this.zztj = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castBackground, 0);
            this.zztk = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castProgressBarColor, 0);
            this.zzsj = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castButtonColor, 0);
            this.zzsa = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zzsb = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzsc = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zztm = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zztn = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzto = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zzsd = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
            this.zzse = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
            this.zzsf = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
            this.zzsg = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
            this.zzsh = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
            this.zzsi = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castControlButtons, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                Preconditions.checkArgument(obtainTypedArray.length() == 3);
                this.zzso = new int[obtainTypedArray.length()];
                for (int i = 0; i < obtainTypedArray.length(); i++) {
                    this.zzso[i] = obtainTypedArray.getResourceId(i, 0);
                }
                obtainTypedArray.recycle();
                if (this.zztf) {
                    this.zzso[0] = R.id.cast_button_type_empty;
                }
                this.zztl = 0;
                for (int i2 : this.zzso) {
                    if (i2 != R.id.cast_button_type_empty) {
                        this.zztl++;
                    }
                }
            } else {
                zzbe.w("Unable to read attribute castControlButtons.", new Object[0]);
                this.zzso = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
            }
            obtainStyledAttributes.recycle();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zzsx = new UIMediaController(getActivity());
        View inflate = layoutInflater.inflate(R.layout.cast_mini_controller, viewGroup);
        inflate.setVisibility(8);
        this.zzsx.bindViewVisibilityToMediaSession(inflate, 8);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.container_current);
        int i = this.zztj;
        if (i != 0) {
            relativeLayout.setBackgroundResource(i);
        }
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon_view);
        TextView textView = (TextView) inflate.findViewById(R.id.title_view);
        if (this.zztg != 0) {
            textView.setTextAppearance(getActivity(), this.zztg);
        }
        this.zzti = (TextView) inflate.findViewById(R.id.subtitle_view);
        if (this.zzth != 0) {
            this.zzti.setTextAppearance(getActivity(), this.zzth);
        }
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        if (this.zztk != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.zztk, Mode.SRC_IN);
        }
        this.zzsx.bindTextViewToMetadataOfCurrentItem(textView, MediaMetadata.KEY_TITLE);
        this.zzsx.bindTextViewToSmartSubtitle(this.zzti);
        this.zzsx.bindProgressBar(progressBar);
        this.zzsx.bindViewToLaunchExpandedController(relativeLayout);
        if (this.zztf) {
            this.zzsx.bindImageViewToImageOfCurrentItem(imageView, new ImageHints(2, getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_height)), R.drawable.cast_album_art_placeholder);
        } else {
            imageView.setVisibility(8);
        }
        this.zzsp[0] = (ImageView) relativeLayout.findViewById(R.id.button_0);
        this.zzsp[1] = (ImageView) relativeLayout.findViewById(R.id.button_1);
        this.zzsp[2] = (ImageView) relativeLayout.findViewById(R.id.button_2);
        zza(relativeLayout, R.id.button_0, 0);
        zza(relativeLayout, R.id.button_1, 1);
        zza(relativeLayout, R.id.button_2, 2);
        return inflate;
    }

    public void onDestroy() {
        UIMediaController uIMediaController = this.zzsx;
        if (uIMediaController != null) {
            uIMediaController.dispose();
            this.zzsx = null;
        }
        super.onDestroy();
    }

    public final int getButtonTypeAt(int i) throws IndexOutOfBoundsException {
        return this.zzso[i];
    }

    public final ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException {
        return this.zzsp[i];
    }

    public UIMediaController getUIMediaController() {
        return this.zzsx;
    }

    private final void zza(RelativeLayout relativeLayout, int i, int i2) {
        ImageView imageView = (ImageView) relativeLayout.findViewById(i);
        int i3 = this.zzso[i2];
        if (i3 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i3 != R.id.cast_button_type_custom) {
            if (i3 == R.id.cast_button_type_play_pause_toggle) {
                int i4 = this.zzsa;
                int i5 = this.zzsb;
                int i6 = this.zzsc;
                if (this.zztl == 1) {
                    i4 = this.zztm;
                    i5 = this.zztn;
                    i6 = this.zzto;
                }
                Drawable zza = zze.zza(getContext(), this.zzsj, i4);
                Drawable zza2 = zze.zza(getContext(), this.zzsj, i5);
                Drawable zza3 = zze.zza(getContext(), this.zzsj, i6);
                imageView.setImageDrawable(zza2);
                ProgressBar progressBar = new ProgressBar(getContext());
                LayoutParams layoutParams = new LayoutParams(-2, -2);
                layoutParams.addRule(8, i);
                layoutParams.addRule(6, i);
                layoutParams.addRule(5, i);
                layoutParams.addRule(7, i);
                layoutParams.addRule(15);
                progressBar.setLayoutParams(layoutParams);
                progressBar.setVisibility(8);
                Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
                int i7 = this.zztk;
                if (!(i7 == 0 || indeterminateDrawable == null)) {
                    indeterminateDrawable.setColorFilter(i7, Mode.SRC_IN);
                }
                relativeLayout.addView(progressBar);
                this.zzsx.bindImageViewToPlayPauseToggle(imageView, zza, zza2, zza3, progressBar, true);
            } else if (i3 == R.id.cast_button_type_skip_previous) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzsd));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                this.zzsx.bindViewToSkipPrev(imageView, 0);
            } else if (i3 == R.id.cast_button_type_skip_next) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzse));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                this.zzsx.bindViewToSkipNext(imageView, 0);
            } else if (i3 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzsf));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                this.zzsx.bindViewToRewind(imageView, 30000);
            } else if (i3 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzsg));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                this.zzsx.bindViewToForward(imageView, 30000);
            } else if (i3 == R.id.cast_button_type_mute_toggle) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzsh));
                this.zzsx.bindImageViewToMuteToggle(imageView);
            } else if (i3 == R.id.cast_button_type_closed_caption) {
                imageView.setImageDrawable(zze.zza(getContext(), this.zzsj, this.zzsi));
                this.zzsx.bindViewToClosedCaption(imageView);
            }
        }
    }
}
