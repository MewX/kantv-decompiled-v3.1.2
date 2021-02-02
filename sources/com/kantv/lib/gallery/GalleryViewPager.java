package com.kantv.lib.gallery;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.PageTransformer;
import com.kantv.lib.R;
import java.lang.reflect.Field;
import java.util.Timer;
import java.util.TimerTask;
import master.flame.danmaku.danmaku.model.android.DanmakuFactory;

public class GalleryViewPager extends LinearLayout {
    private Context context;
    private boolean mAutoCycle;
    private boolean mAutoRecover = true;
    private TimerTask mCycleTask;
    private Timer mCycleTimer;
    private boolean mCycling;
    private TimerTask mResumingTask;
    private Timer mResumingTimer;
    private long mSliderDuration = DanmakuFactory.MIN_DANMAKU_DURATION;
    /* access modifiers changed from: private */
    public Handler mh = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            GalleryViewPager.this.moveNextPosition(true);
        }
    };
    private ViewPager viewPager;

    public GalleryViewPager(Context context2) {
        super(context2);
        this.context = context2;
        init();
    }

    public GalleryViewPager(Context context2, AttributeSet attributeSet) {
        super(context2, attributeSet);
        this.context = context2;
        init();
    }

    private void init() {
        LayoutInflater.from(this.context).inflate(R.layout.gallery, this);
        this.viewPager = (ViewPager) findViewById(R.id.viewpager);
        this.viewPager.setOffscreenPageLimit(3);
        this.viewPager.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    GalleryViewPager.this.recoverCycle();
                }
                return false;
            }
        });
    }

    public void setPageMargin(int i) {
        this.viewPager.setPageMargin(i);
    }

    public void setOffscreenPageLimit(int i) {
        this.viewPager.setOffscreenPageLimit(i);
    }

    public void setPageTransformer(boolean z, PageTransformer pageTransformer) {
        this.viewPager.setPageTransformer(z, pageTransformer);
    }

    public void setViewPagerMargin(int i) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.viewPager.getLayoutParams();
        marginLayoutParams.setMargins(i, 0, i, 0);
        this.viewPager.setLayoutParams(marginLayoutParams);
    }

    public void setCurrentItem(int i) {
        this.viewPager.setCurrentItem(i);
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        this.viewPager.setAdapter(pagerAdapter);
    }

    public void startAutoCycle() {
        long j = this.mSliderDuration;
        startAutoCycle(j, j, this.mAutoRecover);
    }

    public void startAutoCycle(long j, long j2, boolean z) {
        Timer timer = this.mCycleTimer;
        if (timer != null) {
            timer.cancel();
        }
        TimerTask timerTask = this.mCycleTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        TimerTask timerTask2 = this.mResumingTask;
        if (timerTask2 != null) {
            timerTask2.cancel();
        }
        Timer timer2 = this.mResumingTimer;
        if (timer2 != null) {
            timer2.cancel();
        }
        this.mSliderDuration = j2;
        this.mCycleTimer = new Timer();
        this.mAutoRecover = z;
        this.mCycleTask = new TimerTask() {
            public void run() {
                GalleryViewPager.this.mh.sendEmptyMessage(0);
            }
        };
        this.mCycleTimer.schedule(this.mCycleTask, j, this.mSliderDuration);
        this.mCycling = true;
        this.mAutoCycle = true;
    }

    public void pauseAutoCycle() {
        if (this.mCycling) {
            this.mCycleTimer.cancel();
            this.mCycleTask.cancel();
            this.mCycling = false;
        } else if (this.mResumingTimer != null && this.mResumingTask != null) {
            recoverCycle();
        }
    }

    public void setDuration(long j) {
        if (j >= 500) {
            this.mSliderDuration = j;
            if (this.mAutoCycle && this.mCycling) {
                startAutoCycle();
            }
        }
    }

    public void stopAutoCycle() {
        TimerTask timerTask = this.mCycleTask;
        if (timerTask != null) {
            timerTask.cancel();
        }
        Timer timer = this.mCycleTimer;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = this.mResumingTimer;
        if (timer2 != null) {
            timer2.cancel();
        }
        TimerTask timerTask2 = this.mResumingTask;
        if (timerTask2 != null) {
            timerTask2.cancel();
        }
        this.mAutoCycle = false;
        this.mCycling = false;
    }

    public void recoverCycle() {
        if (this.mAutoRecover && this.mAutoCycle && !this.mCycling) {
            if (this.mResumingTask != null) {
                Timer timer = this.mResumingTimer;
                if (timer != null) {
                    timer.cancel();
                    this.mResumingTask.cancel();
                }
            }
            this.mResumingTimer = new Timer();
            this.mResumingTask = new TimerTask() {
                public void run() {
                    GalleryViewPager.this.startAutoCycle();
                }
            };
            this.mResumingTimer.schedule(this.mResumingTask, 1000);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            pauseAutoCycle();
        }
        return false;
    }

    public void setSliderTransformDuration(int i, Interpolator interpolator) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            declaredField.set(this.viewPager, new FixedSpeedScroller(this.viewPager.getContext(), interpolator, i));
        } catch (Exception unused) {
        }
    }

    public void setCurrentPosition(int i, boolean z) {
        if (getRealAdapter() == null) {
            throw new IllegalStateException("You did not set a slider adapter");
        } else if (i < getRealAdapter().getCount()) {
            this.viewPager.setCurrentItem((i - (this.viewPager.getCurrentItem() % getRealAdapter().getCount())) + this.viewPager.getCurrentItem(), z);
        } else {
            throw new IllegalStateException("Item position is not exist");
        }
    }

    public void setCurrentPosition(int i) {
        setCurrentPosition(i, true);
    }

    public void movePrevPosition(boolean z) {
        if (getRealAdapter() != null) {
            ViewPager viewPager2 = this.viewPager;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() - 1, z);
            return;
        }
        throw new IllegalStateException("You did not set a slider adapter");
    }

    public void movePrevPosition() {
        movePrevPosition(true);
    }

    public void moveNextPosition(boolean z) {
        if (getRealAdapter() != null) {
            ViewPager viewPager2 = this.viewPager;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, z);
            return;
        }
        throw new IllegalStateException("You did not set a slider adapter");
    }

    public void moveNextPosition() {
        moveNextPosition(true);
    }

    private PagerAdapter getRealAdapter() {
        return this.viewPager.getAdapter();
    }
}
