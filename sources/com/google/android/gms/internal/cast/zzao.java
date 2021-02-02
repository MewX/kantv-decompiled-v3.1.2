package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;

public final class zzao extends UIController {
    private final ImagePicker zzkz;
    private final zzx zzlk;
    private final ImageHints zzll;
    /* access modifiers changed from: private */
    public final ImageView zzqt;
    private final Bitmap zzqu;

    public zzao(ImageView imageView, Context context, @NonNull ImageHints imageHints, int i) {
        this.zzqt = imageView;
        this.zzll = imageHints;
        this.zzqu = BitmapFactory.decodeResource(context.getResources(), i);
        CastContext zzb = CastContext.zzb(context);
        ImagePicker imagePicker = null;
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
        this.zzlk.zza((zzy) new zzap(this));
        this.zzqt.setImageBitmap(this.zzqu);
        zzco();
    }

    public final void onSessionEnded() {
        this.zzlk.clear();
        this.zzqt.setImageBitmap(this.zzqu);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    private final void zzco() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzqt.setImageBitmap(this.zzqu);
            return;
        }
        MediaQueueItem preloadedItem = remoteMediaClient.getPreloadedItem();
        Uri uri = null;
        if (preloadedItem != null) {
            MediaInfo media = preloadedItem.getMedia();
            if (media != null) {
                ImagePicker imagePicker = this.zzkz;
                if (imagePicker != null) {
                    WebImage onPickImage = imagePicker.onPickImage(media.getMetadata(), this.zzll);
                    if (!(onPickImage == null || onPickImage.getUrl() == null)) {
                        uri = onPickImage.getUrl();
                    }
                }
                uri = MediaUtils.getImageUri(media, 0);
            }
        }
        if (uri == null) {
            this.zzqt.setImageBitmap(this.zzqu);
        } else {
            this.zzlk.zza(uri);
        }
    }
}
