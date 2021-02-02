package com.kantv.ui.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.imkan.tv.R;

public class ContentSliderVH extends ViewHolder {
    RecyclerView mRecyclerView;
    TextView mTitle;

    public ContentSliderVH(View view) {
        super(view);
        this.mRecyclerView = (RecyclerView) view.findViewById(R.id.common_recycleview);
        this.mTitle = (TextView) view.findViewById(R.id.item_recommend_title);
    }
}
