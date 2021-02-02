package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.R;
import java.util.ArrayList;
import java.util.List;

public final class zzbb extends ArrayAdapter<MediaTrack> implements OnClickListener {
    private final Context zzim;
    private int zzpr;

    public zzbb(Context context, List<MediaTrack> list, int i) {
        int i2 = R.layout.cast_tracks_chooser_dialog_row_layout;
        if (list == null) {
            list = new ArrayList<>();
        }
        super(context, i2, list);
        this.zzpr = -1;
        this.zzim = context;
        this.zzpr = i;
    }

    public final View getView(int i, View view, ViewGroup viewGroup) {
        zzbd zzbd;
        String str;
        if (view == null) {
            view = ((LayoutInflater) this.zzim.getSystemService("layout_inflater")).inflate(R.layout.cast_tracks_chooser_dialog_row_layout, viewGroup, false);
            zzbd = new zzbd(this, (TextView) view.findViewById(R.id.text), (RadioButton) view.findViewById(R.id.radio));
            view.setTag(zzbd);
        } else {
            zzbd = (zzbd) view.getTag();
        }
        if (zzbd == null) {
            return null;
        }
        zzbd.zzpt.setTag(Integer.valueOf(i));
        zzbd.zzpt.setChecked(this.zzpr == i);
        view.setOnClickListener(this);
        MediaTrack mediaTrack = (MediaTrack) getItem(i);
        String name = mediaTrack.getName();
        if (TextUtils.isEmpty(name)) {
            if (mediaTrack.getSubtype() == 2) {
                str = this.zzim.getString(R.string.cast_tracks_chooser_dialog_closed_captions);
            } else {
                if (!TextUtils.isEmpty(mediaTrack.getLanguage())) {
                    String displayLanguage = MediaUtils.getTrackLanguage(mediaTrack).getDisplayLanguage();
                    if (!TextUtils.isEmpty(displayLanguage)) {
                        str = displayLanguage;
                    }
                }
                name = this.zzim.getString(R.string.cast_tracks_chooser_dialog_default_track_name, new Object[]{Integer.valueOf(i + 1)});
            }
            zzbd.zzps.setText(str);
            return view;
        }
        str = name;
        zzbd.zzps.setText(str);
        return view;
    }

    public final void onClick(View view) {
        this.zzpr = ((Integer) ((zzbd) view.getTag()).zzpt.getTag()).intValue();
        notifyDataSetChanged();
    }

    public final MediaTrack zzci() {
        int i = this.zzpr;
        if (i < 0 || i >= getCount()) {
            return null;
        }
        return (MediaTrack) getItem(this.zzpr);
    }
}
