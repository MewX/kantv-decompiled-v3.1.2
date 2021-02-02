package com.kantv.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.kantv.common.log.AILog;
import java.util.Timer;
import java.util.TimerTask;

public class LoadingView extends View {
    private static final String TAG = "LoadingView";
    private int[] allSize = new int[5];
    /* access modifiers changed from: private */
    public boolean[] isIncrease = {false, false, false, false, true, true, true, true, false, false, false, false};
    /* access modifiers changed from: private */
    public int[] length = new int[12];
    /* access modifiers changed from: private */
    public Handler mHandler = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            LoadingView.this.invalidate();
        }
    };
    private Paint mPaint = new Paint();
    private int maxLen = 0;
    private int viewHeight;
    private int viewWidth;

    public LoadingView(Context context) {
        super(context);
    }

    public LoadingView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoadingView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initPaint();
    }

    private void initPaint() {
        this.mPaint.setColor(Color.parseColor("#1F93EA"));
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeWidth(30.0f);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        this.viewWidth = 350;
        this.viewHeight = 200;
        this.maxLen = this.viewHeight - 50;
        initLength();
        super.onMeasure(i, i2);
    }

    private void initLength() {
        int i = 0;
        int i2 = 0;
        while (i2 < 5) {
            int i3 = i2 + 1;
            this.allSize[i2] = (this.maxLen * i3) / 5;
            i2 = i3;
        }
        int i4 = 0;
        while (i < 12) {
            i4 = (i <= 4 || i >= 9) ? i4 + 1 : i4 - 1;
            this.length[i] = i4 - 1;
            i++;
        }
        AILog.i(TAG, this.length.toString());
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i = 0;
        while (i < 12) {
            int i2 = this.viewWidth;
            int i3 = i + 1;
            float f = (float) ((i2 / 12) * i3);
            int i4 = this.viewHeight;
            int[] iArr = this.allSize;
            int[] iArr2 = this.length;
            float f2 = (float) ((i4 - iArr[iArr2[i]]) / 2);
            canvas.drawLine(f, f2, (float) ((i2 / 12) * i3), (float) (((i4 - iArr[iArr2[i]]) / 2) + iArr[iArr2[i]]), this.mPaint);
            i = i3;
        }
        super.onDraw(canvas);
    }

    public void startLoading() {
        new Timer().schedule(new TimerTask() {
            public void run() {
                int[] iArr = new int[12];
                for (int i = 0; i < 12; i++) {
                    if (LoadingView.this.length[i] == 4) {
                        LoadingView.this.isIncrease[i] = false;
                    } else if (LoadingView.this.length[i] == 0) {
                        LoadingView.this.isIncrease[i] = true;
                    }
                    if (LoadingView.this.isIncrease[i]) {
                        iArr[i] = LoadingView.this.length[i] + 1;
                    } else {
                        iArr[i] = LoadingView.this.length[i] - 1;
                    }
                }
                LoadingView.this.length = iArr;
                AILog.i(LoadingView.TAG, LoadingView.this.length.toString());
                LoadingView.this.mHandler.obtainMessage(1).sendToTarget();
            }
        }, 100, 200);
    }
}
