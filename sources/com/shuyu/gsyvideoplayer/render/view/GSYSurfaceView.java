package com.shuyu.gsyvideoplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback2;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotSaveListener;
import com.shuyu.gsyvideoplayer.render.GSYRenderView;
import com.shuyu.gsyvideoplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;
import com.shuyu.gsyvideoplayer.render.view.listener.IGSYSurfaceListener;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper.MeasureFormVideoParamsListener;
import java.io.File;

public class GSYSurfaceView extends SurfaceView implements Callback2, IGSYRenderView, MeasureFormVideoParamsListener {
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public View getRenderView() {
        return this;
    }

    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }

    public GSYSurfaceView(Context context) {
        super(context);
        init();
    }

    public GSYSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.measureHelper = new MeasureHelper(this, this);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
        setMeasuredDimension(this.measureHelper.getMeasuredWidth(), this.measureHelper.getMeasuredHeight());
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceAvailable(surfaceHolder.getSurface());
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceSizeChanged(surfaceHolder.getSurface(), i2, i3);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceDestroyed(surfaceHolder.getSurface());
        }
    }

    public IGSYSurfaceListener getIGSYSurfaceListener() {
        return this.mIGSYSurfaceListener;
    }

    public void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener) {
        getHolder().addCallback(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    public int getSizeH() {
        return getHeight();
    }

    public int getSizeW() {
        return getWidth();
    }

    public Bitmap initCover() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support initCover now");
        Debuger.printfLog(sb.toString());
        return null;
    }

    public Bitmap initCoverHigh() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support initCoverHigh now");
        Debuger.printfLog(sb.toString());
        return null;
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support taskShotPic now");
        Debuger.printfLog(sb.toString());
    }

    public void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support saveFrame now");
        Debuger.printfLog(sb.toString());
    }

    public void onRenderResume() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support onRenderResume now");
        Debuger.printfLog(sb.toString());
    }

    public void onRenderPause() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support onRenderPause now");
        Debuger.printfLog(sb.toString());
    }

    public void releaseRenderAll() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support releaseRenderAll now");
        Debuger.printfLog(sb.toString());
    }

    public void setRenderMode(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setRenderMode now");
        Debuger.printfLog(sb.toString());
    }

    public void setRenderTransform(Matrix matrix) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setRenderTransform now");
        Debuger.printfLog(sb.toString());
    }

    public void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setGLRenderer now");
        Debuger.printfLog(sb.toString());
    }

    public void setGLMVPMatrix(float[] fArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setGLMVPMatrix now");
        Debuger.printfLog(sb.toString());
    }

    public void setGLEffectFilter(ShaderInterface shaderInterface) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setGLEffectFilter now");
        Debuger.printfLog(sb.toString());
    }

    public void setVideoParamsListener(MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mVideoParamsListener = measureFormVideoParamsListener;
    }

    public int getCurrentVideoWidth() {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getCurrentVideoWidth();
        }
        return 0;
    }

    public int getCurrentVideoHeight() {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getCurrentVideoHeight();
        }
        return 0;
    }

    public int getVideoSarNum() {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getVideoSarNum();
        }
        return 0;
    }

    public int getVideoSarDen() {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null) {
            return measureFormVideoParamsListener.getVideoSarDen();
        }
        return 0;
    }

    public static GSYSurfaceView addSurfaceView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYSurfaceView gSYSurfaceView = new GSYSurfaceView(context);
        gSYSurfaceView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYSurfaceView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYSurfaceView.setRotation((float) i);
        GSYRenderView.addToParent(viewGroup, gSYSurfaceView);
        return gSYSurfaceView;
    }
}
