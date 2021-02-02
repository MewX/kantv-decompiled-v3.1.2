package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzan;
import com.google.android.gms.internal.cast.zzao;
import com.google.android.gms.internal.cast.zzaq;
import com.google.android.gms.internal.cast.zzas;
import com.google.android.gms.internal.cast.zzav;
import com.google.android.gms.internal.cast.zzaw;
import com.google.android.gms.internal.cast.zzax;
import com.google.android.gms.internal.cast.zzay;
import com.google.android.gms.internal.cast.zzba;
import com.google.android.gms.internal.cast.zzbb;
import com.google.android.gms.internal.cast.zzbc;
import com.google.android.gms.internal.cast.zzbd;
import com.google.android.gms.internal.cast.zzbe;
import com.google.android.gms.internal.cast.zzbf;
import com.google.android.gms.internal.cast.zzbg;
import com.google.android.gms.internal.cast.zzbh;
import com.google.android.gms.internal.cast.zzbi;
import com.google.android.gms.internal.cast.zzbj;
import com.google.android.gms.internal.cast.zzbk;
import com.google.android.gms.internal.cast.zzdg;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UIMediaController implements SessionManagerListener<CastSession>, Listener {
    private static final zzdg zzbe = new zzdg("UIMediaController");
    private final SessionManager zzgv;
    private RemoteMediaClient zzhs;
    private final Activity zzhy;
    private final Map<View, List<UIController>> zzqn = new HashMap();
    private final Set<zzbi> zzqo = new HashSet();
    private Listener zzqp;

    public UIMediaController(Activity activity) {
        this.zzhy = activity;
        CastContext zzb = CastContext.zzb(activity);
        this.zzgv = zzb != null ? zzb.getSessionManager() : null;
        if (this.zzgv != null) {
            SessionManager sessionManager = CastContext.getSharedInstance(activity).getSessionManager();
            sessionManager.addSessionManagerListener(this, CastSession.class);
            zza(sessionManager.getCurrentCastSession());
        }
    }

    public void onSessionEnding(CastSession castSession) {
    }

    public void onSessionResuming(CastSession castSession, String str) {
    }

    public void onSessionStarting(CastSession castSession) {
    }

    public void onSessionSuspended(CastSession castSession, int i) {
    }

    public boolean isActive() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzhs != null;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzhs;
    }

    public void setPostRemoteMediaClientListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzqp = listener;
    }

    public void dispose() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzcm();
        this.zzqn.clear();
        SessionManager sessionManager = this.zzgv;
        if (sessionManager != null) {
            sessionManager.removeSessionManagerListener(this, CastSession.class);
        }
        this.zzqp = null;
    }

    public void bindImageViewToPlayPauseToggle(@NonNull ImageView imageView, @NonNull Drawable drawable, @NonNull Drawable drawable2, Drawable drawable3, View view, boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zza(this));
        zzba zzba = new zzba(imageView, this.zzhy, drawable, drawable2, drawable3, view, z);
        zza(imageView, zzba);
    }

    public void bindViewToSkipNext(View view, int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzb(this));
        zza(view, new zzbe(view, i));
    }

    public void bindViewToSkipPrev(View view, int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzc(this));
        zza(view, new zzbf(view, i));
    }

    public void bindViewToForward(View view, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzd(this, j));
        zza(view, new zzbd(view));
    }

    public void bindViewToRewind(View view, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zze(this, j));
        zza(view, new zzbd(view));
    }

    public void bindViewToLoadingIndicator(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(view, new zzav(view));
    }

    public void bindProgressBar(ProgressBar progressBar) {
        bindProgressBar(progressBar, 1000);
    }

    public void bindProgressBar(ProgressBar progressBar, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(progressBar, new zzbb(progressBar, j));
    }

    public void bindSeekBar(SeekBar seekBar) {
        bindSeekBar(seekBar, 1000);
    }

    public void bindSeekBar(SeekBar seekBar, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        seekBar.setOnSeekBarChangeListener(new zzf(this));
        zza(seekBar, new zzbc(seekBar, j));
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z) {
        bindTextViewToStreamPosition(textView, z, 1000);
    }

    public void bindTextViewToStreamPosition(TextView textView, boolean z, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzbi zzbi = new zzbi(textView, j, this.zzhy.getString(R.string.cast_invalid_stream_position_text));
        if (z) {
            this.zzqo.add(zzbi);
        }
        zza(textView, zzbi);
    }

    public void bindTextViewToStreamDuration(TextView textView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(textView, new zzbh(textView, this.zzhy.getString(R.string.cast_invalid_stream_duration_text), null));
    }

    public void bindTextViewToStreamDuration(TextView textView, View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(textView, new zzbh(textView, this.zzhy.getString(R.string.cast_invalid_stream_duration_text), view));
    }

    public void bindViewToLaunchExpandedController(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzg(this));
        zza(view, new zzas(view));
    }

    public void bindViewToClosedCaption(View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        view.setOnClickListener(new zzh(this));
        zza(view, new zzan(view, this.zzhy));
    }

    public void bindImageViewToMuteToggle(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzi(this));
        zza(imageView, new zzay(imageView, this.zzhy));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, String str) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        bindTextViewToMetadataOfCurrentItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfCurrentItem(TextView textView, List<String> list) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(textView, new zzax(textView, list));
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, @DrawableRes int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaq zzaq = new zzaq(imageView, this.zzhy, new ImageHints(i, 0, 0), i2, null);
        zza(imageView, zzaq);
    }

    @Deprecated
    public void bindImageViewToImageOfCurrentItem(ImageView imageView, int i, View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaq zzaq = new zzaq(imageView, this.zzhy, new ImageHints(i, 0, 0), 0, view);
        zza(imageView, zzaq);
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, @NonNull ImageHints imageHints, @DrawableRes int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaq zzaq = new zzaq(imageView, this.zzhy, imageHints, i, null);
        zza(imageView, zzaq);
    }

    public void bindImageViewToImageOfCurrentItem(ImageView imageView, @NonNull ImageHints imageHints, View view) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaq zzaq = new zzaq(imageView, this.zzhy, imageHints, 0, view);
        zza(imageView, zzaq);
    }

    public void bindViewVisibilityToMediaSession(View view, int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(view, new zzbk(view, i));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, String str) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        bindTextViewToMetadataOfPreloadedItem(textView, Collections.singletonList(str));
    }

    public void bindTextViewToMetadataOfPreloadedItem(TextView textView, List<String> list) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(textView, new zzaw(textView, list));
    }

    @Deprecated
    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, int i, @DrawableRes int i2) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(imageView, new zzao(imageView, this.zzhy, new ImageHints(i, 0, 0), i2));
    }

    public void bindImageViewToImageOfPreloadedItem(ImageView imageView, @NonNull ImageHints imageHints, @DrawableRes int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(imageView, new zzao(imageView, this.zzhy, imageHints, i));
    }

    public void bindViewVisibilityToPreloadingEvent(View view, int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(view, new zzbj(view, i));
    }

    public void bindViewToUIController(View view, UIController uIController) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(view, uIController);
    }

    public void bindTextViewToSmartSubtitle(TextView textView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zza(textView, new zzbg(textView));
    }

    /* access modifiers changed from: protected */
    public void onMuteToggleClicked(ImageView imageView) {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzhy.getApplicationContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null && currentCastSession.isConnected()) {
            try {
                currentCastSession.setMute(!currentCastSession.isMute());
            } catch (IOException | IllegalArgumentException e) {
                zzbe.e("Unable to call CastSession.setMute(boolean).", e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onPlayPauseToggleClicked(ImageView imageView) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.togglePlayback();
        }
    }

    /* access modifiers changed from: protected */
    public void onSeekBarStopTrackingTouch(SeekBar seekBar) {
        if (this.zzqn.containsKey(seekBar)) {
            for (UIController uIController : (List) this.zzqn.get(seekBar)) {
                if (uIController instanceof zzbc) {
                    ((zzbc) uIController).zzj(true);
                }
            }
        }
        for (zzbi zzj : this.zzqo) {
            zzj.zzj(true);
        }
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.seek((long) seekBar.getProgress());
        }
    }

    /* access modifiers changed from: protected */
    public void onSeekBarStartTrackingTouch(SeekBar seekBar) {
        if (this.zzqn.containsKey(seekBar)) {
            for (UIController uIController : (List) this.zzqn.get(seekBar)) {
                if (uIController instanceof zzbc) {
                    ((zzbc) uIController).zzj(false);
                }
            }
        }
        for (zzbi zzj : this.zzqo) {
            zzj.zzj(false);
        }
    }

    /* access modifiers changed from: protected */
    public void onSeekBarProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            for (zzbi zzc : this.zzqo) {
                zzc.zzc((long) i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onClosedCaptionClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && (this.zzhy instanceof FragmentActivity)) {
            TracksChooserDialogFragment newInstance = TracksChooserDialogFragment.newInstance();
            FragmentActivity fragmentActivity = (FragmentActivity) this.zzhy;
            FragmentTransaction beginTransaction = fragmentActivity.getSupportFragmentManager().beginTransaction();
            String str = "TRACKS_CHOOSER_DIALOG_TAG";
            Fragment findFragmentByTag = fragmentActivity.getSupportFragmentManager().findFragmentByTag(str);
            if (findFragmentByTag != null) {
                beginTransaction.remove(findFragmentByTag);
            }
            remoteMediaClient.getMediaInfo();
            remoteMediaClient.getMediaStatus().getActiveTrackIds();
            newInstance.show(beginTransaction, str);
        }
    }

    /* access modifiers changed from: protected */
    public void onForwardClicked(View view, long j) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.seek(remoteMediaClient.getApproximateStreamPosition() + j);
        }
    }

    /* access modifiers changed from: protected */
    public void onLaunchExpandedControllerClicked(View view) {
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(this.zzhy).getCastOptions().getCastMediaOptions();
        if (castMediaOptions != null && !TextUtils.isEmpty(castMediaOptions.getExpandedControllerActivityClassName())) {
            ComponentName componentName = new ComponentName(this.zzhy.getApplicationContext(), castMediaOptions.getExpandedControllerActivityClassName());
            Intent intent = new Intent();
            intent.setComponent(componentName);
            this.zzhy.startActivity(intent);
        }
    }

    /* access modifiers changed from: protected */
    public void onRewindClicked(View view, long j) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.seek(remoteMediaClient.getApproximateStreamPosition() - j);
        }
    }

    /* access modifiers changed from: protected */
    public void onSkipNextClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.queueNext(null);
        }
    }

    /* access modifiers changed from: protected */
    public void onSkipPrevClicked(View view) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            remoteMediaClient.queuePrev(null);
        }
    }

    public void onSessionStarted(CastSession castSession, String str) {
        zza(castSession);
    }

    public void onSessionResumed(CastSession castSession, boolean z) {
        zza(castSession);
    }

    public void onSessionStartFailed(CastSession castSession, int i) {
        zzcm();
    }

    public void onSessionEnded(CastSession castSession, int i) {
        zzcm();
    }

    public void onSessionResumeFailed(CastSession castSession, int i) {
        zzcm();
    }

    public void onStatusUpdated() {
        zzcn();
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onStatusUpdated();
        }
    }

    public void onMetadataUpdated() {
        zzcn();
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onMetadataUpdated();
        }
    }

    public void onQueueStatusUpdated() {
        zzcn();
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onQueueStatusUpdated();
        }
    }

    public void onPreloadStatusUpdated() {
        zzcn();
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onPreloadStatusUpdated();
        }
    }

    public void onAdBreakStatusUpdated() {
        zzcn();
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onAdBreakStatusUpdated();
        }
    }

    public void onSendingRemoteMediaRequest() {
        for (List<UIController> it : this.zzqn.values()) {
            for (UIController onSendingRemoteMediaRequest : it) {
                onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
            }
        }
        Listener listener = this.zzqp;
        if (listener != null) {
            listener.onSendingRemoteMediaRequest();
        }
    }

    private final void zza(Session session) {
        if (!isActive() && (session instanceof CastSession) && session.isConnected()) {
            CastSession castSession = (CastSession) session;
            this.zzhs = castSession.getRemoteMediaClient();
            RemoteMediaClient remoteMediaClient = this.zzhs;
            if (remoteMediaClient != null) {
                remoteMediaClient.addListener(this);
                for (List<UIController> it : this.zzqn.values()) {
                    for (UIController onSessionConnected : it) {
                        onSessionConnected.onSessionConnected(castSession);
                    }
                }
                zzcn();
            }
        }
    }

    private final void zzcm() {
        if (isActive()) {
            for (List<UIController> it : this.zzqn.values()) {
                for (UIController onSessionEnded : it) {
                    onSessionEnded.onSessionEnded();
                }
            }
            this.zzhs.removeListener(this);
            this.zzhs = null;
        }
    }

    private final void zza(View view, UIController uIController) {
        if (this.zzgv != null) {
            List list = (List) this.zzqn.get(view);
            if (list == null) {
                list = new ArrayList();
                this.zzqn.put(view, list);
            }
            list.add(uIController);
            if (isActive()) {
                uIController.onSessionConnected(this.zzgv.getCurrentCastSession());
                zzcn();
            }
        }
    }

    private final void zzcn() {
        for (List<UIController> it : this.zzqn.values()) {
            for (UIController onMediaStatusUpdated : it) {
                onMediaStatusUpdated.onMediaStatusUpdated();
            }
        }
    }
}
