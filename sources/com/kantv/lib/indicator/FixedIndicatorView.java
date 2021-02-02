package com.kantv.lib.indicator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import com.kantv.lib.indicator.Indicator.DataSetObserver;
import com.kantv.lib.indicator.Indicator.IndicatorAdapter;
import com.kantv.lib.indicator.Indicator.OnIndicatorItemClickListener;
import com.kantv.lib.indicator.Indicator.OnItemSelectedListener;
import com.kantv.lib.indicator.Indicator.OnTransitionListener;
import com.kantv.lib.indicator.slidebar.ScrollBar;
import com.kantv.lib.indicator.slidebar.ScrollBar.Gravity;
import java.util.LinkedList;
import java.util.List;

public class FixedIndicatorView extends LinearLayout implements Indicator {
    public static final int SPLITMETHOD_EQUALS = 0;
    public static final int SPLITMETHOD_WEIGHT = 1;
    public static final int SPLITMETHOD_WRAP = 2;
    private Bitmap cacheBitmap;
    private Canvas cacheCanvas = new Canvas();
    private Matrix cacheMatrix = new Matrix();
    /* access modifiers changed from: private */
    public View centerView;
    /* access modifiers changed from: private */
    public LayoutParams centerViewLayoutParams;
    private DataSetObserver dataSetObserver = new DataSetObserver() {
        public void onChange() {
            View view;
            if (!FixedIndicatorView.this.inRun.isFinished()) {
                FixedIndicatorView.this.inRun.stop();
            }
            int access$100 = FixedIndicatorView.this.getTabCountInLayout();
            int count = FixedIndicatorView.this.mAdapter.getCount();
            FixedIndicatorView.this.views.clear();
            int i = 0;
            while (i < access$100 && i < count) {
                FixedIndicatorView.this.views.add((ViewGroup) FixedIndicatorView.this.getItemOutView(i));
                i++;
            }
            FixedIndicatorView.this.removeAllViews();
            int size = FixedIndicatorView.this.views.size();
            int i2 = 0;
            while (i2 < count) {
                LinearLayout linearLayout = new LinearLayout(FixedIndicatorView.this.getContext());
                if (i2 < size) {
                    View childAt = ((ViewGroup) FixedIndicatorView.this.views.get(i2)).getChildAt(0);
                    ((ViewGroup) FixedIndicatorView.this.views.get(i2)).removeView(childAt);
                    view = FixedIndicatorView.this.mAdapter.getView(i2, childAt, linearLayout);
                } else {
                    view = FixedIndicatorView.this.mAdapter.getView(i2, null, linearLayout);
                }
                if (FixedIndicatorView.this.onTransitionListener != null) {
                    FixedIndicatorView.this.onTransitionListener.onTransition(view, i2, i2 == FixedIndicatorView.this.mSelectedTabIndex ? 1.0f : 0.0f);
                }
                linearLayout.addView(view);
                linearLayout.setOnClickListener(FixedIndicatorView.this.onClickListener);
                linearLayout.setTag(Integer.valueOf(i2));
                FixedIndicatorView.this.addView(linearLayout, new LayoutParams(-2, -1));
                i2++;
            }
            if (FixedIndicatorView.this.centerView != null) {
                FixedIndicatorView fixedIndicatorView = FixedIndicatorView.this;
                fixedIndicatorView.setCenterView(fixedIndicatorView.centerView, FixedIndicatorView.this.centerViewLayoutParams);
            }
            FixedIndicatorView.this.mPreSelectedTabIndex = -1;
            FixedIndicatorView fixedIndicatorView2 = FixedIndicatorView.this;
            fixedIndicatorView2.setCurrentItem(fixedIndicatorView2.mSelectedTabIndex, false);
            FixedIndicatorView.this.measureTabs();
        }
    };
    /* access modifiers changed from: private */
    public InRun inRun;
    /* access modifiers changed from: private */
    public boolean itemClickable = true;
    /* access modifiers changed from: private */
    public IndicatorAdapter mAdapter;
    private int mPosition;
    private float mPositionOffset;
    private int mPositionOffsetPixels;
    /* access modifiers changed from: private */
    public int mPreSelectedTabIndex = -1;
    /* access modifiers changed from: private */
    public int mSelectedTabIndex = -1;
    /* access modifiers changed from: private */
    public OnClickListener onClickListener = new OnClickListener() {
        public void onClick(View view) {
            if (FixedIndicatorView.this.itemClickable) {
                int intValue = ((Integer) view.getTag()).intValue();
                ViewGroup viewGroup = (ViewGroup) view;
                View childAt = viewGroup.getChildAt(0);
                if (FixedIndicatorView.this.onIndicatorItemClickListener == null || !FixedIndicatorView.this.onIndicatorItemClickListener.onItemClick(childAt, intValue)) {
                    FixedIndicatorView.this.setCurrentItem(intValue);
                    if (FixedIndicatorView.this.onItemSelectedListener != null) {
                        FixedIndicatorView.this.onItemSelectedListener.onItemSelected(viewGroup.getChildAt(0), intValue, FixedIndicatorView.this.mPreSelectedTabIndex);
                    }
                }
            }
        }
    };
    /* access modifiers changed from: private */
    public OnIndicatorItemClickListener onIndicatorItemClickListener;
    /* access modifiers changed from: private */
    public OnItemSelectedListener onItemSelectedListener;
    /* access modifiers changed from: private */
    public OnTransitionListener onTransitionListener;
    private int[] prePositions = {-1, -1};
    private ScrollBar scrollBar;
    private int splitMethod = 0;
    private int state = 0;
    /* access modifiers changed from: private */
    public List<ViewGroup> views = new LinkedList();

    /* renamed from: com.kantv.lib.indicator.FixedIndicatorView$3 reason: invalid class name */
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
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.BOTTOM_FLOAT     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x001f }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.TOP_FLOAT     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x002a }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.CENTENT_BACKGROUND     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.CENTENT     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x0040 }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.TOP     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = $SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity     // Catch:{ NoSuchFieldError -> 0x004b }
                com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r1 = com.kantv.lib.indicator.slidebar.ScrollBar.Gravity.BOTTOM     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kantv.lib.indicator.FixedIndicatorView.AnonymousClass3.<clinit>():void");
        }
    }

    private class InRun implements Runnable {
        private final Interpolator sInterpolator = new Interpolator() {
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
        private Scroller scroller;
        private int updateTime = 20;

        public InRun() {
            this.scroller = new Scroller(FixedIndicatorView.this.getContext(), this.sInterpolator);
        }

        public void startScroll(int i, int i2, int i3) {
            this.scroller.startScroll(i, 0, i2 - i, 0, i3);
            ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
            FixedIndicatorView.this.post(this);
        }

        public boolean isFinished() {
            return this.scroller.isFinished();
        }

        public boolean computeScrollOffset() {
            return this.scroller.computeScrollOffset();
        }

        public int getCurrentX() {
            return this.scroller.getCurrX();
        }

        public void stop() {
            if (this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            FixedIndicatorView.this.removeCallbacks(this);
        }

        public void run() {
            ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
            if (!this.scroller.isFinished()) {
                FixedIndicatorView.this.postDelayed(this, (long) this.updateTime);
            }
        }
    }

    public FixedIndicatorView(Context context) {
        super(context);
        init();
    }

    @SuppressLint({"NewApi"})
    public FixedIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public FixedIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.inRun = new InRun();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.inRun.stop();
    }

    public void setAdapter(IndicatorAdapter indicatorAdapter) {
        IndicatorAdapter indicatorAdapter2 = this.mAdapter;
        if (indicatorAdapter2 != null) {
            indicatorAdapter2.unRegistDataSetObserver(this.dataSetObserver);
        }
        this.mAdapter = indicatorAdapter;
        indicatorAdapter.registDataSetObserver(this.dataSetObserver);
        indicatorAdapter.notifyDataSetChanged();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() == 1) {
            this.centerView = getChildAt(0);
            this.centerViewLayoutParams = (LayoutParams) this.centerView.getLayoutParams();
        }
    }

    public ScrollBar getScrollBar() {
        return this.scrollBar;
    }

    public void setOnItemSelectListener(OnItemSelectedListener onItemSelectedListener2) {
        this.onItemSelectedListener = onItemSelectedListener2;
    }

    public IndicatorAdapter getIndicatorAdapter() {
        return this.mAdapter;
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setItemClickable(boolean z) {
        this.itemClickable = z;
    }

    public boolean isItemClickable() {
        return this.itemClickable;
    }

    public void setCurrentItem(int i, boolean z) {
        int count = getCount();
        if (count != 0) {
            if (i < 0) {
                i = 0;
            } else {
                int i2 = count - 1;
                if (i > i2) {
                    i = i2;
                }
            }
            int i3 = this.mSelectedTabIndex;
            if (i3 != i) {
                this.mPreSelectedTabIndex = i3;
                this.mSelectedTabIndex = i;
                if (!this.inRun.isFinished()) {
                    this.inRun.stop();
                }
                if (this.state == 0) {
                    updateTabSelectState(i);
                    if (!(!z || getMeasuredWidth() == 0 || getItemOutView(i).getMeasuredWidth() == 0)) {
                        int i4 = this.mPreSelectedTabIndex;
                        if (i4 >= 0 && i4 < getTabCountInLayout()) {
                            int left = getItemOutView(this.mPreSelectedTabIndex).getLeft();
                            int left2 = getItemOutView(i).getLeft();
                            this.inRun.startScroll(left, left2, Math.min((int) (((((float) Math.abs(left2 - left)) / ((float) getItemOutView(i).getMeasuredWidth())) + 1.0f) * 100.0f), 600));
                        }
                    }
                    notifyPageScrolled(i, 0.0f, 0);
                } else if (this.onTransitionListener == null) {
                    updateTabSelectState(i);
                }
            }
        }
    }

    private void updateTabSelectState(int i) {
        IndicatorAdapter indicatorAdapter = this.mAdapter;
        if (indicatorAdapter != null) {
            int count = indicatorAdapter.getCount();
            int i2 = 0;
            while (i2 < count) {
                View itemViewUnCheck = getItemViewUnCheck(i2);
                if (itemViewUnCheck != null) {
                    itemViewUnCheck.setSelected(i == i2);
                }
                i2++;
            }
        }
    }

    public int getCurrentItem() {
        return this.mSelectedTabIndex;
    }

    public void setSplitMethod(int i) {
        this.splitMethod = i;
        measureTabs();
    }

    public int getSplitMethod() {
        return this.splitMethod;
    }

    public void setScrollBar(ScrollBar scrollBar2) {
        int paddingBottom = getPaddingBottom();
        int paddingTop = getPaddingTop();
        if (this.scrollBar != null) {
            int i = AnonymousClass3.$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity[this.scrollBar.getGravity().ordinal()];
            if (i == 1) {
                paddingBottom -= scrollBar2.getHeight(getHeight());
            } else if (i == 2) {
                paddingTop -= scrollBar2.getHeight(getHeight());
            }
        }
        this.scrollBar = scrollBar2;
        int i2 = AnonymousClass3.$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity[this.scrollBar.getGravity().ordinal()];
        if (i2 == 1) {
            paddingBottom += scrollBar2.getHeight(getHeight());
        } else if (i2 == 2) {
            paddingTop += scrollBar2.getHeight(getHeight());
        }
        setPadding(getPaddingLeft(), paddingTop, getPaddingRight(), paddingBottom);
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        ScrollBar scrollBar2 = this.scrollBar;
        if (scrollBar2 != null && scrollBar2.getGravity() == Gravity.CENTENT_BACKGROUND) {
            drawSlideBar(canvas);
        }
        super.dispatchDraw(canvas);
        ScrollBar scrollBar3 = this.scrollBar;
        if (scrollBar3 != null && scrollBar3.getGravity() != Gravity.CENTENT_BACKGROUND) {
            drawSlideBar(canvas);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00be  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0124  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void drawSlideBar(android.graphics.Canvas r15) {
        /*
            r14 = this;
            com.kantv.lib.indicator.Indicator$IndicatorAdapter r0 = r14.mAdapter
            if (r0 == 0) goto L_0x01a6
            com.kantv.lib.indicator.slidebar.ScrollBar r1 = r14.scrollBar
            if (r1 != 0) goto L_0x000a
            goto L_0x01a6
        L_0x000a:
            int r0 = r0.getCount()
            if (r0 != 0) goto L_0x0016
            com.kantv.lib.indicator.FixedIndicatorView$InRun r15 = r14.inRun
            r15.stop()
            return
        L_0x0016:
            int r1 = r14.getCurrentItem()
            r2 = 1
            if (r1 < r0) goto L_0x0027
            int r0 = r0 - r2
            r14.setCurrentItem(r0)
            com.kantv.lib.indicator.FixedIndicatorView$InRun r15 = r14.inRun
            r15.stop()
            return
        L_0x0027:
            int[] r1 = com.kantv.lib.indicator.FixedIndicatorView.AnonymousClass3.$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity
            com.kantv.lib.indicator.slidebar.ScrollBar r3 = r14.scrollBar
            com.kantv.lib.indicator.slidebar.ScrollBar$Gravity r3 = r3.getGravity()
            int r3 = r3.ordinal()
            r1 = r1[r3]
            r3 = 2
            r4 = 0
            if (r1 == r3) goto L_0x0064
            r5 = 3
            if (r1 == r5) goto L_0x0053
            r5 = 4
            if (r1 == r5) goto L_0x0053
            r5 = 5
            if (r1 == r5) goto L_0x0064
            int r1 = r14.getHeight()
            com.kantv.lib.indicator.slidebar.ScrollBar r5 = r14.scrollBar
            int r6 = r14.getHeight()
            int r5 = r5.getHeight(r6)
            int r1 = r1 - r5
        L_0x0051:
            float r1 = (float) r1
            goto L_0x0065
        L_0x0053:
            int r1 = r14.getHeight()
            com.kantv.lib.indicator.slidebar.ScrollBar r5 = r14.scrollBar
            int r6 = r14.getHeight()
            int r5 = r5.getHeight(r6)
            int r1 = r1 - r5
            int r1 = r1 / r3
            goto L_0x0051
        L_0x0064:
            r1 = 0
        L_0x0065:
            com.kantv.lib.indicator.FixedIndicatorView$InRun r5 = r14.inRun
            boolean r5 = r5.isFinished()
            r6 = 0
            r7 = 0
            if (r5 != 0) goto L_0x00ba
            com.kantv.lib.indicator.FixedIndicatorView$InRun r5 = r14.inRun
            boolean r5 = r5.computeScrollOffset()
            if (r5 == 0) goto L_0x00ba
            com.kantv.lib.indicator.FixedIndicatorView$InRun r5 = r14.inRun
            int r5 = r5.getCurrentX()
            float r5 = (float) r5
            r9 = r6
            r8 = 0
        L_0x0080:
            if (r8 >= r0) goto L_0x009c
            android.view.View r9 = r14.getItemOutView(r8)
            int r10 = r9.getLeft()
            float r10 = (float) r10
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 > 0) goto L_0x0099
            int r10 = r9.getRight()
            float r10 = (float) r10
            int r10 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r10 >= 0) goto L_0x0099
            goto L_0x009d
        L_0x0099:
            int r8 = r8 + 1
            goto L_0x0080
        L_0x009c:
            r8 = 0
        L_0x009d:
            int r0 = r9.getWidth()
            int r10 = r9.getLeft()
            float r10 = (float) r10
            float r10 = r5 - r10
            int r10 = (int) r10
            int r9 = r9.getLeft()
            float r9 = (float) r9
            float r9 = r5 - r9
            float r0 = (float) r0
            float r9 = r9 / r0
            r14.notifyPageScrolled(r8, r9, r10)
            int r0 = r14.measureScrollBar(r8, r9, r2)
            goto L_0x00f7
        L_0x00ba:
            int r0 = r14.state
            if (r0 == 0) goto L_0x00e3
            int r0 = r14.mPosition
            android.view.View r0 = r14.getItemOutView(r0)
            int r5 = r0.getWidth()
            int r0 = r0.getLeft()
            float r0 = (float) r0
            float r5 = (float) r5
            float r8 = r14.mPositionOffset
            float r5 = r5 * r8
            float r5 = r5 + r0
            int r0 = r14.mPosition
            int r9 = r14.mPositionOffsetPixels
            r14.notifyPageScrolled(r0, r8, r9)
            int r0 = r14.mPosition
            float r8 = r14.mPositionOffset
            int r0 = r14.measureScrollBar(r0, r8, r2)
            goto L_0x00f7
        L_0x00e3:
            int r0 = r14.mSelectedTabIndex
            int r0 = r14.measureScrollBar(r0, r4, r2)
            int r2 = r14.mSelectedTabIndex
            android.view.View r2 = r14.getItemOutView(r2)
            if (r2 != 0) goto L_0x00f2
            return
        L_0x00f2:
            int r2 = r2.getLeft()
            float r5 = (float) r2
        L_0x00f7:
            com.kantv.lib.indicator.slidebar.ScrollBar r2 = r14.scrollBar
            android.view.View r2 = r2.getSlideView()
            int r2 = r2.getHeight()
            com.kantv.lib.indicator.slidebar.ScrollBar r8 = r14.scrollBar
            android.view.View r8 = r8.getSlideView()
            int r8 = r8.getWidth()
            int r9 = r0 - r8
            int r9 = r9 / r3
            float r3 = (float) r9
            float r5 = r5 + r3
            int r3 = r15.save()
            int r9 = r14.getMeasuredWidth()
            int r10 = r14.getMeasuredHeight()
            com.kantv.lib.indicator.Indicator$IndicatorAdapter r11 = r14.mAdapter
            boolean r11 = r11.isLoop()
            if (r11 == 0) goto L_0x0193
            float r11 = (float) r8
            float r11 = r11 + r5
            float r12 = (float) r9
            int r13 = (r11 > r12 ? 1 : (r11 == r12 ? 0 : -1))
            if (r13 <= 0) goto L_0x0193
            android.graphics.Bitmap r13 = r14.cacheBitmap
            if (r13 == 0) goto L_0x013d
            int r13 = r13.getWidth()
            if (r13 < r8) goto L_0x013d
            android.graphics.Bitmap r13 = r14.cacheBitmap
            int r13 = r13.getWidth()
            if (r13 >= r2) goto L_0x014c
        L_0x013d:
            android.graphics.Bitmap$Config r13 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r9 = android.graphics.Bitmap.createBitmap(r9, r10, r13)
            r14.cacheBitmap = r9
            android.graphics.Canvas r9 = r14.cacheCanvas
            android.graphics.Bitmap r10 = r14.cacheBitmap
            r9.setBitmap(r10)
        L_0x014c:
            float r11 = r11 - r12
            android.graphics.Canvas r9 = r14.cacheCanvas
            r9.save()
            android.graphics.Canvas r9 = r14.cacheCanvas
            r9.clipRect(r7, r7, r8, r2)
            android.graphics.Canvas r9 = r14.cacheCanvas
            android.graphics.PorterDuff$Mode r10 = android.graphics.PorterDuff.Mode.CLEAR
            r9.drawColor(r7, r10)
            com.kantv.lib.indicator.slidebar.ScrollBar r9 = r14.scrollBar
            android.view.View r9 = r9.getSlideView()
            android.graphics.Canvas r10 = r14.cacheCanvas
            r9.draw(r10)
            android.graphics.Canvas r9 = r14.cacheCanvas
            r9.restore()
            int r9 = r15.save()
            r15.translate(r5, r1)
            r15.clipRect(r7, r7, r8, r2)
            android.graphics.Bitmap r1 = r14.cacheBitmap
            r15.drawBitmap(r1, r4, r4, r6)
            r15.restoreToCount(r9)
            float r1 = (float) r2
            r15.clipRect(r4, r4, r11, r1)
            android.graphics.Matrix r1 = r14.cacheMatrix
            float r0 = (float) r0
            float r11 = r11 - r0
            r1.setTranslate(r11, r4)
            android.graphics.Bitmap r0 = r14.cacheBitmap
            android.graphics.Matrix r1 = r14.cacheMatrix
            r15.drawBitmap(r0, r1, r6)
            goto L_0x01a2
        L_0x0193:
            r15.translate(r5, r1)
            r15.clipRect(r7, r7, r8, r2)
            com.kantv.lib.indicator.slidebar.ScrollBar r0 = r14.scrollBar
            android.view.View r0 = r0.getSlideView()
            r0.draw(r15)
        L_0x01a2:
            r15.restoreToCount(r3)
            return
        L_0x01a6:
            com.kantv.lib.indicator.FixedIndicatorView$InRun r15 = r14.inRun
            r15.stop()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.lib.indicator.FixedIndicatorView.drawSlideBar(android.graphics.Canvas):void");
    }

    private void notifyPageScrolled(int i, float f, int i2) {
        int[] iArr;
        if (i >= 0 && i <= getCount() - 1) {
            ScrollBar scrollBar2 = this.scrollBar;
            if (scrollBar2 != null) {
                scrollBar2.onPageScrolled(i, f, i2);
            }
            if (this.onTransitionListener != null) {
                for (int i3 : this.prePositions) {
                    if (!(i3 == i || i3 == i + 1)) {
                        View itemView = getItemView(i3);
                        if (itemView != null) {
                            this.onTransitionListener.onTransition(itemView, i3, 0.0f);
                        }
                    }
                }
                int[] iArr2 = this.prePositions;
                iArr2[0] = i;
                int i4 = i + 1;
                iArr2[1] = i4;
                View itemView2 = getItemView(this.mPreSelectedTabIndex);
                if (itemView2 != null) {
                    this.onTransitionListener.onTransition(itemView2, this.mPreSelectedTabIndex, 0.0f);
                }
                View itemView3 = getItemView(i);
                if (itemView3 != null) {
                    this.onTransitionListener.onTransition(itemView3, i, 1.0f - f);
                }
                View itemView4 = getItemView(i4);
                if (itemView4 != null) {
                    this.onTransitionListener.onTransition(itemView4, i4, f);
                }
            }
        }
    }

    private int measureScrollBar(int i, float f, boolean z) {
        View view;
        ScrollBar scrollBar2 = this.scrollBar;
        if (scrollBar2 == null || this.mAdapter == null) {
            return 0;
        }
        View slideView = scrollBar2.getSlideView();
        if (slideView.isLayoutRequested() || z) {
            View itemOutView = getItemOutView(i);
            int i2 = i + 1;
            if (i2 < this.mAdapter.getCount()) {
                view = getItemOutView(i2);
            } else {
                view = getItemOutView(0);
            }
            if (itemOutView != null) {
                int width = (int) ((((float) itemOutView.getWidth()) * (1.0f - f)) + (view == null ? 0.0f : ((float) view.getWidth()) * f));
                int width2 = this.scrollBar.getWidth(width);
                int height = this.scrollBar.getHeight(getHeight());
                slideView.measure(width2, height);
                slideView.layout(0, 0, width2, height);
                return width;
            }
        }
        return this.scrollBar.getSlideView().getWidth();
    }

    /* access modifiers changed from: private */
    public void measureTabs() {
        int tabCountInLayout = getTabCountInLayout();
        int i = this.splitMethod;
        int i2 = 0;
        if (i == 0) {
            for (int i3 = 0; i3 < tabCountInLayout; i3++) {
                View itemOutView = getItemOutView(i3);
                LayoutParams layoutParams = (LayoutParams) itemOutView.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                itemOutView.setLayoutParams(layoutParams);
            }
        } else if (i == 1) {
            while (i2 < tabCountInLayout) {
                View itemOutView2 = getItemOutView(i2);
                LayoutParams layoutParams2 = (LayoutParams) itemOutView2.getLayoutParams();
                layoutParams2.width = -2;
                layoutParams2.weight = 1.0f;
                itemOutView2.setLayoutParams(layoutParams2);
                i2++;
            }
        } else if (i == 2) {
            while (i2 < tabCountInLayout) {
                View itemOutView3 = getItemOutView(i2);
                LayoutParams layoutParams3 = (LayoutParams) itemOutView3.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.weight = 0.0f;
                itemOutView3.setLayoutParams(layoutParams3);
                i2++;
            }
        }
    }

    public int getCount() {
        IndicatorAdapter indicatorAdapter = this.mAdapter;
        if (indicatorAdapter == null) {
            return 0;
        }
        return indicatorAdapter.getCount();
    }

    /* access modifiers changed from: protected */
    public void measureChildren(int i, int i2) {
        super.measureChildren(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        measureScrollBar(this.mSelectedTabIndex, 1.0f, true);
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.mPosition = i;
        this.mPositionOffset = f;
        this.mPositionOffsetPixels = i2;
        if (this.scrollBar != null) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            notifyPageScrolled(i, f, i2);
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.state = i;
        if (i == 0) {
            updateTabSelectState(this.mSelectedTabIndex);
        }
    }

    public void setOnTransitionListener(OnTransitionListener onTransitionListener2) {
        this.onTransitionListener = onTransitionListener2;
        updateTabSelectState(this.mSelectedTabIndex);
        if (this.mAdapter != null) {
            int i = 0;
            while (i < this.mAdapter.getCount()) {
                View itemView = getItemView(i);
                if (itemView != null) {
                    onTransitionListener2.onTransition(itemView, i, this.mSelectedTabIndex == i ? 1.0f : 0.0f);
                }
                i++;
            }
        }
    }

    public View getItemView(int i) {
        IndicatorAdapter indicatorAdapter = this.mAdapter;
        if (indicatorAdapter != null && i >= 0 && i <= indicatorAdapter.getCount() - 1) {
            return getItemViewUnCheck(i);
        }
        return null;
    }

    private View getItemViewUnCheck(int i) {
        return ((ViewGroup) getItemOutView(i)).getChildAt(0);
    }

    /* access modifiers changed from: private */
    public View getItemOutView(int i) {
        if (this.centerView != null && i >= (getChildCount() - 1) / 2) {
            i++;
        }
        return getChildAt(i);
    }

    public void setCenterView(View view, int i, int i2) {
        this.centerView = view;
        LayoutParams layoutParams = new LayoutParams(i, i2);
        layoutParams.gravity = 16;
        setCenterView(view, layoutParams);
    }

    public void setCenterView(View view) {
        setCenterView(view, view.getLayoutParams());
    }

    public void setCenterView(View view, ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        removeCenterView();
        if (layoutParams == null) {
            layoutParams2 = new LayoutParams(-2, -1);
        } else {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        this.centerViewLayoutParams = layoutParams2;
        this.centerView = view;
        addView(view, getChildCount() / 2, layoutParams2);
    }

    public View getCenterView() {
        return this.centerView;
    }

    /* access modifiers changed from: private */
    public int getTabCountInLayout() {
        if (this.centerView != null) {
            return getChildCount() - 1;
        }
        return getChildCount();
    }

    public void removeCenterView() {
        View view = this.centerView;
        if (view != null) {
            removeView(view);
            this.centerView = null;
        }
        this.centerViewLayoutParams = null;
    }

    public OnItemSelectedListener getOnItemSelectListener() {
        return this.onItemSelectedListener;
    }

    public void setOnIndicatorItemClickListener(OnIndicatorItemClickListener onIndicatorItemClickListener2) {
        this.onIndicatorItemClickListener = onIndicatorItemClickListener2;
    }

    public OnIndicatorItemClickListener getOnIndicatorItemClickListener() {
        return this.onIndicatorItemClickListener;
    }

    public OnTransitionListener getOnTransitionListener() {
        return this.onTransitionListener;
    }

    public int getPreSelectItem() {
        return this.mPreSelectedTabIndex;
    }
}
