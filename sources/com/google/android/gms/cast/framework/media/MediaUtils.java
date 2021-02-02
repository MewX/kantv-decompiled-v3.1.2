package com.google.android.gms.cast.framework.media;

import android.annotation.TargetApi;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Locale;

public class MediaUtils {
    public static String getImageUrl(MediaInfo mediaInfo, int i) {
        Uri imageUri = getImageUri(mediaInfo, i);
        if (imageUri == null) {
            return null;
        }
        return imageUri.toString();
    }

    public static Uri getImageUri(MediaInfo mediaInfo, int i) {
        if (mediaInfo == null) {
            return null;
        }
        MediaMetadata metadata = mediaInfo.getMetadata();
        if (metadata == null || metadata.getImages() == null || metadata.getImages().size() <= i) {
            return null;
        }
        return ((WebImage) metadata.getImages().get(i)).getUrl();
    }

    @TargetApi(21)
    public static Locale getTrackLanguage(@NonNull MediaTrack mediaTrack) {
        if (mediaTrack.getLanguage() == null) {
            return null;
        }
        if (PlatformVersion.isAtLeastLollipop()) {
            return Locale.forLanguageTag(mediaTrack.getLanguage());
        }
        String[] split = mediaTrack.getLanguage().split("-");
        if (split.length == 1) {
            return new Locale(split[0]);
        }
        return new Locale(split[0], split[1]);
    }

    private MediaUtils() {
    }
}
