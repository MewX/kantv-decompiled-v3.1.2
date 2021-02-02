package com.shuyu.gsyvideoplayer.render.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotSaveListener;
import com.shuyu.gsyvideoplayer.render.GSYRenderView;
import com.shuyu.gsyvideoplayer.render.effect.NoEffect;
import com.shuyu.gsyvideoplayer.render.glrender.GSYVideoGLViewBaseRender;
import com.shuyu.gsyvideoplayer.render.glrender.GSYVideoGLViewSimpleRender;
import com.shuyu.gsyvideoplayer.render.view.listener.GLSurfaceListener;
import com.shuyu.gsyvideoplayer.render.view.listener.GSYVideoGLRenderErrorListener;
import com.shuyu.gsyvideoplayer.render.view.listener.IGSYSurfaceListener;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import com.shuyu.gsyvideoplayer.utils.FileUtils;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper;
import com.shuyu.gsyvideoplayer.utils.MeasureHelper.MeasureFormVideoParamsListener;
import java.io.File;

@SuppressLint({"ViewConstructor"})
public class GSYVideoGLView extends GLSurfaceView implements GLSurfaceListener, IGSYRenderView, MeasureFormVideoParamsListener {
    public static final int MODE_LAYOUT_SIZE = 0;
    public static final int MODE_RENDER_SIZE = 1;
    private static final String TAG = "com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView";
    private Context mContext;
    private ShaderInterface mEffect = new NoEffect();
    private IGSYSurfaceListener mIGSYSurfaceListener;
    private float[] mMVPMatrix;
    private int mMode = 0;
    private GLSurfaceListener mOnGSYSurfaceListener;
    private GSYVideoGLViewBaseRender mRenderer;
    private MeasureFormVideoParamsListener mVideoParamsListener;
    private MeasureHelper measureHelper;

    public interface ShaderInterface {
        String getShader(GLSurfaceView gLSurfaceView);
    }

    public View getRenderView() {
        return this;
    }

    public GSYVideoGLView(Context context) {
        super(context);
        init(context);
    }

    public GSYVideoGLView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        setEGLContextClientVersion(2);
        this.mRenderer = new GSYVideoGLViewSimpleRender();
        this.measureHelper = new MeasureHelper(this, this);
        this.mRenderer.setSurfaceView(this);
    }

    public void onResume() {
        super.onResume();
        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = this.mRenderer;
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLViewBaseRender.initRenderSize();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        if (this.mMode == 1) {
            super.onMeasure(i, i2);
            this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
            initRenderMeasure();
            return;
        }
        this.measureHelper.prepareMeasure(i, i2, (int) getRotation());
        setMeasuredDimension(this.measureHelper.getMeasuredWidth(), this.measureHelper.getMeasuredHeight());
    }

    public IGSYSurfaceListener getIGSYSurfaceListener() {
        return this.mIGSYSurfaceListener;
    }

    public void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener) {
        setOnGSYSurfaceListener(this);
        this.mIGSYSurfaceListener = iGSYSurfaceListener;
    }

    public void onSurfaceAvailable(Surface surface) {
        IGSYSurfaceListener iGSYSurfaceListener = this.mIGSYSurfaceListener;
        if (iGSYSurfaceListener != null) {
            iGSYSurfaceListener.onSurfaceAvailable(surface);
        }
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
        if (gSYVideoShotListener != null) {
            setGSYVideoShotListener(gSYVideoShotListener, z);
            takeShotPic();
        }
    }

    public void saveFrame(final File file, boolean z, final GSYVideoShotSaveListener gSYVideoShotSaveListener) {
        setGSYVideoShotListener(new GSYVideoShotListener() {
            public void getBitmap(Bitmap bitmap) {
                if (bitmap == null) {
                    gSYVideoShotSaveListener.result(false, file);
                    return;
                }
                FileUtils.saveBitmap(bitmap, file);
                gSYVideoShotSaveListener.result(true, file);
            }
        }, z);
        takeShotPic();
    }

    public void onRenderResume() {
        requestLayout();
        onResume();
    }

    public void onRenderPause() {
        requestLayout();
        onPause();
    }

    public void releaseRenderAll() {
        requestLayout();
        releaseAll();
    }

    public void setRenderMode(int i) {
        setMode(i);
    }

    public void setRenderTransform(Matrix matrix) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" not support setRenderTransform now");
        Debuger.printfLog(sb.toString());
    }

    public void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        setCustomRenderer(gSYVideoGLViewBaseRender);
    }

    public void setGLMVPMatrix(float[] fArr) {
        setMVPMatrix(fArr);
    }

    public void setGLEffectFilter(ShaderInterface shaderInterface) {
        setEffect(shaderInterface);
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

    /* access modifiers changed from: protected */
    public void initRenderMeasure() {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mVideoParamsListener;
        if (measureFormVideoParamsListener != null && this.mMode == 1) {
            try {
                int currentVideoWidth = measureFormVideoParamsListener.getCurrentVideoWidth();
                int currentVideoHeight = this.mVideoParamsListener.getCurrentVideoHeight();
                if (this.mRenderer != null) {
                    this.mRenderer.setCurrentViewWidth(this.measureHelper.getMeasuredWidth());
                    this.mRenderer.setCurrentViewHeight(this.measureHelper.getMeasuredHeight());
                    this.mRenderer.setCurrentVideoWidth(currentVideoWidth);
                    this.mRenderer.setCurrentVideoHeight(currentVideoHeight);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void initRender() {
        setRenderer(this.mRenderer);
    }

    public void setGSYVideoGLRenderErrorListener(GSYVideoGLRenderErrorListener gSYVideoGLRenderErrorListener) {
        this.mRenderer.setGSYVideoGLRenderErrorListener(gSYVideoGLRenderErrorListener);
    }

    public void setCustomRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        this.mRenderer = gSYVideoGLViewBaseRender;
        this.mRenderer.setSurfaceView(this);
        initRenderMeasure();
    }

    public void setOnGSYSurfaceListener(GLSurfaceListener gLSurfaceListener) {
        this.mOnGSYSurfaceListener = gLSurfaceListener;
        this.mRenderer.setGSYSurfaceListener(this.mOnGSYSurfaceListener);
    }

    public void setEffect(ShaderInterface shaderInterface) {
        if (shaderInterface != null) {
            this.mEffect = shaderInterface;
            this.mRenderer.setEffect(this.mEffect);
        }
    }

    public void setMVPMatrix(float[] fArr) {
        if (fArr != null) {
            this.mMVPMatrix = fArr;
            this.mRenderer.setMVPMatrix(fArr);
        }
    }

    public void takeShotPic() {
        this.mRenderer.takeShotPic();
    }

    public void setGSYVideoShotListener(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        this.mRenderer.setGSYVideoShotListener(gSYVideoShotListener, z);
    }

    public int getMode() {
        return this.mMode;
    }

    public void setMode(int i) {
        this.mMode = i;
    }

    public void releaseAll() {
        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = this.mRenderer;
        if (gSYVideoGLViewBaseRender != null) {
            gSYVideoGLViewBaseRender.releaseAll();
        }
    }

    public GSYVideoGLViewBaseRender getRenderer() {
        return this.mRenderer;
    }

    public ShaderInterface getEffect() {
        return this.mEffect;
    }

    public float[] getMVPMatrix() {
        return this.mMVPMatrix;
    }

    public static GSYVideoGLView addGLView(Context context, ViewGroup viewGroup, int i, IGSYSurfaceListener iGSYSurfaceListener, MeasureFormVideoParamsListener measureFormVideoParamsListener, ShaderInterface shaderInterface, float[] fArr, GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender, int i2) {
        float[] fArr2 = fArr;
        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender2 = gSYVideoGLViewBaseRender;
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        Context context2 = context;
        GSYVideoGLView gSYVideoGLView = new GSYVideoGLView(context);
        if (gSYVideoGLViewBaseRender2 != null) {
            gSYVideoGLView.setCustomRenderer(gSYVideoGLViewBaseRender2);
        }
        gSYVideoGLView.setEffect(shaderInterface);
        MeasureFormVideoParamsListener measureFormVideoParamsListener2 = measureFormVideoParamsListener;
        gSYVideoGLView.setVideoParamsListener(measureFormVideoParamsListener);
        final int i3 = i2;
        gSYVideoGLView.setRenderMode(i3);
        final IGSYSurfaceListener iGSYSurfaceListener2 = iGSYSurfaceListener;
        gSYVideoGLView.setIGSYSurfaceListener(iGSYSurfaceListener);
        final int i4 = i;
        gSYVideoGLView.setRotation((float) i4);
        gSYVideoGLView.initRender();
        final Context context3 = context;
        final ViewGroup viewGroup2 = viewGroup;
        final MeasureFormVideoParamsListener measureFormVideoParamsListener3 = measureFormVideoParamsListener;
        AnonymousClass2 r3 = new GSYVideoGLRenderErrorListener() {
            public void onError(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender, String str, int i, boolean z) {
                if (z) {
                    GSYVideoGLView.addGLView(context3, viewGroup2, i4, iGSYSurfaceListener2, measureFormVideoParamsListener3, gSYVideoGLViewBaseRender.getEffect(), gSYVideoGLViewBaseRender.getMVPMatrix(), gSYVideoGLViewBaseRender, i3);
                }
            }
        };
        gSYVideoGLView.setGSYVideoGLRenderErrorListener(r3);
        if (fArr2 != null && fArr2.length == 16) {
            gSYVideoGLView.setMVPMatrix(fArr2);
        }
        ViewGroup viewGroup3 = viewGroup;
        GSYRenderView.addToParent(viewGroup, gSYVideoGLView);
        return gSYVideoGLView;
    }
}
