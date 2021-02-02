package com.kantv.ui.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import butterknife.BindView;
import butterknife.ButterKnife;

public class HistoryVH extends ViewHolder {
    @BindView(2131296722)
    TextView mActor;
    @BindView(2131296723)
    CheckBox mCheck;
    @BindView(2131296721)
    TextView mDelete;
    @BindView(2131296725)
    ImageView mMovie;
    @BindView(2131296726)
    RelativeLayout mQj;
    @BindView(2131296727)
    TextView mTag;
    @BindView(2131296728)
    TextView mTitle;

    public HistoryVH(View view) {
        super(view);
        ButterKnife.bind((Object) this, view);
    }
}
