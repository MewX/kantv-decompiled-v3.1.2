package com.google.android.gms.internal.cast;

import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.zzab;
import com.google.android.gms.cast.framework.zzh;
import com.google.android.gms.cast.framework.zzj;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.cast.framework.zzr;
import com.google.android.gms.cast.framework.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.LoadingException;
import java.util.Map;

public final class zze {
    private static final zzdg zzbe = new zzdg("CastDynamiteModule");

    public static zzj zza(Context context, CastOptions castOptions, zzj zzj, Map<String, IBinder> map) {
        try {
            return zzf(context).zza(ObjectWrapper.wrap(context.getApplicationContext()), castOptions, zzj, map);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "newCastContextImpl", zzh.class.getSimpleName());
            return null;
        }
    }

    public static zzt zza(Context context, String str, String str2, zzab zzab) {
        try {
            return zzf(context).zza(str, str2, zzab);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "newSessionImpl", zzh.class.getSimpleName());
            return null;
        }
    }

    public static zzl zza(Context context, CastOptions castOptions, IObjectWrapper iObjectWrapper, zzh zzh) {
        try {
            return zzf(context).zza(castOptions, iObjectWrapper, zzh);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "newCastSessionImpl", zzh.class.getSimpleName());
            return null;
        }
    }

    public static zzr zza(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        try {
            return zzf(service.getApplicationContext()).zza(ObjectWrapper.wrap(service), iObjectWrapper, iObjectWrapper2);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "newReconnectionServiceImpl", zzh.class.getSimpleName());
            return null;
        }
    }

    public static zzae zza(Context context, AsyncTask<Uri, Long, Bitmap> asyncTask, zzag zzag, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        try {
            return zzf(context.getApplicationContext()).zza(ObjectWrapper.wrap(asyncTask), zzag, i, i2, z, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 5, 333, 10000);
        } catch (RemoteException e) {
            zzbe.zza(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", zzh.class.getSimpleName());
            return null;
        }
    }

    private static zzh zzf(Context context) {
        try {
            IBinder instantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.cast.framework.dynamite").instantiate("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl");
            if (instantiate == null) {
                return null;
            }
            IInterface queryLocalInterface = instantiate.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            if (queryLocalInterface instanceof zzh) {
                return (zzh) queryLocalInterface;
            }
            return new zzi(instantiate);
        } catch (LoadingException e) {
            throw new RuntimeException(e);
        }
    }
}
