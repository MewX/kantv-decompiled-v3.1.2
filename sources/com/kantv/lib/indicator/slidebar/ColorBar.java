package com.kantv.lib.indicator.slidebar;

import android.content.Context;
import android.view.View;
import com.kantv.lib.indicator.slidebar.ScrollBar.Gravity;

public class ColorBar implements ScrollBar {
    protected int color;
    protected Gravity gravity;
    protected int height;
    protected View view;
    protected int width;

    public void onPageScrolled(int i, float f, int i2) {
    }

    public ColorBar(Context context, int i, int i2) {
        this(context, i, i2, Gravity.BOTTOM);
    }

    public ColorBar(Context context, int i, int i2, Gravity gravity2) {
        this.view = new View(context);
        this.color = i;
        this.view.setBackgroundColor(i);
        this.height = i2;
        this.gravity = gravity2;
    }

    public int getColor() {
        return this.color;
    }

    public void setColor(int i) {
        this.color = i;
        this.view.setBackgroundColor(i);
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getHeight(int i) {
        int i2 = this.height;
        return i2 == 0 ? i : i2;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getWidth(int i) {
        int i2 = this.width;
        return i2 == 0 ? i : i2;
    }

    public View getSlideView() {
        return this.view;
    }

    public Gravity getGravity() {
        return this.gravity;
    }

    public void setGravity(Gravity gravity2) {
        this.gravity = gravity2;
    }
}
