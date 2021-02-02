package com.kantv.lib.gallery;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;

public abstract class GalleryAdapter extends PagerAdapter {
    public int getCount() {
        return Integer.MAX_VALUE;
    }

    public abstract int getGallerSize();

    public int getItemPosition(Object obj) {
        return -2;
    }

    public abstract View getItemView(int i);

    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (getGallerSize() == 0) {
            return null;
        }
        int gallerSize = i % getGallerSize();
        if (gallerSize <= 0) {
            gallerSize += getGallerSize();
        }
        View itemView = getItemView(gallerSize);
        viewGroup.addView(itemView);
        return itemView;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
