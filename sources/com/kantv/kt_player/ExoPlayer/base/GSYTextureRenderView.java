package com.kantv.kt_player.ExoPlayer.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kantv.kt_player.ExoPlayer.render.GSYRenderView;
import com.kantv.kt_player.ExoPlayer.render.effect.NoEffect;
import com.kantv.kt_player.ExoPlayer.render.glrender.GSYVideoGLViewBaseRender;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;
import com.kantv.kt_player.ExoPlayer.render.view.listener.IGSYSurfaceListener;
import com.kantv.kt_player.ExoPlayer.utils.GSYVideoType;
import com.kantv.kt_player.ExoPlayer.utils.MeasureHelper.MeasureFormVideoParamsListener;

public abstract class GSYTextureRenderView extends FrameLayout implements IGSYSurfaceListener, MeasureFormVideoParamsListener {
    protected ShaderInterface mEffectFilter = new NoEffect();
    protected Bitmap mFullPauseBitmap;
    protected float[] mMatrixGL = null;
    protected int mMode = 0;
    protected GSYVideoGLViewBaseRender mRenderer;
    protected int mRotate;
    protected Surface mSurface;
    protected GSYRenderView mTextureView;
    protected ViewGroup mTextureViewContainer;

    public void onSurfaceSizeChanged(Surface surface, int i, int i2) {
    }

    /* access modifiers changed from: protected */
    public abstract void releasePauseCover();

    /* access modifiers changed from: protected */
    public abstract void releaseSurface(Surface surface);

    /* access modifiers changed from: protected */
    public abstract void setDisplay(Surface surface);

    /* access modifiers changed from: protected */
    public abstract void setSmallVideoTextureView();

    /* access modifiers changed from: protected */
    public abstract void showPauseCover();

    public GSYTextureRenderView(@NonNull Context context) {
        super(context);
    }

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYTextureRenderView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
    }

    public void onSurfaceAvailable(Surface surface) {
        GSYRenderView gSYRenderView = this.mTextureView;
        pauseLogic(surface, gSYRenderView != null && (gSYRenderView.getShowView() instanceof TextureView));
    }

    public boolean onSurfaceDestroyed(Surface surface) {
        setDisplay(null);
        releaseSurface(surface);
        return true;
    }

    public void onSurfaceUpdated(Surface surface) {
        releasePauseCover();
    }

    /* access modifiers changed from: protected */
    public void pauseLogic(Surface surface, boolean z) {
        this.mSurface = surface;
        if (z) {
            showPauseCover();
        }
        setDisplay(this.mSurface);
    }

    /* access modifiers changed from: protected */
    public void addTextureView() {
        this.mTextureView = new GSYRenderView();
        this.mTextureView.addView(getContext(), this.mTextureViewContainer, this.mRotate, this, this, this.mEffectFilter, this.mMatrixGL, this.mRenderer, this.mMode);
    }

    /* access modifiers changed from: protected */
    public int getTextureParams() {
        return GSYVideoType.getShowType() != 0 ? -2 : -1;
    }

    /* access modifiers changed from: protected */
    public void changeTextureViewShowType() {
        if (this.mTextureView != null) {
            int textureParams = getTextureParams();
            LayoutParams layoutParams = this.mTextureView.getLayoutParams();
            layoutParams.width = textureParams;
            layoutParams.height = textureParams;
            this.mTextureView.setLayoutParams(layoutParams);
        }
    }

    /* access modifiers changed from: protected */
    public void initCover() {
        GSYRenderView gSYRenderView = this.mTextureView;
        if (gSYRenderView != null) {
            this.mFullPauseBitmap = gSYRenderView.initCover();
        }
    }

    /* access modifiers changed from: protected */
    public void setSmallVideoTextureView(OnTouchListener onTouchListener) {
        this.mTextureViewContainer.setOnTouchListener(onTouchListener);
        this.mTextureViewContainer.setOnClickListener(null);
        setSmallVideoTextureView();
    }

    public ShaderInterface getEffectFilter() {
        return this.mEffectFilter;
    }

    public GSYRenderView getRenderProxy() {
        return this.mTextureView;
    }

    public void setEffectFilter(ShaderInterface shaderInterface) {
        this.mEffectFilter = shaderInterface;
        GSYRenderView gSYRenderView = this.mTextureView;
        if (gSYRenderView != null) {
            gSYRenderView.setEffectFilter(shaderInterface);
        }
    }

    public void setMatrixGL(float[] fArr) {
        this.mMatrixGL = fArr;
        GSYRenderView gSYRenderView = this.mTextureView;
        if (gSYRenderView != null) {
            gSYRenderView.setMatrixGL(this.mMatrixGL);
        }
    }

    public void setCustomGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender) {
        this.mRenderer = gSYVideoGLViewBaseRender;
        GSYRenderView gSYRenderView = this.mTextureView;
        if (gSYRenderView != null) {
            gSYRenderView.setGLRenderer(gSYVideoGLViewBaseRender);
        }
    }

    public void setGLRenderMode(int i) {
        this.mMode = i;
        GSYRenderView gSYRenderView = this.mTextureView;
        if (gSYRenderView != null) {
            gSYRenderView.setGLRenderMode(i);
        }
    }
}
