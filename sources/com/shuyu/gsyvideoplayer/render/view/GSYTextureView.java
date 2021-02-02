package com.shuyu.gsyvideoplayer.render.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.ViewGroup;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotSaveListener;
import com.shuyu.gsyvideoplayer.render.GSYRenderView;
import com.shuyu.gsyvideoplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;
import com.shuyu.gsyvideoplayer.render.view.listener.IGSYSurfaceListener;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.FileUtils;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper.MeasureFormVideoParamsListener;
import java.io.File;

public class GSYTextureView extends TextureView implements SurfaceTextureListener, IGSYRenderView, MeasureFormVideoParamsListener {
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private SurfaceTexture mSaveTexture;
    private Surface mSurface;
    private MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public View getRenderView() {
        return this;
    }

    public GSYTextureView(Context context) {
        super(context);
        init();
    }

    public GSYTextureView(Context context, AttributeSet attributeSet) {
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

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = this.mSaveTexture;
        if (surfaceTexture2 == null) {
            this.mSaveTexture = surfaceTexture;
            this.mSurface = new Surface(surfaceTexture);
            IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
            if (iGSYSurfaceListener != null) {
                iGSYSurfaceListener.onSurfaceAvailable(this.mSurface);
                return;
            }
            return;
        }
        setSurfaceTexture(surfaceTexture2);
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceSizeChanged(this.mSurface, i, i2);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceDestroyed(this.mSurface);
        }
        return this.mSaveTexture == null;
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceUpdated(this.mSurface);
        }
    }

    public IGSYSurfaceListener getIGSYSurfaceListener() {
        return this.mIGSYSurfaceListener;
    }

    public void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener) {
        setSurfaceTextureListener(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    public int getSizeH() {
        return getHeight();
    }

    public int getSizeW() {
        return getWidth();
    }

    public Bitmap initCover() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Config.RGB_565));
    }

    public Bitmap initCoverHigh() {
        return getBitmap(Bitmap.createBitmap(getSizeW(), getSizeH(), Config.ARGB_8888));
    }

    public void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        if (z) {
            gSYVideoShotListener.getBitmap(initCoverHigh());
        } else {
            gSYVideoShotListener.getBitmap(initCover());
        }
    }

    public void saveFrame(final File file, boolean z, final GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        AnonymousClass1 r0 = new GSYVideoShotListener() {
            public void getBitmap(Bitmap bitmap) {
                if (bitmap == null) {
                    gSYVideoShotSaveListener.result(false, file);
                    return;
                }
                FileUtils.saveBitmap(bitmap, file);
                gSYVideoShotSaveListener.result(true, file);
            }
        };
        if (z) {
            r0.getBitmap(initCoverHigh());
        } else {
            r0.getBitmap(initCover());
        }
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
        setTransform(matrix);
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

    public static GSYTextureView addTextureView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        GSYTextureView gSYTextureView = new GSYTextureView(context);
        gSYTextureView.setIGSYSurfaceListener(iGSYSurfaceListener);
        gSYTextureView.setVideoParamsListener(measureFormVideoParamsListener);
        gSYTextureView.setRotation((float) i);
        GSYRenderView.addToParent(viewGroup, gSYTextureView);
        return gSYTextureView;
    }
}
