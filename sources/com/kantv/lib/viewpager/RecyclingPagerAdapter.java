package com.kantv.lib.viewpager;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;

public abstract class RecyclingPagerAdapter extends PagerAdapter {
    public static final int IGNORE_ITEM_VIEW_TYPE = -1;
    private final RecycleBin recycleBin;

    public int getItemViewType(int i) {
        return 0;
    }

    public abstract View getView(int i, View view, ViewGroup viewGroup);

    public int getViewTypeCount() {
        return 1;
    }

    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public RecyclingPagerAdapter() {
        this(new RecycleBin());
    }

    RecyclingPagerAdapter(RecycleBin recycleBin2) {
        this.recycleBin = recycleBin2;
        recycleBin2.setViewTypeCount(getViewTypeCount());
    }

    public void notifyDataSetChanged() {
        this.recycleBin.scrapActiveViews();
        super.notifyDataSetChanged();
    }

    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        int itemViewType = getItemViewType(i);
        View view = getView(i, itemViewType != -1 ? this.recycleBin.getScrapView(i, itemViewType) : null, viewGroup);
        viewGroup.addView(view);
        return view;
    }

    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        int itemViewType = getItemViewType(i);
        if (itemViewType != -1) {
            this.recycleBin.addScrapView(view, i, itemViewType);
        }
    }
}
