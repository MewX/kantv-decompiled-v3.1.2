package com.kantv.lib.recyclerview;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.AdapterDataObserver;
import androidx.recyclerview.widget.RecyclerView.LayoutManager;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

public class WrapAdapter extends Adapter<ViewHolder> {
    private static final int TYPE_FOOTER = -3;
    private static final int TYPE_HEADER = -4;
    private static final int TYPE_NORMAL = 0;
    private static final int TYPE_REFRESH_HEADER = -5;
    private Adapter adapter;
    private int headerPosition = 1;
    private SparseArray<View> mFootViews;
    private SparseArray<View> mHeaderViews;

    private class SimpleViewHolder extends ViewHolder {
        public SimpleViewHolder(View view) {
            super(view);
        }
    }

    public boolean isRefreshHeader(int i) {
        return i == 0;
    }

    public WrapAdapter(SparseArray<View> sparseArray, SparseArray<View> sparseArray2, Adapter adapter2) {
        this.adapter = adapter2;
        this.mHeaderViews = sparseArray;
        this.mFootViews = sparseArray2;
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new SpanSizeLookup() {
                public int getSpanSize(int i) {
                    if (WrapAdapter.this.isHeader(i) || WrapAdapter.this.isFooter(i)) {
                        return gridLayoutManager.getSpanCount();
                    }
                    return 1;
                }
            });
        }
    }

    public void onViewAttachedToWindow(ViewHolder viewHolder) {
        super.onViewAttachedToWindow(viewHolder);
        LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams != null && (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            if (isHeader(viewHolder.getLayoutPosition()) || isFooter(viewHolder.getLayoutPosition())) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
        }
    }

    public boolean isHeader(int i) {
        return i >= 0 && i < this.mHeaderViews.size();
    }

    public boolean isFooter(int i) {
        return i < getItemCount() && i >= getItemCount() - this.mFootViews.size();
    }

    public int getHeadersCount() {
        return this.mHeaderViews.size();
    }

    public int getFootersCount() {
        return this.mFootViews.size();
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == -5) {
            return new SimpleViewHolder((View) this.mHeaderViews.get(0));
        }
        if (i == -4) {
            SparseArray<View> sparseArray = this.mHeaderViews;
            int i2 = this.headerPosition;
            this.headerPosition = i2 + 1;
            return new SimpleViewHolder((View) sparseArray.get(i2));
        } else if (i == -3) {
            return new SimpleViewHolder((View) this.mFootViews.get(0));
        } else {
            return this.adapter.onCreateViewHolder(viewGroup, i);
        }
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (!isHeader(i)) {
            int headersCount = i - getHeadersCount();
            Adapter adapter2 = this.adapter;
            if (adapter2 != null && headersCount < adapter2.getItemCount()) {
                this.adapter.onBindViewHolder(viewHolder, headersCount);
            }
        }
    }

    public int getItemCount() {
        int headersCount;
        int footersCount;
        if (this.adapter != null) {
            headersCount = getHeadersCount() + getFootersCount();
            footersCount = this.adapter.getItemCount();
        } else {
            headersCount = getHeadersCount();
            footersCount = getFootersCount();
        }
        return headersCount + footersCount;
    }

    public int getItemViewType(int i) {
        if (isRefreshHeader(i)) {
            return -5;
        }
        if (isHeader(i)) {
            return -4;
        }
        if (isFooter(i)) {
            return -3;
        }
        int headersCount = i - getHeadersCount();
        Adapter adapter2 = this.adapter;
        if (adapter2 == null || headersCount >= adapter2.getItemCount()) {
            return 0;
        }
        return this.adapter.getItemViewType(headersCount);
    }

    public long getItemId(int i) {
        if (this.adapter != null && i >= getHeadersCount()) {
            int headersCount = i - getHeadersCount();
            if (headersCount < this.adapter.getItemCount()) {
                return this.adapter.getItemId(headersCount);
            }
        }
        return -1;
    }

    public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
        Adapter adapter2 = this.adapter;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(adapterDataObserver);
        }
    }

    public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
        Adapter adapter2 = this.adapter;
        if (adapter2 != null) {
            adapter2.registerAdapterDataObserver(adapterDataObserver);
        }
    }
}
