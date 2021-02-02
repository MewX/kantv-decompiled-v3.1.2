package com.shuyu.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.GLES20;
import android.opengl.GLException;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.opengl.Matrix;
import android.os.Handler;
import android.view.Surface;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;
import com.shuyu.gsyvideoplayer.render.view.listener.GLSurfaceListener;
import com.shuyu.gsyvideoplayer.render.view.listener.GSYVideoGLRenderErrorListener;
import com.shuyu.gsyvideoplayer.utils.Debuger;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;

@SuppressLint({"ViewConstructor"})
public abstract class GSYVideoGLViewBaseRender implements Renderer, OnFrameAvailableListener {
    protected boolean mChangeProgram = false;
    protected boolean mChangeProgramSupportError = false;
    protected int mCurrentVideoHeight = 0;
    protected int mCurrentVideoWidth = 0;
    protected int mCurrentViewHeight = 0;
    protected int mCurrentViewWidth = 0;
    protected GLSurfaceListener mGSYSurfaceListener;
    protected GSYVideoGLRenderErrorListener mGSYVideoGLRenderErrorListener;
    protected Handler mHandler = new Handler();
    protected boolean mHighShot = false;
    protected float[] mMVPMatrix = new float[16];
    protected float[] mSTMatrix = new float[16];
    protected GLSurfaceView mSurfaceView;

    public ShaderInterface getEffect() {
        return null;
    }

    public abstract void releaseAll();

    public void setEffect(ShaderInterface shaderInterface) {
    }

    public void setGSYVideoShotListener(GSYVideoShotListener gSYVideoShotListener, boolean z) {
    }

    public void takeShotPic() {
    }

    public void setSurfaceView(GLSurfaceView gLSurfaceView) {
        this.mSurfaceView = gLSurfaceView;
    }

    public void sendSurfaceForPlayer(final Surface surface) {
        this.mHandler.post(new Runnable() {
            public void run() {
                if (GSYVideoGLViewBaseRender.this.mGSYSurfaceListener != null) {
                    GSYVideoGLViewBaseRender.this.mGSYSurfaceListener.onSurfaceAvailable(surface);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public int loadShader(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Could not compile shader ");
        sb.append(i);
        sb.append(":");
        Debuger.printfError(sb.toString());
        Debuger.printfError(GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        return 0;
    }

    /* access modifiers changed from: protected */
    public int createProgram(String str, String str2) {
        int loadShader = loadShader(35633, str);
        int i = 0;
        if (loadShader == 0) {
            return 0;
        }
        int loadShader2 = loadShader(35632, str2);
        if (loadShader2 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, loadShader);
            String str3 = "glAttachShader";
            checkGlError(str3);
            GLES20.glAttachShader(glCreateProgram, loadShader2);
            checkGlError(str3);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                Debuger.printfError("Could not link program: ");
                Debuger.printfError(GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return i;
            }
        }
        i = glCreateProgram;
        return i;
    }

    /* access modifiers changed from: protected */
    public void checkGlError(final String str) {
        final int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Debuger.printfError(sb.toString());
            this.mHandler.post(new Runnable() {
                public void run() {
                    if (GSYVideoGLViewBaseRender.this.mGSYVideoGLRenderErrorListener != null) {
                        GSYVideoGLRenderErrorListener gSYVideoGLRenderErrorListener = GSYVideoGLViewBaseRender.this.mGSYVideoGLRenderErrorListener;
                        GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender = GSYVideoGLViewBaseRender.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        sb.append(": glError ");
                        sb.append(glGetError);
                        gSYVideoGLRenderErrorListener.onError(gSYVideoGLViewBaseRender, sb.toString(), glGetError, GSYVideoGLViewBaseRender.this.mChangeProgramSupportError);
                    }
                    GSYVideoGLViewBaseRender.this.mChangeProgramSupportError = false;
                }
            });
        }
    }

    /* access modifiers changed from: protected */
    public Bitmap createBitmapFromGLSurface(int i, int i2, int i3, int i4, GL10 gl10) {
        int i5 = i3;
        int i6 = i4;
        int i7 = i5 * i6;
        int[] iArr = new int[i7];
        int[] iArr2 = new int[i7];
        IntBuffer wrap = IntBuffer.wrap(iArr);
        wrap.position(0);
        try {
            gl10.glReadPixels(i, i2, i3, i4, 6408, 5121, wrap);
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = i8 * i5;
                int i10 = ((i6 - i8) - 1) * i5;
                for (int i11 = 0; i11 < i5; i11++) {
                    int i12 = iArr[i9 + i11];
                    iArr2[i10 + i11] = (i12 & -16711936) | ((i12 << 16) & 16711680) | ((i12 >> 16) & 255);
                }
            }
            if (this.mHighShot) {
                return Bitmap.createBitmap(iArr2, i5, i6, Config.ARGB_8888);
            }
            return Bitmap.createBitmap(iArr2, i5, i6, Config.RGB_565);
        } catch (GLException unused) {
            return null;
        }
    }

    public void setGSYSurfaceListener(GLSurfaceListener gLSurfaceListener) {
        this.mGSYSurfaceListener = gLSurfaceListener;
    }

    public float[] getMVPMatrix() {
        return this.mMVPMatrix;
    }

    public void setMVPMatrix(float[] fArr) {
        this.mMVPMatrix = fArr;
    }

    public int getCurrentViewWidth() {
        return this.mCurrentViewWidth;
    }

    public void setCurrentViewWidth(int i) {
        this.mCurrentViewWidth = i;
    }

    public int getCurrentViewHeight() {
        return this.mCurrentViewHeight;
    }

    public void setCurrentViewHeight(int i) {
        this.mCurrentViewHeight = i;
    }

    public int getCurrentVideoWidth() {
        return this.mCurrentVideoWidth;
    }

    public void setCurrentVideoWidth(int i) {
        this.mCurrentVideoWidth = i;
    }

    public int getCurrentVideoHeight() {
        return this.mCurrentVideoHeight;
    }

    public void setCurrentVideoHeight(int i) {
        this.mCurrentVideoHeight = i;
    }

    public void initRenderSize() {
        int i = this.mCurrentViewWidth;
        if (i != 0 && this.mCurrentViewHeight != 0) {
            Matrix.scaleM(this.mMVPMatrix, 0, ((float) i) / ((float) this.mSurfaceView.getWidth()), ((float) this.mCurrentViewHeight) / ((float) this.mSurfaceView.getHeight()), 1.0f);
        }
    }

    public void setGSYVideoGLRenderErrorListener(GSYVideoGLRenderErrorListener gSYVideoGLRenderErrorListener) {
        this.mGSYVideoGLRenderErrorListener = gSYVideoGLRenderErrorListener;
    }
}
