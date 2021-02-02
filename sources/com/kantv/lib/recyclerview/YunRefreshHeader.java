package com.kantv.lib.recyclerview;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.kantv.lib.R;

public class YunRefreshHeader extends LinearLayout implements BaseRefreshHeader {
    private AnimationDrawable animationDrawable;
    private FrameLayout mContainer;
    private Context mContext;
    private int mMeasuredHeight;
    private int mState;
    private TextView msg;
    private int todayUpdateNum;
    private String updateType;

    public YunRefreshHeader(Context context) {
        this(context, null);
    }

    public YunRefreshHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public YunRefreshHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mState = 0;
        this.todayUpdateNum = 0;
        this.updateType = "";
        this.mContext = context;
        initView();
    }

    private void initView() {
        LayoutInflater.from(this.mContext).inflate(R.layout.kaws_refresh_header, this);
        this.msg = (TextView) findViewById(R.id.msg);
        measure(-2, -2);
        this.mMeasuredHeight = getMeasuredHeight();
        setGravity(1);
        this.mContainer = (FrameLayout) findViewById(R.id.container);
        this.mContainer.setLayoutParams(new LayoutParams(-1, 0));
        setLayoutParams(new LayoutParams(-1, -2));
    }

    public void onMove(float f) {
        if (getVisiableHeight() > 0 || f > 0.0f) {
            setVisiableHeight(((int) f) + getVisiableHeight());
            if (this.mState > 1) {
                return;
            }
            if (getVisiableHeight() > this.mMeasuredHeight) {
                setState(1);
                return;
            }
            this.msg.setVisibility(8);
            setState(0);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0059, code lost:
        if (r0.equals("anime") != false) goto L_0x0086;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setState(int r8) {
        /*
            r7 = this;
            int r0 = r7.mState
            if (r8 != r0) goto L_0x0005
            return
        L_0x0005:
            if (r8 == 0) goto L_0x018a
            r1 = 3
            r2 = 2
            r3 = 0
            r4 = 1
            if (r8 == r4) goto L_0x001e
            if (r8 == r2) goto L_0x018a
            if (r8 == r1) goto L_0x0013
            goto L_0x018a
        L_0x0013:
            int r0 = r7.todayUpdateNum
            if (r0 == 0) goto L_0x018a
            android.widget.TextView r0 = r7.msg
            r0.setVisibility(r3)
            goto L_0x018a
        L_0x001e:
            if (r0 == r4) goto L_0x018a
            java.lang.String r0 = r7.updateType
            r5 = -1
            int r6 = r0.hashCode()
            switch(r6) {
                case -949670619: goto L_0x007b;
                case 3208415: goto L_0x0070;
                case 3377875: goto L_0x0066;
                case 3529469: goto L_0x005c;
                case 92962932: goto L_0x0053;
                case 94631196: goto L_0x0049;
                case 104087344: goto L_0x003f;
                case 506679149: goto L_0x0035;
                case 1418606057: goto L_0x002b;
                default: goto L_0x002a;
            }
        L_0x002a:
            goto L_0x0085
        L_0x002b:
            java.lang.String r1 = "liveshow"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 7
            goto L_0x0086
        L_0x0035:
            java.lang.String r1 = "documentary"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 6
            goto L_0x0086
        L_0x003f:
            java.lang.String r1 = "movie"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 2
            goto L_0x0086
        L_0x0049:
            java.lang.String r1 = "child"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 5
            goto L_0x0086
        L_0x0053:
            java.lang.String r2 = "anime"
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L_0x0085
            goto L_0x0086
        L_0x005c:
            java.lang.String r1 = "show"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 4
            goto L_0x0086
        L_0x0066:
            java.lang.String r1 = "news"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 0
            goto L_0x0086
        L_0x0070:
            java.lang.String r1 = "home"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 8
            goto L_0x0086
        L_0x007b:
            java.lang.String r1 = "tvdrama"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0085
            r1 = 1
            goto L_0x0086
        L_0x0085:
            r1 = -1
        L_0x0086:
            switch(r1) {
                case 0: goto L_0x016f;
                case 1: goto L_0x0153;
                case 2: goto L_0x0137;
                case 3: goto L_0x011b;
                case 4: goto L_0x00ff;
                case 5: goto L_0x00e2;
                case 6: goto L_0x00c5;
                case 7: goto L_0x00a8;
                case 8: goto L_0x008b;
                default: goto L_0x0089;
            }
        L_0x0089:
            goto L_0x018a
        L_0x008b:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_tv
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x00a8:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_liveshow
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x00c5:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_documentary
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x00e2:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_child
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x00ff:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_show
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x011b:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_anime
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x0137:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_movie
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x0153:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_tvdrama
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
            goto L_0x018a
        L_0x016f:
            android.widget.TextView r0 = r7.msg
            android.content.Context r1 = r7.mContext
            int r2 = com.kantv.lib.R.string.today_update_news
            java.lang.String r1 = r1.getString(r2)
            java.lang.Object[] r2 = new java.lang.Object[r4]
            int r4 = r7.todayUpdateNum
            java.lang.String r4 = java.lang.Integer.toString(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.setText(r1)
        L_0x018a:
            r7.mState = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.lib.recyclerview.YunRefreshHeader.setState(int):void");
    }

    public boolean releaseAction() {
        boolean z;
        int visiableHeight = getVisiableHeight();
        int i = 0;
        if (getVisiableHeight() <= this.mMeasuredHeight || this.mState >= 2) {
            z = false;
        } else {
            setState(2);
            z = true;
        }
        if (this.mState == 2) {
            int i2 = this.mMeasuredHeight;
        }
        if (this.mState == 2) {
            i = this.mMeasuredHeight;
        }
        smoothScrollTo(i);
        return z;
    }

    public void refreshComplate() {
        setState(3);
        new Handler().postDelayed(new Runnable() {
            public void run() {
                YunRefreshHeader.this.reset();
            }
        }, 1500);
    }

    public void reset() {
        smoothScrollTo(0);
        if (this.todayUpdateNum != 0) {
            this.msg.setVisibility(0);
        }
        setState(0);
    }

    private void smoothScrollTo(int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{getVisiableHeight(), i});
        ofInt.setDuration(300).start();
        ofInt.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                YunRefreshHeader.this.setVisiableHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.start();
    }

    public void setVisiableHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        LayoutParams layoutParams = new LayoutParams(-1, 0);
        layoutParams.height = i;
        this.mContainer.setLayoutParams(layoutParams);
    }

    public int getVisiableHeight() {
        return this.mContainer.getHeight();
    }

    public int getState() {
        return this.mState;
    }

    public void setTodayUpdate(int i, String str) {
        this.todayUpdateNum = i;
        this.updateType = str;
    }
}
