package com.kantv.ui.view.swipelayout;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import androidx.customview.widget.ViewDragHelper.Callback;

public class SwipeLayout extends FrameLayout {
    /* access modifiers changed from: private */
    public int STATE_CLOSE = 1;
    /* access modifiers changed from: private */
    public int STATE_OPEN = 0;
    Callback callback = new Callback() {
        public boolean tryCaptureView(View view, int i) {
            return view == SwipeLayout.this.contentView || view == SwipeLayout.this.deleteView;
        }

        public int getViewHorizontalDragRange(View view) {
            return SwipeLayout.this.dragWidth;
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int access$300;
            if (view == SwipeLayout.this.contentView) {
                if (i > 0) {
                    i = 0;
                }
                if (i >= (-SwipeLayout.this.dragWidth)) {
                    return i;
                }
                access$300 = -SwipeLayout.this.dragWidth;
            } else if (view != SwipeLayout.this.deleteView) {
                return i;
            } else {
                if (i > SwipeLayout.this.contentWidth) {
                    i = SwipeLayout.this.contentWidth;
                }
                if (i >= SwipeLayout.this.contentWidth - SwipeLayout.this.deleteWidth) {
                    return i;
                }
                access$300 = SwipeLayout.this.contentWidth - SwipeLayout.this.deleteWidth;
            }
            return access$300;
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            if (view == SwipeLayout.this.contentView) {
                int left = SwipeLayout.this.deleteView.getLeft() + i3;
                SwipeLayout.this.deleteView.layout(left, SwipeLayout.this.getTop(), SwipeLayout.this.deleteWidth + left, SwipeLayout.this.getBottom());
            } else if (view == SwipeLayout.this.deleteView) {
                SwipeLayout.this.contentView.layout(i - SwipeLayout.this.contentWidth, SwipeLayout.this.contentView.getTop(), i, SwipeLayout.this.contentView.getBottom());
            }
            if (SwipeLayout.this.contentView.getLeft() == (-SwipeLayout.this.deleteWidth) && SwipeLayout.this.mState == SwipeLayout.this.STATE_CLOSE) {
                SwipeLayout swipeLayout = SwipeLayout.this;
                swipeLayout.mState = swipeLayout.STATE_OPEN;
                SwipeLayoutManager.getInstance().setOpenInstance(SwipeLayout.this);
            } else if (SwipeLayout.this.contentView.getLeft() == 0 && SwipeLayout.this.mState == SwipeLayout.this.STATE_OPEN) {
                SwipeLayout swipeLayout2 = SwipeLayout.this;
                swipeLayout2.mState = swipeLayout2.STATE_CLOSE;
                SwipeLayoutManager.getInstance().closeOpenInstance();
            }
        }

        public void onViewReleased(View view, float f, float f2) {
            if (SwipeLayout.this.contentView.getRight() < SwipeLayout.this.contentWidth - (SwipeLayout.this.dragWidth / 2)) {
                SwipeLayout.this.openDeleteMenu();
            } else {
                SwipeLayout.this.closeDeleteMenu();
            }
        }
    };
    /* access modifiers changed from: private */
    public View contentView;
    /* access modifiers changed from: private */
    public int contentWidth;
    /* access modifiers changed from: private */
    public View deleteView;
    /* access modifiers changed from: private */
    public int deleteWidth;
    long downTime;
    float downX;
    float downY;
    private ViewDragHelper dragHelper;
    /* access modifiers changed from: private */
    public int dragWidth;
    private OnSwipeLayoutClickListener listener;
    /* access modifiers changed from: private */
    public int mState = this.STATE_CLOSE;
    float touchSlop;

    public interface OnSwipeLayoutClickListener {
        void onClick();
    }

    public SwipeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.dragHelper = ViewDragHelper.create(this, this.callback);
        this.touchSlop = (float) ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!SwipeLayoutManager.getInstance().isCouldSwipe(this)) {
            return true;
        }
        return this.dragHelper.shouldInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!SwipeLayoutManager.getInstance().isCouldSwipe(this)) {
            SwipeLayoutManager.getInstance().closeOpenInstance();
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downX = motionEvent.getX();
            this.downY = motionEvent.getY();
            this.downTime = System.currentTimeMillis();
        } else if (action == 1) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = currentTimeMillis - this.downTime;
            float distanceBetween2Points = getDistanceBetween2Points(new PointF(this.downX, this.downY), new PointF(motionEvent.getX(), motionEvent.getY()));
            if (j < 400 && distanceBetween2Points < this.touchSlop) {
                if (SwipeLayoutManager.getInstance().isOpenInstance(this)) {
                    SwipeLayoutManager.getInstance().closeOpenInstance();
                } else {
                    OnSwipeLayoutClickListener onSwipeLayoutClickListener = this.listener;
                    if (onSwipeLayoutClickListener != null) {
                        onSwipeLayoutClickListener.onClick();
                    }
                }
            }
        } else if (action == 2) {
            if (Math.abs(motionEvent.getY() - this.downY) < Math.abs(motionEvent.getX() - this.downX)) {
                requestDisallowInterceptTouchEvent(true);
            }
        }
        this.dragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public void closeDeleteMenu() {
        ViewDragHelper viewDragHelper = this.dragHelper;
        View view = this.contentView;
        viewDragHelper.smoothSlideViewTo(view, 0, view.getTop());
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void openDeleteMenu() {
        ViewDragHelper viewDragHelper = this.dragHelper;
        View view = this.contentView;
        viewDragHelper.smoothSlideViewTo(view, -this.dragWidth, view.getTop());
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void computeScroll() {
        if (this.dragHelper.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.contentView.layout(i, i2, i3, i4);
        this.deleteView.layout(i3, i2, this.deleteWidth + i3, i4);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() == 2) {
            this.contentView = getChildAt(0);
            this.deleteView = getChildAt(1);
            return;
        }
        throw new IllegalArgumentException("the swipelayout only have 2 children!");
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.contentWidth = this.contentView.getMeasuredWidth();
        this.deleteWidth = this.deleteView.getMeasuredWidth();
        this.dragWidth = this.deleteWidth;
    }

    public View getDeleteView() {
        return this.deleteView;
    }

    public View getContentView() {
        return this.contentView;
    }

    public void setOnSwipeLayoutClickListener(OnSwipeLayoutClickListener onSwipeLayoutClickListener) {
        this.listener = onSwipeLayoutClickListener;
    }

    public static float getDistanceBetween2Points(PointF pointF, PointF pointF2) {
        return (float) Math.sqrt(Math.pow((double) (pointF.y - pointF2.y), 2.0d) + Math.pow((double) (pointF.x - pointF2.x), 2.0d));
    }
}
