package com.shuyu.gsyvideoplayer.utils;

import android.view.View;
import java.lang.ref.WeakReference;

public final class MeasureHelper {
    private int mCurrentAspectRatio = 0;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    private final MeasureFormVideoParamsListener mParamsListener;
    private int mVideoHeight;
    private int mVideoRotationDegree;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private WeakReference<View> mWeakView;

    public interface MeasureFormVideoParamsListener {
        int getCurrentVideoHeight();

        int getCurrentVideoWidth();

        int getVideoSarDen();

        int getVideoSarNum();
    }

    public MeasureHelper(View view, MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mParamsListener = measureFormVideoParamsListener;
        this.mWeakView = new WeakReference<>(view);
    }

    public View getView() {
        WeakReference<View> weakReference = this.mWeakView;
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    public void setVideoSize(int i, int i2) {
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
    }

    public void setVideoSampleAspectRatio(int i, int i2) {
        this.mVideoSarNum = i;
        this.mVideoSarDen = i2;
    }

    public void setVideoRotation(int i) {
        this.mVideoRotationDegree = i;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00b4, code lost:
        if (r2 != false) goto L_0x00bd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00b7, code lost:
        if (r2 != false) goto L_0x00b9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00bd, code lost:
        r11 = (int) (r3 * r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00fd, code lost:
        if (r1 > r11) goto L_0x011d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void doMeasure(int r11, int r12) {
        /*
            r10 = this;
            int r0 = com.shuyu.gsyvideoplayer.utils.GSYVideoType.getShowType()
            r10.mCurrentAspectRatio = r0
            int r0 = r10.mVideoRotationDegree
            r1 = 270(0x10e, float:3.78E-43)
            r2 = 90
            if (r0 == r2) goto L_0x0010
            if (r0 != r1) goto L_0x0013
        L_0x0010:
            r9 = r12
            r12 = r11
            r11 = r9
        L_0x0013:
            int r0 = r10.mVideoWidth
            int r0 = android.view.View.getDefaultSize(r0, r11)
            int r3 = r10.mVideoHeight
            int r3 = android.view.View.getDefaultSize(r3, r12)
            int r4 = r10.mCurrentAspectRatio
            r5 = -4
            if (r4 != r5) goto L_0x0026
            goto L_0x011d
        L_0x0026:
            int r4 = r10.mVideoWidth
            if (r4 <= 0) goto L_0x011b
            int r4 = r10.mVideoHeight
            if (r4 <= 0) goto L_0x011b
            int r0 = android.view.View.MeasureSpec.getMode(r11)
            int r11 = android.view.View.MeasureSpec.getSize(r11)
            int r3 = android.view.View.MeasureSpec.getMode(r12)
            int r12 = android.view.View.MeasureSpec.getSize(r12)
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r4) goto L_0x00c2
            if (r3 != r4) goto L_0x00c2
            float r0 = (float) r11
            float r3 = (float) r12
            float r4 = r0 / r3
            int r5 = r10.mCurrentAspectRatio
            r6 = 2
            r7 = 1
            if (r5 == r7) goto L_0x0076
            if (r5 == r6) goto L_0x0065
            int r1 = r10.mVideoWidth
            float r1 = (float) r1
            int r2 = r10.mVideoHeight
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r10.mVideoSarNum
            if (r2 <= 0) goto L_0x0086
            int r5 = r10.mVideoSarDen
            if (r5 <= 0) goto L_0x0086
            float r2 = (float) r2
            float r1 = r1 * r2
            float r2 = (float) r5
            float r1 = r1 / r2
            goto L_0x0086
        L_0x0065:
            r5 = 1068149419(0x3faaaaab, float:1.3333334)
            int r8 = r10.mVideoRotationDegree
            if (r8 == r2) goto L_0x0073
            if (r8 != r1) goto L_0x006f
            goto L_0x0073
        L_0x006f:
            r1 = 1068149419(0x3faaaaab, float:1.3333334)
            goto L_0x0086
        L_0x0073:
            r1 = 1061158912(0x3f400000, float:0.75)
            goto L_0x0086
        L_0x0076:
            r5 = 1071877689(0x3fe38e39, float:1.7777778)
            int r8 = r10.mVideoRotationDegree
            if (r8 == r2) goto L_0x0084
            if (r8 != r1) goto L_0x0080
            goto L_0x0084
        L_0x0080:
            r1 = 1071877689(0x3fe38e39, float:1.7777778)
            goto L_0x0086
        L_0x0084:
            r1 = 1058013184(0x3f100000, float:0.5625)
        L_0x0086:
            int r2 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r2 <= 0) goto L_0x008c
            r2 = 1
            goto L_0x008d
        L_0x008c:
            r2 = 0
        L_0x008d:
            int r4 = r10.mCurrentAspectRatio
            if (r4 == 0) goto L_0x00b7
            if (r4 == r7) goto L_0x00b7
            if (r4 == r6) goto L_0x00b7
            r5 = 4
            if (r4 == r5) goto L_0x00b4
            if (r2 == 0) goto L_0x00a5
            int r12 = r10.mVideoWidth
            int r11 = java.lang.Math.min(r12, r11)
            float r12 = (float) r11
            float r12 = r12 / r1
            int r12 = (int) r12
            goto L_0x011d
        L_0x00a5:
            int r11 = r10.mVideoHeight
            int r11 = java.lang.Math.min(r11, r12)
            float r12 = (float) r11
            float r12 = r12 * r1
            int r12 = (int) r12
            r9 = r12
            r12 = r11
            r11 = r9
            goto L_0x011d
        L_0x00b4:
            if (r2 == 0) goto L_0x00b9
            goto L_0x00bd
        L_0x00b7:
            if (r2 == 0) goto L_0x00bd
        L_0x00b9:
            float r0 = r0 / r1
            int r12 = (int) r0
            goto L_0x011d
        L_0x00bd:
            float r3 = r3 * r1
            int r11 = (int) r3
            goto L_0x011d
        L_0x00c2:
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto L_0x00e2
            if (r3 != r1) goto L_0x00e2
            int r0 = r10.mVideoWidth
            int r1 = r0 * r12
            int r2 = r10.mVideoHeight
            int r3 = r11 * r2
            if (r1 >= r3) goto L_0x00d7
            int r0 = r0 * r12
            int r11 = r0 / r2
            goto L_0x011d
        L_0x00d7:
            int r1 = r0 * r12
            int r3 = r11 * r2
            if (r1 <= r3) goto L_0x011d
            int r2 = r2 * r11
            int r12 = r2 / r0
            goto L_0x011d
        L_0x00e2:
            if (r0 != r1) goto L_0x00f2
            int r0 = r10.mVideoHeight
            int r0 = r0 * r11
            int r1 = r10.mVideoWidth
            int r0 = r0 / r1
            if (r3 != r4) goto L_0x00f0
            if (r0 <= r12) goto L_0x00f0
            goto L_0x011d
        L_0x00f0:
            r12 = r0
            goto L_0x011d
        L_0x00f2:
            if (r3 != r1) goto L_0x0102
            int r1 = r10.mVideoWidth
            int r1 = r1 * r12
            int r2 = r10.mVideoHeight
            int r1 = r1 / r2
            if (r0 != r4) goto L_0x0100
            if (r1 <= r11) goto L_0x0100
            goto L_0x011d
        L_0x0100:
            r11 = r1
            goto L_0x011d
        L_0x0102:
            int r1 = r10.mVideoWidth
            int r2 = r10.mVideoHeight
            if (r3 != r4) goto L_0x010e
            if (r2 <= r12) goto L_0x010e
            int r1 = r1 * r12
            int r1 = r1 / r2
            goto L_0x010f
        L_0x010e:
            r12 = r2
        L_0x010f:
            if (r0 != r4) goto L_0x0100
            if (r1 <= r11) goto L_0x0100
            int r12 = r10.mVideoHeight
            int r12 = r12 * r11
            int r0 = r10.mVideoWidth
            int r12 = r12 / r0
            goto L_0x011d
        L_0x011b:
            r11 = r0
            r12 = r3
        L_0x011d:
            r10.mMeasuredWidth = r11
            r10.mMeasuredHeight = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shuyu.gsyvideoplayer.utils.MeasureHelper.doMeasure(int, int):void");
    }

    public void prepareMeasure(int i, int i2, int i3) {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mParamsListener;
        if (measureFormVideoParamsListener != null) {
            try {
                int currentVideoWidth = measureFormVideoParamsListener.getCurrentVideoWidth();
                int currentVideoHeight = this.mParamsListener.getCurrentVideoHeight();
                StringBuilder sb = new StringBuilder();
                sb.append("videoWidth: ");
                sb.append(currentVideoWidth);
                sb.append(" videoHeight: ");
                sb.append(currentVideoHeight);
                Debuger.printfLog(sb.toString());
                int videoSarNum = this.mParamsListener.getVideoSarNum();
                int videoSarDen = this.mParamsListener.getVideoSarDen();
                if (currentVideoWidth > 0 && currentVideoHeight > 0) {
                    setVideoSampleAspectRatio(videoSarNum, videoSarDen);
                    setVideoSize(currentVideoWidth, currentVideoHeight);
                }
                setVideoRotation(i3);
                doMeasure(i, i2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public int getMeasuredWidth() {
        return this.mMeasuredWidth;
    }

    public int getMeasuredHeight() {
        return this.mMeasuredHeight;
    }

    public void setAspectRatio(int i) {
        this.mCurrentAspectRatio = i;
    }
}
