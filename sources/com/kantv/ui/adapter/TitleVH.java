package com.kantv.ui.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import butterknife.BindView;
import butterknife.ButterKnife;

public class TitleVH extends ViewHolder {
    @BindView(2131296649)
    TextView mText;

    public TitleVH(View view) {
        super(view);
        ButterKnife.bind((Object) this, view);
    }
}
