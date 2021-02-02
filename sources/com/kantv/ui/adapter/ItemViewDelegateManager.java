package com.kantv.ui.adapter;

import androidx.collection.SparseArrayCompat;

public class ItemViewDelegateManager<T> {
    SparseArrayCompat<ItemViewDelegate<T>> delegates = new SparseArrayCompat<>();

    public int getItemViewDelegateCount() {
        return this.delegates.size();
    }

    public ItemViewDelegateManager<T> addDelegate(ItemViewDelegate<T> itemViewDelegate) {
        int size = this.delegates.size();
        if (itemViewDelegate != null) {
            this.delegates.put(size, itemViewDelegate);
        }
        return this;
    }

    public ItemViewDelegateManager<T> addDelegate(int i, ItemViewDelegate<T> itemViewDelegate) {
        if (this.delegates.get(i) == null) {
            this.delegates.put(i, itemViewDelegate);
            return this;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("An ItemViewDelegate is already registered for the viewType = ");
        sb.append(i);
        sb.append(". Already registered ItemViewDelegate is ");
        sb.append(this.delegates.get(i));
        throw new IllegalArgumentException(sb.toString());
    }

    public ItemViewDelegateManager<T> removeDelegate(ItemViewDelegate<T> itemViewDelegate) {
        if (itemViewDelegate != null) {
            int indexOfValue = this.delegates.indexOfValue(itemViewDelegate);
            if (indexOfValue >= 0) {
                this.delegates.removeAt(indexOfValue);
            }
            return this;
        }
        throw new NullPointerException("ItemViewDelegate is null");
    }

    public ItemViewDelegateManager<T> removeDelegate(int i) {
        int indexOfKey = this.delegates.indexOfKey(i);
        if (indexOfKey >= 0) {
            this.delegates.removeAt(indexOfKey);
        }
        return this;
    }

    public int getItemViewType(T t, int i) {
        for (int size = this.delegates.size() - 1; size >= 0; size--) {
            if (((ItemViewDelegate) this.delegates.valueAt(size)).isForViewType(t, i)) {
                return this.delegates.keyAt(size);
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No ItemViewDelegate added that matches position=");
        sb.append(i);
        sb.append(" in data source");
        throw new IllegalArgumentException(sb.toString());
    }

    public void convert(ViewHolder viewHolder, T t, int i) {
        int size = this.delegates.size();
        for (int i2 = 0; i2 < size; i2++) {
            ItemViewDelegate itemViewDelegate = (ItemViewDelegate) this.delegates.valueAt(i2);
            if (itemViewDelegate.isForViewType(t, i)) {
                itemViewDelegate.convert(viewHolder, t, i);
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No ItemViewDelegateManager added that matches position=");
        sb.append(i);
        sb.append(" in data source");
        throw new IllegalArgumentException(sb.toString());
    }

    public ItemViewDelegate getItemViewDelegate(int i) {
        return (ItemViewDelegate) this.delegates.get(i);
    }

    public int getItemViewLayoutId(int i) {
        return getItemViewDelegate(i).getItemViewLayoutId();
    }

    public int getItemViewType(ItemViewDelegate itemViewDelegate) {
        return this.delegates.indexOfValue(itemViewDelegate);
    }
}
