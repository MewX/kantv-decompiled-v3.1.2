package com.kantv.lib.indicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.kantv.lib.indicator.Indicator.DataSetObserver;
import com.kantv.lib.indicator.Indicator.IndicatorAdapter;
import com.kantv.lib.indicator.Indicator.OnIndicatorItemClickListener;
import com.kantv.lib.indicator.Indicator.OnItemSelectedListener;
import com.kantv.lib.indicator.Indicator.OnTransitionListener;
import com.kantv.lib.indicator.slidebar.ScrollBar;
import com.kantv.lib.indicator.slidebar.ScrollBar.Gravity;

public class ScrollIndicatorView extends HorizontalScrollView implements Indicator {
    private Drawable customShadowDrawable;
    private DataSetObserver dataSetObserver = new DataSetObserver() {
        public void onChange() {
            if (ScrollIndicatorView.this.mTabSelector != null) {
                ScrollIndicatorView scrollIndicatorView = ScrollIndicatorView.this;
                scrollIndicatorView.removeCallbacks(scrollIndicatorView.mTabSelector);
            }
            ScrollIndicatorView.this.positionOffset = 0.0f;
            ScrollIndicatorView scrollIndicatorView2 = ScrollIndicatorView.this;
            scrollIndicatorView2.setCurrentItem(scrollIndicatorView2.fixedIndicatorView.getCurrentItem(), false);
            if (ScrollIndicatorView.this.isPinnedTabView && ScrollIndicatorView.this.fixedIndicatorView.getChildCount() > 0) {
                ScrollIndicatorView scrollIndicatorView3 = ScrollIndicatorView.this;
                scrollIndicatorView3.pinnedTabView = scrollIndicatorView3.fixedIndicatorView.getChildAt(0);
            }
        }
    };
    private Paint defaultShadowPaint = null;
    /* access modifiers changed from: private */
    public SFixedIndicatorView fixedIndicatorView;
    /* access modifiers changed from: private */
    public boolean isPinnedTabView = false;
    private boolean mActionDownHappened;
    /* access modifiers changed from: private */
    public Runnable mTabSelector;
    private Drawable pinnedTabBgDrawable;
    /* access modifiers changed from: private */
    public View pinnedTabView;
    /* access modifiers changed from: private */
    public float positionOffset;
    private final ProxyOnItemSelectListener proxyOnItemSelectListener;
    private int shadowWidth;
    /* access modifiers changed from: private */
    public int state = 0;
    private int unScrollPosition = -1;

    /* renamed from: com.kantv.lib.indicator.ScrollIndicatorView$3 reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity = new int[Gravity.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|(3:11|12|14)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity[] r0 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity = r0
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.CENTENT_BACKGROUND     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x001f }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.CENTENT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x002a }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.TOP     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.TOP_FLOAT     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.BOTTOM     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x004b }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.BOTTOM_FLOAT     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kantv.lib.indicator.ScrollIndicatorView.AnonymousClass3.<clinit>():void");
        }
    }

    private class ProxyOnItemSelectListener implements OnItemSelectedListener {
        private OnItemSelectedListener onItemSelectedListener;

        private ProxyOnItemSelectListener() {
        }

        public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener2) {
            this.onItemSelectedListener = onItemSelectedListener2;
        }

        public OnItemSelectedListener getOnItemSelectedListener() {
            return this.onItemSelectedListener;
        }

        public void onItemSelected(View view, int i, int i2) {
            if (ScrollIndicatorView.this.state == 0) {
                ScrollIndicatorView.this.animateToTab(i);
            }
            OnItemSelectedListener onItemSelectedListener2 = this.onItemSelectedListener;
            if (onItemSelectedListener2 != null) {
                onItemSelectedListener2.onItemSelected(view, i, i2);
            }
        }
    }

    private static class SFixedIndicatorView extends FixedIndicatorView {
        private boolean isAutoSplit;

        public SFixedIndicatorView(Context context) {
            super(context);
        }

        public boolean isSplitAuto() {
            return this.isAutoSplit;
        }

        public void setSplitAuto(boolean z) {
            if (this.isAutoSplit != z) {
                this.isAutoSplit = z;
                if (!z) {
                    setSplitMethod(2);
                }
                requestLayout();
                invalidate();
            }
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i, int i2) {
            if (this.isAutoSplit) {
                ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) getParent();
                int measuredWidth = scrollIndicatorView.getMeasuredWidth();
                if (measuredWidth != 0) {
                    int childCount = getChildCount();
                    int i3 = 0;
                    int i4 = 0;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        int measureChildWidth = measureChildWidth(getChildAt(i5), i, i2);
                        if (i4 < measureChildWidth) {
                            i4 = measureChildWidth;
                        }
                        i3 += measureChildWidth;
                    }
                    if (i3 > measuredWidth) {
                        scrollIndicatorView.setFillViewport(false);
                        setSplitMethod(2);
                    } else if (i4 * childCount > measuredWidth) {
                        scrollIndicatorView.setFillViewport(true);
                        setSplitMethod(1);
                    } else {
                        scrollIndicatorView.setFillViewport(true);
                        setSplitMethod(0);
                    }
                }
            }
            super.onMeasure(i, i2);
        }

        private int measureChildWidth(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), -2), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), layoutParams.height));
            return view.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        }
    }

    @TargetApi(11)
    public ScrollIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fixedIndicatorView = new SFixedIndicatorView(context);
        addView(this.fixedIndicatorView, new FrameLayout.LayoutParams(-2, -1));
        setHorizontalScrollBarEnabled(false);
        setSplitAuto(true);
        this.defaultShadowPaint = new Paint();
        this.defaultShadowPaint.setAntiAlias(true);
        this.defaultShadowPaint.setColor(866822826);
        this.shadowWidth = dipToPix(3.0f);
        this.defaultShadowPaint.setShadowLayer((float) this.shadowWidth, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        if (VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        SFixedIndicatorView sFixedIndicatorView = this.fixedIndicatorView;
        ProxyOnItemSelectListener proxyOnItemSelectListener2 = new ProxyOnItemSelectListener();
        this.proxyOnItemSelectListener = proxyOnItemSelectListener2;
        sFixedIndicatorView.setOnItemSelectListener(proxyOnItemSelectListener2);
    }

    public void setSplitAuto(boolean z) {
        setFillViewport(z);
        this.fixedIndicatorView.setSplitAuto(z);
    }

    public boolean isSplitAuto() {
        return this.fixedIndicatorView.isSplitAuto();
    }

    public void setAdapter(IndicatorAdapter indicatorAdapter) {
        if (getIndicatorAdapter() != null) {
            getIndicatorAdapter().unRegistDataSetObserver(this.dataSetObserver);
        }
        this.fixedIndicatorView.setAdapter(indicatorAdapter);
        indicatorAdapter.registDataSetObserver(this.dataSetObserver);
        this.dataSetObserver.onChange();
    }

    public void setOnItemSelectListener(OnItemSelectedListener onItemSelectedListener) {
        this.proxyOnItemSelectListener.setOnItemSelectedListener(onItemSelectedListener);
    }

    public IndicatorAdapter getIndicatorAdapter() {
        return this.fixedIndicatorView.getIndicatorAdapter();
    }

    public void setPinnedTabView(boolean z) {
        this.isPinnedTabView = z;
        if (z && this.fixedIndicatorView.getChildCount() > 0) {
            this.pinnedTabView = this.fixedIndicatorView.getChildAt(0);
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setPinnedShadow(Drawable drawable, int i) {
        this.customShadowDrawable = drawable;
        this.shadowWidth = i;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setPinnedTabBg(Drawable drawable) {
        this.pinnedTabBgDrawable = drawable;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setPinnedTabBgColor(int i) {
        setPinnedTabBg(new ColorDrawable(i));
    }

    public void setPinnedTabBgId(int i) {
        setPinnedTabBg(ContextCompat.getDrawable(getContext(), i));
    }

    public void setPinnedShadow(int i, int i2) {
        setPinnedShadow(ContextCompat.getDrawable(getContext(), i), i2);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            post(runnable);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.mTabSelector;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.fixedIndicatorView.getCount() > 0) {
            animateToTab(this.fixedIndicatorView.getCurrentItem());
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.unScrollPosition;
        if (i5 != -1) {
            View childAt = this.fixedIndicatorView.getChildAt(i5);
            if (childAt != null) {
                int left = childAt.getLeft() - ((getMeasuredWidth() - childAt.getMeasuredWidth()) / 2);
                if (left >= 0) {
                    smoothScrollTo(left, 0);
                    this.unScrollPosition = -1;
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void animateToTab(int i) {
        if (i >= 0 && i <= this.fixedIndicatorView.getCount() - 1) {
            final View childAt = this.fixedIndicatorView.getChildAt(i);
            Runnable runnable = this.mTabSelector;
            if (runnable != null) {
                removeCallbacks(runnable);
            }
            this.mTabSelector = new Runnable() {
                public void run() {
                    ScrollIndicatorView.this.smoothScrollTo(childAt.getLeft() - ((ScrollIndicatorView.this.getWidth() - childAt.getWidth()) / 2), 0);
                    ScrollIndicatorView.this.mTabSelector = null;
                }
            };
            post(this.mTabSelector);
        }
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        int count = this.fixedIndicatorView.getCount();
        if (count != 0) {
            if (i < 0) {
                i = 0;
            } else {
                int i2 = count - 1;
                if (i > i2) {
                    i = i2;
                }
            }
            this.unScrollPosition = -1;
            if (this.state == 0) {
                if (z) {
                    animateToTab(i);
                } else {
                    View childAt = this.fixedIndicatorView.getChildAt(i);
                    scrollTo(childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2), 0);
                    this.unScrollPosition = i;
                }
            }
            this.fixedIndicatorView.setCurrentItem(i, z);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.isPinnedTabView) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            View view = this.pinnedTabView;
            if (view != null && y >= ((float) view.getTop()) && y <= ((float) this.pinnedTabView.getBottom()) && x > ((float) this.pinnedTabView.getLeft()) && x < ((float) this.pinnedTabView.getRight())) {
                if (motionEvent.getAction() == 0) {
                    this.mActionDownHappened = true;
                } else if (motionEvent.getAction() == 1 && this.mActionDownHappened) {
                    this.pinnedTabView.performClick();
                    invalidate(new Rect(0, 0, this.pinnedTabView.getMeasuredWidth(), this.pinnedTabView.getMeasuredHeight()));
                    this.mActionDownHappened = false;
                }
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getCurrentItem() {
        return this.fixedIndicatorView.getCurrentItem();
    }

    public OnItemSelectedListener getOnItemSelectListener() {
        return this.proxyOnItemSelectListener.getOnItemSelectedListener();
    }

    public void setOnIndicatorItemClickListener(OnIndicatorItemClickListener onIndicatorItemClickListener) {
        this.fixedIndicatorView.setOnIndicatorItemClickListener(onIndicatorItemClickListener);
    }

    public OnIndicatorItemClickListener getOnIndicatorItemClickListener() {
        return this.fixedIndicatorView.getOnIndicatorItemClickListener();
    }

    public void setOnTransitionListener(OnTransitionListener onTransitionListener) {
        this.fixedIndicatorView.setOnTransitionListener(onTransitionListener);
    }

    public OnTransitionListener getOnTransitionListener() {
        return this.fixedIndicatorView.getOnTransitionListener();
    }

    public void setScrollBar(ScrollBar scrollBar) {
        this.fixedIndicatorView.setScrollBar(scrollBar);
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.positionOffset = f;
        View childAt = this.fixedIndicatorView.getChildAt(i);
        if (childAt != null) {
            View childAt2 = this.fixedIndicatorView.getChildAt(i + 1);
            scrollTo((int) (((float) (childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2))) + (((float) ((childAt.getWidth() + (childAt2 == null ? childAt.getWidth() : childAt2.getWidth())) / 2)) * f)), 0);
            this.fixedIndicatorView.onPageScrolled(i, f, i2);
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.state = i;
        this.fixedIndicatorView.onPageScrollStateChanged(i);
    }

    public void setItemClickable(boolean z) {
        this.fixedIndicatorView.setItemClickable(z);
    }

    public boolean isItemClickable() {
        return this.fixedIndicatorView.isItemClickable();
    }

    public int getPreSelectItem() {
        return this.fixedIndicatorView.getPreSelectItem();
    }

    public View getItemView(int i) {
        return this.fixedIndicatorView.getItemView(i);
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.isPinnedTabView) {
            int scrollX = getScrollX();
            if (this.pinnedTabView != null && scrollX > 0) {
                int save = canvas.save();
                canvas.translate((float) (scrollX + getPaddingLeft()), (float) getPaddingTop());
                Drawable drawable = this.pinnedTabBgDrawable;
                if (drawable != null) {
                    drawable.setBounds(0, 0, this.pinnedTabView.getWidth(), this.pinnedTabView.getHeight());
                    this.pinnedTabBgDrawable.draw(canvas);
                }
                ScrollBar scrollBar = this.fixedIndicatorView.getScrollBar();
                if (scrollBar != null && scrollBar.getGravity() == Gravity.CENTENT_BACKGROUND) {
                    drawScrollBar(canvas);
                }
                this.pinnedTabView.draw(canvas);
                if (!(scrollBar == null || scrollBar.getGravity() == Gravity.CENTENT_BACKGROUND)) {
                    drawScrollBar(canvas);
                }
                canvas.translate((float) this.pinnedTabView.getWidth(), 0.0f);
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                Drawable drawable2 = this.customShadowDrawable;
                if (drawable2 != null) {
                    drawable2.setBounds(0, 0, this.shadowWidth, height);
                    this.customShadowDrawable.draw(canvas);
                } else {
                    canvas.clipRect(0, 0, this.shadowWidth + dipToPix(1.0f), height);
                    canvas.drawRect(0.0f, 0.0f, (float) dipToPix(1.0f), (float) height, this.defaultShadowPaint);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    private void drawScrollBar(Canvas canvas) {
        ScrollBar scrollBar = this.fixedIndicatorView.getScrollBar();
        if (scrollBar != null && this.fixedIndicatorView.getCurrentItem() == 0) {
            int save = canvas.save();
            int i = AnonymousClass3.$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity[scrollBar.getGravity().ordinal()];
            int i2 = (i == 1 || i == 2) ? (getHeight() - scrollBar.getHeight(getHeight())) / 2 : (i == 3 || i == 4) ? 0 : getHeight() - scrollBar.getHeight(getHeight());
            int width = scrollBar.getWidth(this.pinnedTabView.getWidth());
            int height = scrollBar.getHeight(this.pinnedTabView.getHeight());
            scrollBar.getSlideView().measure(width, height);
            scrollBar.getSlideView().layout(0, 0, width, height);
            canvas.translate((float) ((this.pinnedTabView.getWidth() - width) / 2), (float) i2);
            canvas.clipRect(0, 0, width, height);
            scrollBar.getSlideView().draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    private int dipToPix(float f) {
        return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }
}
