package com.google.android.gms.cast.framework.media.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzam;
import com.google.android.gms.internal.cast.zzat;
import com.google.android.gms.internal.cast.zzx;
import com.google.android.gms.internal.cast.zzy;
import java.util.Timer;

public class ExpandedControllerActivity extends AppCompatActivity implements ControlButtonsContainer {
    private SessionManager zzgv;
    private final SessionManagerListener<CastSession> zzmp = new zzb(this, null);
    private final Listener zzqp = new zza(this, null);
    private SeekBar zzra;
    @DrawableRes
    private int zzrw;
    @ColorRes
    private int zzrx;
    @DrawableRes
    private int zzry;
    @DrawableRes
    private int zzrz;
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
    /* access modifiers changed from: private */
    public TextView zzsk;
    private ImageView zzsl;
    private ImageView zzsm;
    private zzam zzsn;
    private int[] zzso;
    private ImageView[] zzsp = new ImageView[4];
    private View zzsq;
    /* access modifiers changed from: private */
    public ImageView zzsr;
    /* access modifiers changed from: private */
    public TextView zzss;
    private TextView zzst;
    /* access modifiers changed from: private */
    public TextView zzsu;
    private TextView zzsv;
    private zzx zzsw;
    private UIMediaController zzsx;
    /* access modifiers changed from: private */
    public boolean zzsy;
    private boolean zzsz;
    private Timer zzta;

    private class zza implements Listener {
        private zza() {
        }

        public final void onPreloadStatusUpdated() {
        }

        public final void onQueueStatusUpdated() {
        }

        public final void onStatusUpdated() {
            RemoteMediaClient zzd = ExpandedControllerActivity.this.getRemoteMediaClient();
            if (zzd == null || !zzd.hasMediaSession()) {
                if (!ExpandedControllerActivity.this.zzsy) {
                    ExpandedControllerActivity.this.finish();
                }
                return;
            }
            ExpandedControllerActivity.this.zzsy = false;
            ExpandedControllerActivity.this.zzcu();
            ExpandedControllerActivity.this.zzcv();
        }

        public final void onMetadataUpdated() {
            ExpandedControllerActivity.this.zzct();
        }

        public final void onSendingRemoteMediaRequest() {
            ExpandedControllerActivity.this.zzsk.setText(ExpandedControllerActivity.this.getResources().getString(R.string.cast_expanded_controller_loading));
        }

        public final void onAdBreakStatusUpdated() {
            ExpandedControllerActivity.this.zzcv();
        }

        /* synthetic */ zza(ExpandedControllerActivity expandedControllerActivity, zza zza) {
            this();
        }
    }

    private class zzb implements SessionManagerListener<CastSession> {
        private zzb() {
        }

        public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        }

        public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        }

        public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        }

        public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        }

        public final /* synthetic */ void onSessionEnded(Session session, int i) {
            ExpandedControllerActivity.this.finish();
        }

        /* synthetic */ zzb(ExpandedControllerActivity expandedControllerActivity, zza zza) {
            this();
        }
    }

    public final int getButtonSlotCount() {
        return 4;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzgv = CastContext.getSharedInstance(this).getSessionManager();
        if (this.zzgv.getCurrentCastSession() == null) {
            finish();
        }
        this.zzsx = new UIMediaController(this);
        this.zzsx.setPostRemoteMediaClientListener(this.zzqp);
        setContentView(R.layout.cast_expanded_controller_activity);
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{androidx.appcompat.R.attr.selectableItemBackgroundBorderless, androidx.appcompat.R.attr.colorControlActivated});
        this.zzrw = obtainStyledAttributes.getResourceId(0, 0);
        this.zzrx = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        ColorStateList colorStateList = null;
        TypedArray obtainStyledAttributes2 = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.zzsj = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.zzry = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressDrawable, 0);
        this.zzrz = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSeekBarThumbDrawable, 0);
        this.zzsa = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.zzsb = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.zzsc = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.zzsd = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.zzse = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.zzsf = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.zzsg = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.zzsh = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.zzsi = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            Preconditions.checkArgument(obtainTypedArray.length() == 4);
            this.zzso = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.zzso[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
        } else {
            this.zzso = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        obtainStyledAttributes2.recycle();
        View findViewById = findViewById(R.id.expanded_controller_layout);
        UIMediaController uIMediaController = this.zzsx;
        this.zzsl = (ImageView) findViewById.findViewById(R.id.background_image_view);
        this.zzsm = (ImageView) findViewById.findViewById(R.id.blurred_background_image_view);
        View findViewById2 = findViewById.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        uIMediaController.bindImageViewToImageOfCurrentItem(this.zzsl, new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels), findViewById2);
        this.zzsk = (TextView) findViewById.findViewById(R.id.status_text);
        uIMediaController.bindViewToLoadingIndicator((ProgressBar) findViewById.findViewById(R.id.loading_indicator));
        TextView textView = (TextView) findViewById.findViewById(R.id.start_text);
        TextView textView2 = (TextView) findViewById.findViewById(R.id.end_text);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.live_stream_indicator);
        this.zzra = (SeekBar) findViewById.findViewById(R.id.seek_bar);
        Drawable drawable = getResources().getDrawable(this.zzry);
        if (drawable != null) {
            if (this.zzry == R.drawable.cast_expanded_controller_seekbar_track) {
                colorStateList = zzcs();
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable wrap = DrawableCompat.wrap(layerDrawable.findDrawableByLayerId(16908301));
                DrawableCompat.setTintList(wrap, colorStateList);
                layerDrawable.setDrawableByLayerId(16908301, wrap);
                layerDrawable.findDrawableByLayerId(16908288).setColorFilter(getResources().getColor(R.color.cast_expanded_controller_seek_bar_progress_background_tint_color), Mode.SRC_IN);
            }
            this.zzra.setProgressDrawable(drawable);
        }
        Drawable drawable2 = getResources().getDrawable(this.zzrz);
        if (drawable2 != null) {
            if (this.zzrz == R.drawable.cast_expanded_controller_seekbar_thumb) {
                if (colorStateList == null) {
                    colorStateList = zzcs();
                }
                drawable2 = DrawableCompat.wrap(drawable2);
                DrawableCompat.setTintList(drawable2, colorStateList);
            }
            this.zzra.setThumb(drawable2);
        }
        if (PlatformVersion.isAtLeastLollipop()) {
            this.zzra.setSplitTrack(false);
        }
        SeekBar seekBar = (SeekBar) findViewById.findViewById(R.id.live_stream_seek_bar);
        uIMediaController.bindTextViewToStreamPosition(textView, true);
        uIMediaController.bindTextViewToStreamDuration(textView2, imageView);
        uIMediaController.bindSeekBar(this.zzra);
        uIMediaController.bindViewToUIController(seekBar, new zzat(seekBar, this.zzra));
        this.zzsp[0] = (ImageView) findViewById.findViewById(R.id.button_0);
        this.zzsp[1] = (ImageView) findViewById.findViewById(R.id.button_1);
        this.zzsp[2] = (ImageView) findViewById.findViewById(R.id.button_2);
        this.zzsp[3] = (ImageView) findViewById.findViewById(R.id.button_3);
        zza(findViewById, R.id.button_0, this.zzso[0], uIMediaController);
        zza(findViewById, R.id.button_1, this.zzso[1], uIMediaController);
        zza(findViewById, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController);
        zza(findViewById, R.id.button_2, this.zzso[2], uIMediaController);
        zza(findViewById, R.id.button_3, this.zzso[3], uIMediaController);
        this.zzsq = findViewById(R.id.ad_container);
        this.zzsr = (ImageView) this.zzsq.findViewById(R.id.ad_image_view);
        this.zzst = (TextView) this.zzsq.findViewById(R.id.ad_label);
        this.zzss = (TextView) this.zzsq.findViewById(R.id.ad_in_progress_label);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById.findViewById(R.id.seek_bar_controls);
        zzam zzam = new zzam(this);
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.addRule(0, R.id.end_text);
        layoutParams.addRule(1, R.id.start_text);
        layoutParams.addRule(6, R.id.seek_bar);
        layoutParams.addRule(7, R.id.seek_bar);
        layoutParams.addRule(5, R.id.seek_bar);
        layoutParams.addRule(8, R.id.seek_bar);
        zzam.setLayoutParams(layoutParams);
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            zzam.setPaddingRelative(this.zzra.getPaddingStart(), this.zzra.getPaddingTop(), this.zzra.getPaddingEnd(), this.zzra.getPaddingBottom());
        } else {
            zzam.setPadding(this.zzra.getPaddingLeft(), this.zzra.getPaddingTop(), this.zzra.getPaddingRight(), this.zzra.getPaddingBottom());
        }
        zzam.setContentDescription(getResources().getString(R.string.cast_seek_bar));
        zzam.setBackgroundColor(0);
        relativeLayout.addView(zzam);
        this.zzsn = zzam;
        this.zzsv = (TextView) findViewById(R.id.ad_skip_text);
        this.zzsu = (TextView) findViewById(R.id.ad_skip_button);
        this.zzsu.setOnClickListener(new zzb(this));
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeAsUpIndicator(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
        zzcu();
        zzct();
        this.zzsw = new zzx(getApplicationContext(), new ImageHints(-1, this.zzsr.getWidth(), this.zzsr.getHeight()));
        this.zzsw.zza((zzy) new zza(this));
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        CastContext.getSharedInstance(this).getSessionManager().addSessionManagerListener(this.zzmp, CastSession.class);
        CastSession currentCastSession = CastContext.getSharedInstance(this).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || (!currentCastSession.isConnected() && !currentCastSession.isConnecting())) {
            finish();
        }
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        this.zzsy = remoteMediaClient == null || !remoteMediaClient.hasMediaSession();
        zzcu();
        zzcv();
        super.onResume();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        CastContext.getSharedInstance(this).getSessionManager().removeSessionManagerListener(this.zzmp, CastSession.class);
        super.onPause();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        this.zzsw.clear();
        UIMediaController uIMediaController = this.zzsx;
        if (uIMediaController != null) {
            uIMediaController.setPostRemoteMediaClientListener(null);
            this.zzsx.dispose();
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return true;
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility() ^ 2;
            if (PlatformVersion.isAtLeastJellyBean()) {
                systemUiVisibility ^= 4;
            }
            if (PlatformVersion.isAtLeastKitKat()) {
                systemUiVisibility ^= 4096;
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
            if (PlatformVersion.isAtLeastJellyBeanMR2()) {
                setImmersive(true);
            }
        }
    }

    public TextView getStatusTextView() {
        return this.zzsk;
    }

    public SeekBar getSeekBar() {
        return this.zzra;
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

    private final ColorStateList zzcs() {
        int color = getResources().getColor(this.zzrx);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.cast_expanded_controller_seekbar_disabled_alpha, typedValue, true);
        int[] iArr = {color, Color.argb((int) (typedValue.getFloat() * ((float) Color.alpha(color))), Color.red(color), Color.green(color), Color.blue(color))};
        return new ColorStateList(new int[][]{new int[]{16842910}, new int[]{-16842910}}, iArr);
    }

    private final void zza(View view, int i, int i2, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i2 != R.id.cast_button_type_custom) {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                imageView.setBackgroundResource(this.zzrw);
                Drawable zzb2 = zze.zzb(this, this.zzsj, this.zzsb);
                Drawable zzb3 = zze.zzb(this, this.zzsj, this.zzsa);
                Drawable zzb4 = zze.zzb(this, this.zzsj, this.zzsc);
                imageView.setImageDrawable(zzb3);
                uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzb3, zzb2, zzb4, null, false);
            } else if (i2 == R.id.cast_button_type_skip_previous) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzsd));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                uIMediaController.bindViewToSkipPrev(imageView, 0);
            } else if (i2 == R.id.cast_button_type_skip_next) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzse));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                uIMediaController.bindViewToSkipNext(imageView, 0);
            } else if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzsf));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                uIMediaController.bindViewToRewind(imageView, 30000);
            } else if (i2 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzsg));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                uIMediaController.bindViewToForward(imageView, 30000);
            } else if (i2 == R.id.cast_button_type_mute_toggle) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzsh));
                uIMediaController.bindImageViewToMuteToggle(imageView);
            } else if (i2 == R.id.cast_button_type_closed_caption) {
                imageView.setBackgroundResource(this.zzrw);
                imageView.setImageDrawable(zze.zzb(this, this.zzsj, this.zzsi));
                uIMediaController.bindViewToClosedCaption(imageView);
            }
        }
    }

    /* access modifiers changed from: private */
    public final RemoteMediaClient getRemoteMediaClient() {
        CastSession currentCastSession = this.zzgv.getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return null;
        }
        return currentCastSession.getRemoteMediaClient();
    }

    /* access modifiers changed from: private */
    public final void zzct() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
            if (mediaInfo != null) {
                MediaMetadata metadata = mediaInfo.getMetadata();
                if (metadata != null) {
                    ActionBar supportActionBar = getSupportActionBar();
                    if (supportActionBar != null) {
                        supportActionBar.setTitle((CharSequence) metadata.getString(MediaMetadata.KEY_TITLE));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public final void zzcu() {
        CastSession currentCastSession = this.zzgv.getCurrentCastSession();
        if (currentCastSession != null) {
            CastDevice castDevice = currentCastSession.getCastDevice();
            if (castDevice != null) {
                String friendlyName = castDevice.getFriendlyName();
                if (!TextUtils.isEmpty(friendlyName)) {
                    this.zzsk.setText(getResources().getString(R.string.cast_casting_to_device, new Object[]{friendlyName}));
                    return;
                }
            }
        }
        this.zzsk.setText("");
    }

    /* access modifiers changed from: private */
    public final void zzcv() {
        MediaInfo mediaInfo;
        MediaStatus mediaStatus;
        String str;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        String str2 = null;
        if (remoteMediaClient == null) {
            mediaInfo = null;
        } else {
            mediaInfo = remoteMediaClient.getMediaInfo();
        }
        if (remoteMediaClient == null) {
            mediaStatus = null;
        } else {
            mediaStatus = remoteMediaClient.getMediaStatus();
        }
        if (mediaStatus != null && mediaStatus.isPlayingAd()) {
            this.zzra.setEnabled(false);
            if (PlatformVersion.isAtLeastJellyBeanMR1() && this.zzsm.getVisibility() == 8) {
                Drawable drawable = this.zzsl.getDrawable();
                if (drawable != null && (drawable instanceof BitmapDrawable)) {
                    Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap != null) {
                        Bitmap zza2 = zze.zza(this, bitmap, 0.25f, 7.5f);
                        if (zza2 != null) {
                            this.zzsm.setImageBitmap(zza2);
                            this.zzsm.setVisibility(0);
                        }
                    }
                }
            }
            AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
            if (currentAdBreakClip != null) {
                str = currentAdBreakClip.getTitle();
                str2 = currentAdBreakClip.getImageUrl();
            } else {
                str = null;
            }
            this.zzss.setVisibility(0);
            if (!TextUtils.isEmpty(str2)) {
                this.zzsw.zza(Uri.parse(str2));
            } else {
                this.zzsr.setVisibility(8);
            }
            TextView textView = this.zzst;
            if (TextUtils.isEmpty(str)) {
                str = getResources().getString(R.string.cast_ad_label);
            }
            textView.setText(str);
            this.zzra.setEnabled(false);
            this.zzsq.setVisibility(0);
            zza(currentAdBreakClip, remoteMediaClient);
        } else {
            this.zzra.setEnabled(true);
            this.zzsv.setVisibility(8);
            this.zzsu.setVisibility(8);
            this.zzsq.setVisibility(8);
            if (PlatformVersion.isAtLeastJellyBeanMR1()) {
                this.zzsm.setVisibility(8);
                this.zzsm.setImageBitmap(null);
            }
        }
        if (mediaInfo != null) {
            this.zzsn.zzj(this.zzra.getMax());
            this.zzsn.zzb(mediaInfo.getAdBreaks(), -1);
        }
    }

    /* access modifiers changed from: private */
    public final void zza(AdBreakClipInfo adBreakClipInfo, RemoteMediaClient remoteMediaClient) {
        if (!this.zzsy && !remoteMediaClient.isBuffering()) {
            this.zzsu.setVisibility(8);
            if (!(adBreakClipInfo == null || adBreakClipInfo.getWhenSkippableInMs() == -1)) {
                if (!this.zzsz) {
                    zzc zzc = new zzc(this, adBreakClipInfo, remoteMediaClient);
                    this.zzta = new Timer();
                    this.zzta.scheduleAtFixedRate(zzc, 0, 500);
                    this.zzsz = true;
                }
                float whenSkippableInMs = (float) (adBreakClipInfo.getWhenSkippableInMs() - remoteMediaClient.getApproximateAdBreakClipPositionMs());
                if (whenSkippableInMs <= 0.0f) {
                    this.zzsv.setVisibility(8);
                    if (this.zzsz) {
                        this.zzta.cancel();
                        this.zzsz = false;
                    }
                    this.zzsu.setVisibility(0);
                    this.zzsu.setClickable(true);
                    return;
                }
                this.zzsv.setVisibility(0);
                this.zzsv.setText(String.format(getResources().getString(R.string.cast_expanded_controller_skip_ad_text), new Object[]{Integer.valueOf(((int) whenSkippableInMs) / 1000)}));
                this.zzsu.setClickable(false);
            }
        }
    }
}
