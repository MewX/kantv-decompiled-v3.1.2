package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.media.ImageHints;

public final class zzx implements zzab {
    private final Context zzgt;
    private final ImageHints zzll;
    private Uri zzpu;
    private zzz zzpv;
    private zzac zzpw;
    private Bitmap zzpx;
    private boolean zzpy;
    private zzy zzpz;

    public zzx(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public zzx(Context context, @NonNull ImageHints imageHints) {
        this.zzgt = context;
        this.zzll = imageHints;
        this.zzpw = new zzac();
        reset();
    }

    public final void zza(zzy zzy) {
        this.zzpz = zzy;
    }

    public final boolean zza(Uri uri) {
        if (uri == null) {
            reset();
            return true;
        } else if (!uri.equals(this.zzpu)) {
            reset();
            this.zzpu = uri;
            if (this.zzll.getWidthInPixels() == 0 || this.zzll.getHeightInPixels() == 0) {
                this.zzpv = new zzz(this.zzgt, this);
            } else {
                zzz zzz = new zzz(this.zzgt, this.zzll.getWidthInPixels(), this.zzll.getHeightInPixels(), false, this);
                this.zzpv = zzz;
            }
            zzz zzz2 = this.zzpv;
            Uri uri2 = this.zzpu;
            zzz2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[]{uri2});
            return false;
        } else if (this.zzpy) {
            return true;
        } else {
            return false;
        }
    }

    public final void clear() {
        reset();
        this.zzpz = null;
    }

    public final void onPostExecute(Bitmap bitmap) {
        this.zzpx = bitmap;
        this.zzpy = true;
        zzy zzy = this.zzpz;
        if (zzy != null) {
            zzy.zza(this.zzpx);
        }
        this.zzpv = null;
    }

    private final void reset() {
        zzz zzz = this.zzpv;
        if (zzz != null) {
            zzz.cancel(true);
            this.zzpv = null;
        }
        this.zzpu = null;
        this.zzpx = null;
        this.zzpy = false;
    }
}
