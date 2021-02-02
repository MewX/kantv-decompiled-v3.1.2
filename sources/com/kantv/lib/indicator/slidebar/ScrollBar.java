package com.kantv.lib.indicator.slidebar;

import android.view.View;

public interface ScrollBar {

    public enum Gravity {
        TOP,
        TOP_FLOAT,
        BOTTOM,
        BOTTOM_FLOAT,
        CENTENT,
        CENTENT_BACKGROUND
    }

    Gravity getGravity();

    int getHeight(int i);

    View getSlideView();

    int getWidth(int i);

    void onPageScrolled(int i, float f, int i2);
}
