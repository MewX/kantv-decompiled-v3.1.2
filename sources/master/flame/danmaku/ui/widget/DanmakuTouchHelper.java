package master.flame.danmaku.ui.widget;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import master.flame.danmaku.controller.IDanmakuView;
import master.flame.danmaku.controller.IDanmakuView.OnDanmakuClickListener;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.DefaultConsumer;
import master.flame.danmaku.danmaku.model.android.Danmakus;

public class DanmakuTouchHelper {
    /* access modifiers changed from: private */
    public IDanmakuView danmakuView;
    /* access modifiers changed from: private */
    public RectF mDanmakuBounds;
    private final OnGestureListener mOnGestureListener = new SimpleOnGestureListener() {
        public boolean onDown(MotionEvent motionEvent) {
            if (DanmakuTouchHelper.this.danmakuView == null || DanmakuTouchHelper.this.danmakuView.getOnDanmakuClickListener() == null) {
                return false;
            }
            DanmakuTouchHelper danmakuTouchHelper = DanmakuTouchHelper.this;
            danmakuTouchHelper.mXOff = danmakuTouchHelper.danmakuView.getXOff();
            DanmakuTouchHelper danmakuTouchHelper2 = DanmakuTouchHelper.this;
            danmakuTouchHelper2.mYOff = danmakuTouchHelper2.danmakuView.getYOff();
            return true;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            IDanmakus access$300 = DanmakuTouchHelper.this.touchHitDanmaku(motionEvent.getX(), motionEvent.getY());
            boolean z = false;
            if (access$300 != null && !access$300.isEmpty()) {
                z = DanmakuTouchHelper.this.performDanmakuClick(access$300, false);
            }
            return !z ? DanmakuTouchHelper.this.performViewClick() : z;
        }

        public void onLongPress(MotionEvent motionEvent) {
            if (DanmakuTouchHelper.this.danmakuView.getOnDanmakuClickListener() != null) {
                DanmakuTouchHelper danmakuTouchHelper = DanmakuTouchHelper.this;
                danmakuTouchHelper.mXOff = danmakuTouchHelper.danmakuView.getXOff();
                DanmakuTouchHelper danmakuTouchHelper2 = DanmakuTouchHelper.this;
                danmakuTouchHelper2.mYOff = danmakuTouchHelper2.danmakuView.getYOff();
                IDanmakus access$300 = DanmakuTouchHelper.this.touchHitDanmaku(motionEvent.getX(), motionEvent.getY());
                if (access$300 != null && !access$300.isEmpty()) {
                    DanmakuTouchHelper.this.performDanmakuClick(access$300, true);
                }
            }
        }
    };
    private final GestureDetector mTouchDelegate;
    /* access modifiers changed from: private */
    public float mXOff;
    /* access modifiers changed from: private */
    public float mYOff;

    private DanmakuTouchHelper(IDanmakuView iDanmakuView) {
        this.danmakuView = iDanmakuView;
        this.mDanmakuBounds = new RectF();
        this.mTouchDelegate = new GestureDetector(((View) iDanmakuView).getContext(), this.mOnGestureListener);
    }

    public static synchronized DanmakuTouchHelper instance(IDanmakuView iDanmakuView) {
        DanmakuTouchHelper danmakuTouchHelper;
        synchronized (DanmakuTouchHelper.class) {
            danmakuTouchHelper = new DanmakuTouchHelper(iDanmakuView);
        }
        return danmakuTouchHelper;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mTouchDelegate.onTouchEvent(motionEvent);
    }

    /* access modifiers changed from: private */
    public boolean performDanmakuClick(IDanmakus iDanmakus, boolean z) {
        OnDanmakuClickListener onDanmakuClickListener = this.danmakuView.getOnDanmakuClickListener();
        if (onDanmakuClickListener == null) {
            return false;
        }
        if (z) {
            return onDanmakuClickListener.onDanmakuLongClick(iDanmakus);
        }
        return onDanmakuClickListener.onDanmakuClick(iDanmakus);
    }

    /* access modifiers changed from: private */
    public boolean performViewClick() {
        OnDanmakuClickListener onDanmakuClickListener = this.danmakuView.getOnDanmakuClickListener();
        if (onDanmakuClickListener != null) {
            return onDanmakuClickListener.onViewClick(this.danmakuView);
        }
        return false;
    }

    /* access modifiers changed from: private */
    public IDanmakus touchHitDanmaku(final float f, final float f2) {
        final Danmakus danmakus = new Danmakus();
        this.mDanmakuBounds.setEmpty();
        IDanmakus currentVisibleDanmakus = this.danmakuView.getCurrentVisibleDanmakus();
        if (currentVisibleDanmakus != null && !currentVisibleDanmakus.isEmpty()) {
            currentVisibleDanmakus.forEachSync(new DefaultConsumer<BaseDanmaku>() {
                public int accept(BaseDanmaku baseDanmaku) {
                    if (baseDanmaku != null) {
                        DanmakuTouchHelper.this.mDanmakuBounds.set(baseDanmaku.getLeft(), baseDanmaku.getTop(), baseDanmaku.getRight(), baseDanmaku.getBottom());
                        if (DanmakuTouchHelper.this.mDanmakuBounds.intersect(f - DanmakuTouchHelper.this.mXOff, f2 - DanmakuTouchHelper.this.mYOff, f + DanmakuTouchHelper.this.mXOff, f2 + DanmakuTouchHelper.this.mYOff)) {
                            danmakus.addItem(baseDanmaku);
                        }
                    }
                    return 0;
                }
            });
        }
        return danmakus;
    }
}
