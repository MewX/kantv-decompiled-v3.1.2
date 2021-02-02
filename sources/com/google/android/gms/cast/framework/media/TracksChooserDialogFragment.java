package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.DialogFragment;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.MediaTrack.Builder;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

public class TracksChooserDialogFragment extends DialogFragment {
    private long[] zzdp;
    private RemoteMediaClient zzhs;
    @VisibleForTesting
    private boolean zzpi;
    @VisibleForTesting
    private List<MediaTrack> zzpj;
    @VisibleForTesting
    private List<MediaTrack> zzpk;
    /* access modifiers changed from: private */
    public Dialog zzpl;
    private MediaInfo zzpm;
    private long[] zzpn;

    @Deprecated
    public TracksChooserDialogFragment() {
    }

    private TracksChooserDialogFragment(MediaInfo mediaInfo, long[] jArr) {
        this.zzpm = mediaInfo;
        this.zzpn = jArr;
    }

    @Deprecated
    public static TracksChooserDialogFragment newInstance(MediaInfo mediaInfo, long[] jArr) {
        return new TracksChooserDialogFragment(mediaInfo, jArr);
    }

    @NonNull
    public static TracksChooserDialogFragment newInstance() {
        return new TracksChooserDialogFragment();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzpi = true;
        this.zzpk = new ArrayList();
        this.zzpj = new ArrayList();
        this.zzdp = new long[0];
        CastSession currentCastSession = CastContext.getSharedInstance(getContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            this.zzpi = false;
            return;
        }
        this.zzhs = currentCastSession.getRemoteMediaClient();
        RemoteMediaClient remoteMediaClient = this.zzhs;
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || this.zzhs.getMediaInfo() == null) {
            this.zzpi = false;
            return;
        }
        long[] jArr = this.zzpn;
        if (jArr != null) {
            this.zzdp = jArr;
        } else {
            MediaStatus mediaStatus = this.zzhs.getMediaStatus();
            if (mediaStatus != null) {
                this.zzdp = mediaStatus.getActiveTrackIds();
            }
        }
        MediaInfo mediaInfo = this.zzpm;
        if (mediaInfo == null) {
            mediaInfo = this.zzhs.getMediaInfo();
        }
        if (mediaInfo == null) {
            this.zzpi = false;
            return;
        }
        List mediaTracks = mediaInfo.getMediaTracks();
        if (mediaTracks == null) {
            this.zzpi = false;
            return;
        }
        this.zzpk = zza(mediaTracks, 2);
        this.zzpj = zza(mediaTracks, 1);
        if (!this.zzpj.isEmpty()) {
            this.zzpj.add(0, new Builder(-1, 1).setName(getActivity().getString(R.string.cast_tracks_chooser_dialog_none)).setSubtype(2).setContentId("").build());
        }
    }

    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        int zza = zza(this.zzpj, this.zzdp, 0);
        int zza2 = zza(this.zzpk, this.zzdp, -1);
        zzbb zzbb = new zzbb(getActivity(), this.zzpj, zza);
        zzbb zzbb2 = new zzbb(getActivity(), this.zzpk, zza2);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, null);
        ListView listView = (ListView) inflate.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) inflate.findViewById(R.id.audio_list_view);
        TabHost tabHost = (TabHost) inflate.findViewById(R.id.tab_host);
        tabHost.setup();
        if (zzbb.getCount() == 0) {
            listView.setVisibility(4);
        } else {
            listView.setAdapter(zzbb);
            TabSpec newTabSpec = tabHost.newTabSpec("textTab");
            newTabSpec.setContent(R.id.text_list_view);
            newTabSpec.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_subtitles));
            tabHost.addTab(newTabSpec);
        }
        if (zzbb2.getCount() <= 1) {
            listView2.setVisibility(4);
        } else {
            listView2.setAdapter(zzbb2);
            TabSpec newTabSpec2 = tabHost.newTabSpec("audioTab");
            newTabSpec2.setContent(R.id.audio_list_view);
            newTabSpec2.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_audio));
            tabHost.addTab(newTabSpec2);
        }
        builder.setView(inflate).setPositiveButton(getActivity().getString(R.string.cast_tracks_chooser_dialog_ok), new zzba(this, zzbb, zzbb2)).setNegativeButton(R.string.cast_tracks_chooser_dialog_cancel, new zzaz(this));
        Dialog dialog = this.zzpl;
        if (dialog != null) {
            dialog.cancel();
            this.zzpl = null;
        }
        this.zzpl = builder.create();
        return this.zzpl;
    }

    /* access modifiers changed from: private */
    public final void zza(zzbb zzbb, zzbb zzbb2) {
        long[] jArr;
        if (!this.zzpi || !this.zzhs.hasMediaSession()) {
            zzch();
            return;
        }
        ArrayList arrayList = new ArrayList();
        MediaTrack zzci = zzbb.zzci();
        if (!(zzci == null || zzci.getId() == -1)) {
            arrayList.add(Long.valueOf(zzci.getId()));
        }
        MediaTrack zzci2 = zzbb2.zzci();
        if (zzci2 != null) {
            arrayList.add(Long.valueOf(zzci2.getId()));
        }
        long[] jArr2 = this.zzdp;
        if (jArr2 != null && jArr2.length > 0) {
            HashSet hashSet = new HashSet();
            for (MediaTrack id : this.zzpk) {
                hashSet.add(Long.valueOf(id.getId()));
            }
            for (MediaTrack id2 : this.zzpj) {
                hashSet.add(Long.valueOf(id2.getId()));
            }
            for (long j : this.zzdp) {
                if (!hashSet.contains(Long.valueOf(j))) {
                    arrayList.add(Long.valueOf(j));
                }
            }
        }
        long[] jArr3 = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr3[i] = ((Long) arrayList.get(i)).longValue();
        }
        Arrays.sort(jArr3);
        this.zzhs.setActiveMediaTracks(jArr3);
        zzch();
    }

    private final void zzch() {
        Dialog dialog = this.zzpl;
        if (dialog != null) {
            dialog.cancel();
            this.zzpl = null;
        }
    }

    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @NonNull
    private static ArrayList<MediaTrack> zza(List<MediaTrack> list, int i) {
        ArrayList<MediaTrack> arrayList = new ArrayList<>();
        if (list != null) {
            for (MediaTrack mediaTrack : list) {
                if (mediaTrack.getType() == i) {
                    arrayList.add(mediaTrack);
                }
            }
        }
        return arrayList;
    }

    private static int zza(List<MediaTrack> list, long[] jArr, int i) {
        if (!(jArr == null || list == null)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                int length = jArr.length;
                for (int i3 = 0; i3 < length; i3++) {
                    if (jArr[i3] == ((MediaTrack) list.get(i2)).getId()) {
                        return i2;
                    }
                }
            }
        }
        return i;
    }
}
