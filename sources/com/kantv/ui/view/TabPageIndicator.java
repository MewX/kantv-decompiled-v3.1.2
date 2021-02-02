package com.kantv.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.OnPageChangeListener;
import com.kantv.ui.R;
import java.util.Locale;

public class TabPageIndicator extends HorizontalScrollView {
    private static final int[] ATTRS = {16842901, 16842904};
    private boolean checkedTabWidths;
    private IndicatorMode currentIndicatorMode;
    /* access modifiers changed from: private */
    public int currentPosition;
    /* access modifiers changed from: private */
    public float currentPositionOffset;
    public OnPageChangeListener delegatePageListener;
    private int dividerColor;
    private int dividerPadding;
    private Paint dividerPaint;
    private int dividerWidth;
    private int indicatorColor;
    private int indicatorHeight;
    private int indicatorPaddingLeft;
    private int indicatorPaddingRight;
    private boolean isExpand;
    private boolean isExpandSameLine;
    private boolean isSameLine;
    private int lastScrollX;
    private Locale locale;
    private Context mContext;
    private final PageListener pageListener;
    /* access modifiers changed from: private */
    public ViewPager pager;
    private Paint rectPaint;
    private int scrollOffset;
    private int tabBackgroundResId;
    /* access modifiers changed from: private */
    public int tabCount;
    private int tabPadding;
    /* access modifiers changed from: private */
    public int tabTextColor;
    /* access modifiers changed from: private */
    public int tabTextColorSelected;
    private int tabTextSize;
    /* access modifiers changed from: private */
    public LinearLayout tabsContainer;
    private boolean textAllCaps;
    private int underlineColor;
    private int underlineHeight;
    private LayoutParams weightTabLayoutParams;
    private int[] widths;
    private LayoutParams wrapTabLayoutParams;

    public enum IndicatorMode {
        MODE_WEIGHT_NOEXPAND_SAME(0),
        MODE_WEIGHT_NOEXPAND_NOSAME(1),
        MODE_NOWEIGHT_NOEXPAND_SAME(2),
        MODE_NOWEIGHT_NOEXPAND_NOSAME(3),
        MODE_NOWEIGHT_EXPAND_SAME(4),
        MODE_NOWEIGHT_EXPAND_NOSAME(5);
        
        private int value;

        private IndicatorMode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    private class PageListener implements OnPageChangeListener {
        private PageListener() {
        }

        public void onPageScrolled(int i, float f, int i2) {
            TabPageIndicator.this.currentPosition = i;
            TabPageIndicator.this.currentPositionOffset = f;
            TabPageIndicator tabPageIndicator = TabPageIndicator.this;
            tabPageIndicator.scrollToChild(i, (int) (((float) tabPageIndicator.tabsContainer.getChildAt(i).getWidth()) * f));
            TabPageIndicator.this.invalidate();
            if (TabPageIndicator.this.delegatePageListener != null) {
                TabPageIndicator.this.delegatePageListener.onPageScrolled(i, f, i2);
            }
        }

        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                TabPageIndicator tabPageIndicator = TabPageIndicator.this;
                tabPageIndicator.scrollToChild(tabPageIndicator.pager.getCurrentItem(), 0);
            }
            if (TabPageIndicator.this.delegatePageListener != null) {
                TabPageIndicator.this.delegatePageListener.onPageScrollStateChanged(i);
            }
        }

        public void onPageSelected(int i) {
            if (TabPageIndicator.this.delegatePageListener != null) {
                TabPageIndicator.this.delegatePageListener.onPageSelected(i);
            }
            int i2 = 0;
            while (i2 < TabPageIndicator.this.tabCount) {
                View childAt = TabPageIndicator.this.tabsContainer.getChildAt(i2);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setTextColor(i2 == TabPageIndicator.this.pager.getCurrentItem() ? TabPageIndicator.this.tabTextColorSelected : TabPageIndicator.this.tabTextColor);
                }
                i2++;
            }
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int currentPosition;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPosition = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPosition);
        }
    }

    public TabPageIndicator(Context context) {
        this(context, null);
        this.mContext = context;
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.mContext = context;
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.pageListener = new PageListener();
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.checkedTabWidths = false;
        String str = "#ffffff";
        this.indicatorColor = Color.parseColor(str);
        this.underlineColor = -2302756;
        this.dividerColor = 0;
        this.scrollOffset = 10;
        this.indicatorHeight = 2;
        this.underlineHeight = 0;
        this.dividerPadding = 0;
        this.dividerWidth = 0;
        this.indicatorPaddingLeft = 0;
        this.indicatorPaddingRight = 0;
        this.tabTextSize = 16;
        this.tabTextColor = -10066330;
        this.tabTextColorSelected = Color.parseColor(str);
        this.lastScrollX = 0;
        this.currentIndicatorMode = IndicatorMode.MODE_WEIGHT_NOEXPAND_SAME;
        this.mContext = context;
        setFillViewport(true);
        setWillNotDraw(false);
        this.tabsContainer = new LinearLayout(context);
        this.tabsContainer.setOrientation(0);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.scrollOffset = (int) TypedValue.applyDimension(1, (float) this.scrollOffset, displayMetrics);
        this.indicatorHeight = (int) TypedValue.applyDimension(1, (float) this.indicatorHeight, displayMetrics);
        this.underlineHeight = (int) TypedValue.applyDimension(1, (float) this.underlineHeight, displayMetrics);
        this.dividerPadding = (int) TypedValue.applyDimension(1, (float) this.dividerPadding, displayMetrics);
        this.tabPadding = (int) TypedValue.applyDimension(1, (float) this.tabPadding, displayMetrics);
        this.dividerWidth = (int) TypedValue.applyDimension(1, (float) this.dividerWidth, displayMetrics);
        this.tabTextSize = (int) TypedValue.applyDimension(1, (float) this.tabTextSize, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        this.tabTextSize = obtainStyledAttributes.getDimensionPixelSize(0, this.tabTextSize);
        this.tabTextColor = obtainStyledAttributes.getColor(1, this.tabTextColor);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PagerSlidingTab);
        this.indicatorColor = obtainStyledAttributes2.getColor(1, this.indicatorColor);
        this.underlineColor = obtainStyledAttributes2.getColor(9, this.underlineColor);
        this.dividerColor = obtainStyledAttributes2.getColor(0, this.dividerColor);
        this.indicatorHeight = obtainStyledAttributes2.getDimensionPixelSize(2, this.indicatorHeight);
        this.underlineHeight = obtainStyledAttributes2.getDimensionPixelSize(10, this.underlineHeight);
        this.dividerPadding = obtainStyledAttributes2.getDimensionPixelSize(3, this.dividerPadding);
        this.tabPadding = obtainStyledAttributes2.getDimensionPixelSize(8, this.tabPadding);
        this.tabBackgroundResId = obtainStyledAttributes2.getResourceId(7, this.tabBackgroundResId);
        this.scrollOffset = obtainStyledAttributes2.getDimensionPixelSize(6, this.scrollOffset);
        this.textAllCaps = obtainStyledAttributes2.getBoolean(4, this.textAllCaps);
        obtainStyledAttributes2.recycle();
        this.rectPaint = new Paint();
        this.rectPaint.setAntiAlias(true);
        this.rectPaint.setStyle(Style.FILL);
        this.dividerPaint = new Paint();
        this.dividerPaint.setAntiAlias(true);
        this.dividerPaint.setStrokeWidth((float) this.dividerWidth);
        this.wrapTabLayoutParams = new LayoutParams(-2, -1);
        this.weightTabLayoutParams = new LayoutParams(0, -1, 1.0f);
        if (this.locale == null) {
            this.locale = getResources().getConfiguration().locale;
        }
    }

    public void setIndicatorMode(IndicatorMode indicatorMode) {
        switch (indicatorMode) {
            case MODE_WEIGHT_NOEXPAND_SAME:
                this.isExpand = false;
                this.isSameLine = true;
                break;
            case MODE_WEIGHT_NOEXPAND_NOSAME:
                this.isExpand = false;
                this.isSameLine = false;
                break;
            case MODE_NOWEIGHT_NOEXPAND_SAME:
                this.isExpand = false;
                this.isSameLine = true;
                this.isExpandSameLine = true;
                this.tabPadding = dip2px(10.0f);
                break;
            case MODE_NOWEIGHT_NOEXPAND_NOSAME:
                this.isExpand = false;
                this.isSameLine = true;
                this.isExpandSameLine = true;
                this.tabPadding = dip2px(10.0f);
                break;
            case MODE_NOWEIGHT_EXPAND_SAME:
                this.isExpand = true;
                this.isExpandSameLine = true;
                this.tabPadding = dip2px(10.0f);
                break;
            case MODE_NOWEIGHT_EXPAND_NOSAME:
                this.isExpand = true;
                this.isExpandSameLine = false;
                this.tabPadding = dip2px(10.0f);
                break;
        }
        this.currentIndicatorMode = indicatorMode;
        notifyDataSetChanged();
    }

    public void setViewPager(ViewPager viewPager) {
        this.pager = viewPager;
        if (viewPager.getAdapter() != null) {
            viewPager.setOnPageChangeListener(this.pageListener);
            notifyDataSetChanged();
            return;
        }
        throw new IllegalStateException("ViewPager does not have adapter instance.");
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.delegatePageListener = onPageChangeListener;
    }

    public void notifyDataSetChanged() {
        this.tabsContainer.removeAllViews();
        this.tabCount = this.pager.getAdapter().getCount();
        for (int i = 0; i < this.tabCount; i++) {
            addTextTab(i, this.pager.getAdapter().getPageTitle(i).toString());
        }
        updateTabStyles();
        this.checkedTabWidths = false;
        getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            @SuppressLint({"NewApi"})
            public void onGlobalLayout() {
                if (VERSION.SDK_INT < 16) {
                    TabPageIndicator.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                } else {
                    TabPageIndicator.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
                TabPageIndicator tabPageIndicator = TabPageIndicator.this;
                tabPageIndicator.currentPosition = tabPageIndicator.pager.getCurrentItem();
                TabPageIndicator tabPageIndicator2 = TabPageIndicator.this;
                tabPageIndicator2.scrollToChild(tabPageIndicator2.currentPosition, 0);
            }
        });
    }

    private void addTextTab(final int i, String str) {
        TextView textView = new TextView(getContext());
        new LayoutParams(-2, -1, 1.0f);
        textView.setText(str);
        textView.setFocusable(true);
        textView.setGravity(17);
        textView.setSingleLine();
        textView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                TabPageIndicator.this.pager.setCurrentItem(i);
            }
        });
        if (!this.isExpand || this.isExpandSameLine) {
            LayoutParams layoutParams = this.wrapTabLayoutParams;
            int i2 = this.tabPadding;
            layoutParams.setMargins(i2, 0, i2, 0);
            LayoutParams layoutParams2 = this.weightTabLayoutParams;
            int i3 = this.tabPadding;
            layoutParams2.setMargins(i3, 0, i3, 0);
        } else {
            int i4 = this.tabPadding;
            textView.setPadding(i4, 0, i4, 0);
        }
        this.tabsContainer.addView(textView, i, this.isSameLine ? this.wrapTabLayoutParams : this.weightTabLayoutParams);
    }

    private void updateTabStyles() {
        this.widths = new int[this.tabCount];
        int i = 0;
        while (i < this.tabCount) {
            View childAt = this.tabsContainer.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, (float) this.tabTextSize);
                textView.setTextColor(i == 0 ? this.tabTextColorSelected : this.tabTextColor);
                if (this.textAllCaps) {
                    if (VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.locale));
                    }
                }
            }
            i++;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.isExpand) {
            int measuredWidth = getMeasuredWidth();
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.tabCount; i5++) {
                i4 += this.tabsContainer.getChildAt(i5).getMeasuredWidth();
                int[] iArr = this.widths;
                if (iArr[i5] == 0) {
                    iArr[i5] = this.tabsContainer.getChildAt(i5).getMeasuredWidth();
                }
            }
            if (this.currentIndicatorMode == IndicatorMode.MODE_NOWEIGHT_NOEXPAND_SAME) {
                setIndicatorPaddingRight((measuredWidth - i4) - ((this.tabPadding * 2) * this.tabCount));
                this.tabsContainer.setPadding(this.indicatorPaddingLeft, 0, this.indicatorPaddingRight, 0);
            }
            if (this.currentIndicatorMode == IndicatorMode.MODE_NOWEIGHT_NOEXPAND_NOSAME) {
                setIndicatorPaddingRight((measuredWidth - i4) - ((this.tabPadding * 2) * this.tabCount));
                this.tabsContainer.setPadding(this.indicatorPaddingLeft, 0, this.indicatorPaddingRight, 0);
            }
            if (!this.checkedTabWidths && i4 > 0 && measuredWidth > 0) {
                if (i4 <= measuredWidth) {
                    while (i3 < this.tabCount) {
                        this.tabsContainer.getChildAt(i3).setLayoutParams(this.weightTabLayoutParams);
                        i3++;
                    }
                } else {
                    while (i3 < this.tabCount) {
                        this.tabsContainer.getChildAt(i3).setLayoutParams(this.wrapTabLayoutParams);
                        i3++;
                    }
                }
                this.checkedTabWidths = true;
            }
        }
    }

    /* access modifiers changed from: private */
    public void scrollToChild(int i, int i2) {
        if (this.tabCount != 0 && i2 != 0) {
            int left = this.tabsContainer.getChildAt(i).getLeft() + i2;
            if (i > 0 || i2 > 0) {
                left -= this.scrollOffset;
            }
            if (left != this.lastScrollX) {
                this.lastScrollX = left;
                scrollTo(left, 0);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (!isInEditMode() && this.tabCount != 0) {
            int height = getHeight();
            this.rectPaint.setColor(this.indicatorColor);
            View childAt = this.tabsContainer.getChildAt(this.currentPosition);
            float f2 = 0.0f;
            if (this.isExpand) {
                f = 0.0f;
            } else {
                f = (float) ((childAt.getWidth() - this.widths[this.currentPosition]) / 2);
            }
            float left = ((float) childAt.getLeft()) + f;
            float right = ((float) childAt.getRight()) - f;
            if (this.currentPositionOffset > 0.0f) {
                int i = this.currentPosition;
                if (i < this.tabCount - 1) {
                    View childAt2 = this.tabsContainer.getChildAt(i + 1);
                    if (!this.isExpand) {
                        f2 = (float) ((childAt2.getWidth() - this.widths[this.currentPosition + 1]) / 2);
                    }
                    float left2 = ((float) childAt2.getLeft()) + f2;
                    float right2 = ((float) childAt2.getRight()) - f2;
                    float f3 = this.currentPositionOffset;
                    left = (left2 * f3) + ((1.0f - f3) * left);
                    right = (right2 * f3) + ((1.0f - f3) * right);
                }
            }
            float f4 = right;
            float f5 = left;
            if (this.currentIndicatorMode == IndicatorMode.MODE_NOWEIGHT_NOEXPAND_NOSAME) {
                int i2 = this.tabPadding;
                canvas.drawRect(f5 - ((float) i2), (float) (height - this.indicatorHeight), f4 + ((float) i2), (float) height, this.rectPaint);
            } else {
                canvas.drawRect(f5, (float) (height - this.indicatorHeight), f4, (float) height, this.rectPaint);
            }
            this.rectPaint.setColor(this.underlineColor);
            canvas.drawRect(0.0f, (float) (height - this.underlineHeight), (float) this.tabsContainer.getWidth(), (float) height, this.rectPaint);
            this.dividerPaint.setColor(this.dividerColor);
            for (int i3 = 0; i3 < this.tabCount - 1; i3++) {
                View childAt3 = this.tabsContainer.getChildAt(i3);
                if (!this.isExpandSameLine) {
                    canvas.drawLine((float) childAt3.getRight(), (float) this.dividerPadding, (float) childAt3.getRight(), (float) (height - this.dividerPadding), this.dividerPaint);
                } else {
                    canvas.drawLine((float) (childAt3.getRight() + this.tabPadding), (float) this.dividerPadding, (float) (childAt3.getRight() + this.tabPadding), (float) (height - this.dividerPadding), this.dividerPaint);
                }
            }
        }
    }

    public void setIndicatorColor(int i) {
        this.indicatorColor = i;
        invalidate();
    }

    public void setIndicatorColorResource(int i) {
        this.indicatorColor = getResources().getColor(i);
        invalidate();
    }

    public int getIndicatorColor() {
        return this.indicatorColor;
    }

    public void setIndicatorHeight(int i) {
        this.indicatorHeight = i;
        invalidate();
    }

    public int getIndicatorHeight() {
        return this.indicatorHeight;
    }

    public void setUnderlineColor(int i) {
        this.underlineColor = i;
        invalidate();
    }

    public void setUnderlineColorResource(int i) {
        this.underlineColor = getResources().getColor(i);
        invalidate();
    }

    public int getUnderlineColor() {
        return this.underlineColor;
    }

    public void setDividerColor(int i) {
        this.dividerColor = i;
        invalidate();
    }

    public void setDividerColorResource(int i) {
        this.dividerColor = getResources().getColor(i);
        invalidate();
    }

    public int getDividerColor() {
        return this.dividerColor;
    }

    public void setUnderlineHeight(int i) {
        this.underlineHeight = i;
        invalidate();
    }

    public int getUnderlineHeight() {
        return this.underlineHeight;
    }

    public void setDividerPadding(int i) {
        this.dividerPadding = i;
        invalidate();
    }

    public int getDividerPadding() {
        return this.dividerPadding;
    }

    public void setScrollOffset(int i) {
        this.scrollOffset = i;
        invalidate();
    }

    public int getScrollOffset() {
        return this.scrollOffset;
    }

    public void setSameLine(boolean z) {
        this.isSameLine = z;
        requestLayout();
    }

    public boolean getSameLine() {
        return this.isSameLine;
    }

    public boolean isTextAllCaps() {
        return this.textAllCaps;
    }

    public void setAllCaps(boolean z) {
        this.textAllCaps = z;
    }

    public void setTextSize(int i) {
        this.tabTextSize = i;
        updateTabStyles();
    }

    public int getTextSize() {
        return this.tabTextSize;
    }

    public void setTextColor(int i) {
        this.tabTextColor = i;
        updateTabStyles();
    }

    public void setTextColorSelected(int i) {
        this.tabTextColorSelected = i;
        updateTabStyles();
    }

    public void setTextColorResource(int i) {
        this.tabTextColor = getResources().getColor(i);
        updateTabStyles();
    }

    public int getTextColor() {
        return this.tabTextColor;
    }

    public void setTabBackground(int i) {
        this.tabBackgroundResId = i;
        updateTabStyles();
    }

    public int getTabBackground() {
        return this.tabBackgroundResId;
    }

    public void setTabPaddingLeftRight(int i) {
        this.tabPadding = i;
        updateTabStyles();
    }

    public int getTabPaddingLeftRight() {
        return this.tabPadding;
    }

    public int getIndicatorPaddingLeft() {
        return this.indicatorPaddingLeft;
    }

    public void setIndicatorPaddingLeft(int i) {
        this.indicatorPaddingLeft = i;
    }

    public int getIndicatorPaddingRight() {
        return this.indicatorPaddingRight;
    }

    public void setIndicatorPaddingRight(int i) {
        this.indicatorPaddingRight = i;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.currentPosition = savedState.currentPosition;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPosition = this.currentPosition;
        return savedState;
    }

    public int dip2px(float f) {
        return (int) ((f * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
