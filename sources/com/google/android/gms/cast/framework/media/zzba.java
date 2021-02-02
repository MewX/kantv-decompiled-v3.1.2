package com.google.android.gms.cast.framework.media;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzba implements OnClickListener {
    private final /* synthetic */ TracksChooserDialogFragment zzpo;
    private final /* synthetic */ zzbb zzpp;
    private final /* synthetic */ zzbb zzpq;

    zzba(TracksChooserDialogFragment tracksChooserDialogFragment, zzbb zzbb, zzbb zzbb2) {
        this.zzpo = tracksChooserDialogFragment;
        this.zzpp = zzbb;
        this.zzpq = zzbb2;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzpo.zza(this.zzpp, this.zzpq);
    }
}
