package com.google.android.gms.cast.framework.media;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class zzaz implements OnClickListener {
    private final /* synthetic */ TracksChooserDialogFragment zzpo;

    zzaz(TracksChooserDialogFragment tracksChooserDialogFragment) {
        this.zzpo = tracksChooserDialogFragment;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.zzpo.zzpl != null) {
            this.zzpo.zzpl.cancel();
            this.zzpo.zzpl = null;
        }
    }
}
