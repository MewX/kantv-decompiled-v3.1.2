package com.kantv.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.Adapter;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

public class MultiItemTypeAdapter<T> extends Adapter<ViewHolder> {
    protected Context mContext;
    protected List<T> mDatas;
    protected ItemViewDelegateManager mItemViewDelegateManager = new ItemViewDelegateManager();
    protected OnItemClickListener mOnItemClickListener;

    public interface OnItemClickListener {
        void onItemClick(View view, ViewHolder viewHolder, int i);

        boolean onItemLongClick(View view, ViewHolder viewHolder, int i);
    }

    /* access modifiers changed from: protected */
    public boolean isEnabled(int i) {
        return true;
    }

    public void onViewHolderCreated(ViewHolder viewHolder, View view) {
    }

    public MultiItemTypeAdapter(Context context, List<T> list) {
        this.mContext = context;
        this.mDatas = list;
    }

    public int getItemViewType(int i) {
        if (!useItemViewDelegateManager()) {
            return super.getItemViewType(i);
        }
        return this.mDatas.size() > i ? this.mItemViewDelegateManager.getItemViewType(this.mDatas.get(i), i) : getItemViewType(this.mDatas.size() - 1);
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ViewHolder createViewHolder = ViewHolder.createViewHolder(this.mContext, viewGroup, this.mItemViewDelegateManager.getItemViewDelegate(i).getItemViewLayoutId());
        onViewHolderCreated(createViewHolder, createViewHolder.getConvertView());
        setListener(viewGroup, createViewHolder, i);
        return createViewHolder;
    }

    public void convert(ViewHolder viewHolder, T t) {
        this.mItemViewDelegateManager.convert(viewHolder, t, viewHolder.getAdapterPosition());
    }

    /* access modifiers changed from: protected */
    public void setListener(ViewGroup viewGroup, final ViewHolder viewHolder, int i) {
        if (isEnabled(i)) {
            viewHolder.getConvertView().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (MultiItemTypeAdapter.this.mOnItemClickListener != null) {
                        MultiItemTypeAdapter.this.mOnItemClickListener.onItemClick(view, viewHolder, viewHolder.getAdapterPosition());
                    }
                }
            });
            viewHolder.getConvertView().setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View view) {
                    if (MultiItemTypeAdapter.this.mOnItemClickListener == null) {
                        return false;
                    }
                    return MultiItemTypeAdapter.this.mOnItemClickListener.onItemLongClick(view, viewHolder, viewHolder.getAdapterPosition());
                }
            });
        }
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        Object obj;
        if (this.mDatas.size() > i) {
            obj = this.mDatas.get(i);
        } else {
            List<T> list = this.mDatas;
            obj = list.get(list.size() - 1);
        }
        convert(viewHolder, obj);
    }

    public int getItemCount() {
        List<T> list = this.mDatas;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
    }

    public List<T> getDatas() {
        return this.mDatas;
    }

    public MultiItemTypeAdapter addItemViewDelegate(ItemViewDelegate<T> itemViewDelegate) {
        this.mItemViewDelegateManager.addDelegate(itemViewDelegate);
        return this;
    }

    public MultiItemTypeAdapter addItemViewDelegate(int i, ItemViewDelegate<T> itemViewDelegate) {
        this.mItemViewDelegateManager.addDelegate(i, itemViewDelegate);
        return this;
    }

    /* access modifiers changed from: protected */
    public boolean useItemViewDelegateManager() {
        return this.mItemViewDelegateManager.getItemViewDelegateCount() > 0;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }
}
