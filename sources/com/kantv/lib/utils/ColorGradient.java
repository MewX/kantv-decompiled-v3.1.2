package com.kantv.lib.utils;

import android.graphics.Color;

public class ColorGradient {
    private int color1;
    private int[] color1Values;
    private int color2;
    private int[] color2Values;
    private int count;

    public ColorGradient(int i, int i2, int i3) {
        this.color1 = i;
        this.color2 = i2;
        this.count = i3;
        this.color1Values = toColorValue(i);
        this.color2Values = toColorValue(i2);
    }

    public int getColor(int i) {
        int[] iArr = new int[4];
        int i2 = 0;
        while (true) {
            int[] iArr2 = this.color2Values;
            if (i2 >= iArr2.length) {
                return Color.argb(iArr[0], iArr[1], iArr[2], iArr[3]);
            }
            int[] iArr3 = this.color1Values;
            double d = (double) iArr3[i2];
            double d2 = (double) (iArr2[i2] - iArr3[i2]);
            Double.isNaN(d2);
            double d3 = d2 * 1.0d;
            double d4 = (double) this.count;
            Double.isNaN(d4);
            double d5 = d3 / d4;
            double d6 = (double) i;
            Double.isNaN(d6);
            double d7 = d5 * d6;
            Double.isNaN(d);
            iArr[i2] = (int) (d + d7);
            i2++;
        }
    }

    private int[] toColorValue(int i) {
        return new int[]{Color.alpha(i), Color.red(i), Color.green(i), Color.blue(i)};
    }

    public int getColor1() {
        return this.color1;
    }

    public int getColor2() {
        return this.color2;
    }

    public int getCount() {
        return this.count;
    }
}
