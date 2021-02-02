package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;

public final class zzaq extends UIController {
    private final ImagePicker zzkz;
    private final zzx zzlk;
    private final ImageHints zzll;
    /* access modifiers changed from: private */
    public final ImageView zzqt;
    private final Bitmap zzqw;
    /* access modifiers changed from: private */
    public final View zzqx;

    public zzaq(ImageView imageView, Context context, @NonNull ImageHints imageHints, int i, View view) {
        this.zzqt = imageView;
        this.zzll = imageHints;
        ImagePicker imagePicker = null;
        this.zzqw = i != 0 ? BitmapFactory.decodeResource(context.getResources(), i) : null;
        this.zzqx = view;
        CastContext zzb = CastContext.zzb(context);
        if (zzb != null) {
            CastMediaOptions castMediaOptions = zzb.getCastOptions().getCastMediaOptions();
            if (castMediaOptions != null) {
                imagePicker = castMediaOptions.getImagePicker();
            }
            this.zzkz = imagePicker;
        } else {
            this.zzkz = null;
        }
        this.zzlk = new zzx(context.getApplicationContext());
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzlk.zza((zzy) new zzar(this));
        zzcp();
        zzco();
    }

    public final void onSessionEnded() {
        this.zzlk.clear();
        zzcp();
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    private final void zzco() {
        Uri uri;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            zzcp();
            return;
        }
        MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
        if (mediaInfo == null) {
            uri = null;
        } else {
            ImagePicker imagePicker = this.zzkz;
            if (imagePicker != null) {
                WebImage onPickImage = imagePicker.onPickImage(mediaInfo.getMetadata(), this.zzll);
                if (!(onPickImage == null || onPickImage.getUrl() == null)) {
                    uri = onPickImage.getUrl();
                }
            }
            uri = MediaUtils.getImageUri(mediaInfo, 0);
        }
        if (uri == null) {
            zzcp();
        } else {
            this.zzlk.zza(uri);
        }
    }

    private final void zzcp() {
        View view = this.zzqx;
        if (view != null) {
            view.setVisibility(0);
            this.zzqt.setVisibility(4);
        }
        Bitmap bitmap = this.zzqw;
        if (bitmap != null) {
            this.zzqt.setImageBitmap(bitmap);
        }
    }
}
