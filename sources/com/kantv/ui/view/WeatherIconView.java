package com.kantv.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.kantv.ui.R;

public class WeatherIconView extends TextView {
    private static final int DEFAULT_WEATHER_ICON_COLOR = -16777216;
    private static final int DEFAULT_WEATHER_ICON_SIZE = 100;
    private static final String PATH_TO_WEATHER_FONT = "fonts/weather.ttf";
    private Typeface weatherFont;

    public WeatherIconView(Context context) {
        super(context);
        initialize(context);
    }

    public WeatherIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initializeAttributes(context, attributeSet);
        initialize(context);
    }

    public WeatherIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initializeAttributes(context, attributeSet);
        initialize(context);
    }

    private void initialize(Context context) {
        if (!isInEditMode()) {
            this.weatherFont = Typeface.createFromAsset(context.getAssets(), PATH_TO_WEATHER_FONT);
            setTypeface(this.weatherFont);
        }
    }

    private void initializeAttributes(Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WeatherIconView);
            initIconResource(obtainStyledAttributes);
            initIconSize(obtainStyledAttributes);
            initIconColor(obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }
    }

    private void initIconResource(TypedArray typedArray) {
        String string = typedArray.getString(1);
        if (string != null && !string.isEmpty()) {
            setText(string);
        }
    }

    private void initIconSize(TypedArray typedArray) {
        setTextSize((float) typedArray.getInt(2, 100));
    }

    private void initIconColor(TypedArray typedArray) {
        setTextColor(typedArray.getColor(0, -16777216));
    }

    public void setIconResource(String str) {
        setText(str);
    }

    public void setIconSize(int i) {
        setTextSize((float) i);
    }

    public void setIconColor(int i) {
        setTextColor(i);
    }
}
