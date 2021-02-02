package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.kantv.ui.config.Definition.UserPreference;
import java.io.IOException;

public class GifTextView extends TextView {
    private GifViewAttributes viewAttributes;

    public GifTextView(Context context) {
        super(context);
    }

    public GifTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0, 0);
    }

    public GifTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i, 0);
    }

    @RequiresApi(21)
    public GifTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet, i, i2);
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            String str = "http://schemas.android.com/apk/res/android";
            Drawable gifOrDefaultDrawable = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableLeft", 0));
            Drawable gifOrDefaultDrawable2 = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableTop", 0));
            Drawable gifOrDefaultDrawable3 = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableRight", 0));
            Drawable gifOrDefaultDrawable4 = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableBottom", 0));
            Drawable gifOrDefaultDrawable5 = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableStart", 0));
            Drawable gifOrDefaultDrawable6 = getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, "drawableEnd", 0));
            if (VERSION.SDK_INT >= 17) {
                if (getLayoutDirection() == 0) {
                    if (gifOrDefaultDrawable5 == null) {
                        gifOrDefaultDrawable5 = gifOrDefaultDrawable;
                    }
                    if (gifOrDefaultDrawable6 == null) {
                        gifOrDefaultDrawable6 = gifOrDefaultDrawable3;
                    }
                } else {
                    if (gifOrDefaultDrawable5 == null) {
                        gifOrDefaultDrawable5 = gifOrDefaultDrawable3;
                    }
                    if (gifOrDefaultDrawable6 == null) {
                        gifOrDefaultDrawable6 = gifOrDefaultDrawable;
                    }
                }
                setCompoundDrawablesRelativeWithIntrinsicBounds(gifOrDefaultDrawable5, gifOrDefaultDrawable2, gifOrDefaultDrawable6, gifOrDefaultDrawable4);
                setCompoundDrawablesWithIntrinsicBounds(gifOrDefaultDrawable, gifOrDefaultDrawable2, gifOrDefaultDrawable3, gifOrDefaultDrawable4);
            } else {
                setCompoundDrawablesWithIntrinsicBounds(gifOrDefaultDrawable, gifOrDefaultDrawable2, gifOrDefaultDrawable3, gifOrDefaultDrawable4);
            }
            setBackgroundInternal(getGifOrDefaultDrawable(attributeSet.getAttributeResourceValue(str, UserPreference.BACKGROUND, 0)));
            this.viewAttributes = new GifViewAttributes(this, attributeSet, i, i2);
            applyGifViewAttributes();
        }
        this.viewAttributes = new GifViewAttributes();
    }

    private void applyGifViewAttributes() {
        if (this.viewAttributes.mLoopCount >= 0) {
            for (Drawable applyLoopCount : getCompoundDrawables()) {
                GifViewUtils.applyLoopCount(this.viewAttributes.mLoopCount, applyLoopCount);
            }
            if (VERSION.SDK_INT >= 17) {
                for (Drawable applyLoopCount2 : getCompoundDrawablesRelative()) {
                    GifViewUtils.applyLoopCount(this.viewAttributes.mLoopCount, applyLoopCount2);
                }
            }
            GifViewUtils.applyLoopCount(this.viewAttributes.mLoopCount, getBackground());
        }
    }

    private void setBackgroundInternal(Drawable drawable) {
        if (VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundResource(int i) {
        setBackgroundInternal(getGifOrDefaultDrawable(i));
    }

    private Drawable getGifOrDefaultDrawable(int i) {
        if (i == 0) {
            return null;
        }
        Resources resources = getResources();
        String resourceTypeName = resources.getResourceTypeName(i);
        if (!isInEditMode() && GifViewUtils.SUPPORTED_RESOURCE_TYPE_NAMES.contains(resourceTypeName)) {
            try {
                return new GifDrawable(resources, i);
            } catch (NotFoundException | IOException unused) {
            }
        }
        if (VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, getContext().getTheme());
        }
        return resources.getDrawable(i);
    }

    @RequiresApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesRelativeWithIntrinsicBounds(getGifOrDefaultDrawable(i), getGifOrDefaultDrawable(i2), getGifOrDefaultDrawable(i3), getGifOrDefaultDrawable(i4));
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesWithIntrinsicBounds(getGifOrDefaultDrawable(i), getGifOrDefaultDrawable(i2), getGifOrDefaultDrawable(i3), getGifOrDefaultDrawable(i4));
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hideCompoundDrawables(getCompoundDrawables());
        if (VERSION.SDK_INT >= 17) {
            hideCompoundDrawables(getCompoundDrawablesRelative());
        }
    }

    private void hideCompoundDrawables(Drawable[] drawableArr) {
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        Drawable[] drawableArr = new Drawable[7];
        if (this.viewAttributes.freezesAnimation) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            System.arraycopy(compoundDrawables, 0, drawableArr, 0, compoundDrawables.length);
            if (VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
                drawableArr[4] = compoundDrawablesRelative[0];
                drawableArr[5] = compoundDrawablesRelative[2];
            }
            drawableArr[6] = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawableArr);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        Drawable[] compoundDrawables = getCompoundDrawables();
        gifViewSavedState.restoreState(compoundDrawables[0], 0);
        gifViewSavedState.restoreState(compoundDrawables[1], 1);
        gifViewSavedState.restoreState(compoundDrawables[2], 2);
        gifViewSavedState.restoreState(compoundDrawables[3], 3);
        if (VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            gifViewSavedState.restoreState(compoundDrawablesRelative[0], 4);
            gifViewSavedState.restoreState(compoundDrawablesRelative[2], 5);
        }
        gifViewSavedState.restoreState(getBackground(), 6);
    }

    public void setFreezesAnimation(boolean z) {
        this.viewAttributes.freezesAnimation = z;
    }
}