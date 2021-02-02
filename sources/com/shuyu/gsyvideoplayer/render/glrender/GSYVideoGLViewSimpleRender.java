package com.shuyu.gsyvideoplayer.render.glrender;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotListener;
import com.shuyu.gsyvideoplayer.render.effect.NoEffect;
import com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView.ShaderInterface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

@SuppressLint({"ViewConstructor"})
public class GSYVideoGLViewSimpleRender extends GSYVideoGLViewBaseRender {
    private static final int FLOAT_SIZE_BYTES = 4;
    protected static final int GL_TEXTURE_EXTERNAL_OES = 36197;
    private static final int TRIANGLE_VERTICES_DATA_POS_OFFSET = 0;
    private static final int TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 20;
    private static final int TRIANGLE_VERTICES_DATA_UV_OFFSET = 3;
    private ShaderInterface mEffect = new NoEffect();
    private GSYVideoShotListener mGSYVideoShotListener;
    private int mProgram;
    private SurfaceTexture mSurface;
    private boolean mTakeShotPic = false;
    private int[] mTextureID = new int[2];
    private FloatBuffer mTriangleVertices = ByteBuffer.allocateDirect(this.mTriangleVerticesData.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    private final float[] mTriangleVerticesData = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private boolean mUpdateSurface = false;
    private final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private int maPositionHandle;
    private int maTextureHandle;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;

    /* access modifiers changed from: protected */
    public String getVertexShader() {
        return "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    }

    public void releaseAll() {
    }

    public GSYVideoGLViewSimpleRender() {
        this.mTriangleVertices.put(this.mTriangleVerticesData).position(0);
        Matrix.setIdentityM(this.mSTMatrix, 0);
        Matrix.setIdentityM(this.mMVPMatrix, 0);
    }

    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.mUpdateSurface) {
                this.mSurface.updateTexImage();
                this.mSurface.getTransformMatrix(this.mSTMatrix);
                this.mUpdateSurface = false;
            }
        }
        initDrawFrame();
        bindDrawFrameTexture();
        initPointerAndDraw();
        takeBitmap(gl10);
        GLES20.glFinish();
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.mProgram = createProgram(getVertexShader(), getFragmentShader());
        int i = this.mProgram;
        if (i != 0) {
            this.maPositionHandle = GLES20.glGetAttribLocation(i, "aPosition");
            checkGlError("glGetAttribLocation aPosition");
            if (this.maPositionHandle != -1) {
                this.maTextureHandle = GLES20.glGetAttribLocation(this.mProgram, "aTextureCoord");
                checkGlError("glGetAttribLocation aTextureCoord");
                if (this.maTextureHandle != -1) {
                    this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
                    checkGlError("glGetUniformLocation uMVPMatrix");
                    if (this.muMVPMatrixHandle != -1) {
                        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
                        checkGlError("glGetUniformLocation uSTMatrix");
                        if (this.muSTMatrixHandle != -1) {
                            GLES20.glGenTextures(2, this.mTextureID, 0);
                            GLES20.glBindTexture(GL_TEXTURE_EXTERNAL_OES, this.mTextureID[0]);
                            checkGlError("glBindTexture mTextureID");
                            GLES20.glTexParameteri(3553, 10241, 9729);
                            GLES20.glTexParameteri(3553, 10240, 9729);
                            GLES20.glTexParameteri(3553, 10242, 33071);
                            GLES20.glTexParameteri(3553, 10243, 33071);
                            this.mSurface = new SurfaceTexture(this.mTextureID[0]);
                            this.mSurface.setOnFrameAvailableListener(this);
                            sendSurfaceForPlayer(new Surface(this.mSurface));
                            return;
                        }
                        throw new RuntimeException("Could not get attrib location for uSTMatrix");
                    }
                    throw new RuntimeException("Could not get attrib location for uMVPMatrix");
                }
                throw new RuntimeException("Could not get attrib location for aTextureCoord");
            }
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
    }

    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.mUpdateSurface = true;
    }

    public void setEffect(ShaderInterface shaderInterface) {
        if (shaderInterface != null) {
            this.mEffect = shaderInterface;
        }
        this.mChangeProgram = true;
        this.mChangeProgramSupportError = true;
    }

    public ShaderInterface getEffect() {
        return this.mEffect;
    }

    /* access modifiers changed from: protected */
    public void initDrawFrame() {
        if (this.mChangeProgram) {
            this.mProgram = createProgram(getVertexShader(), getFragmentShader());
            this.mChangeProgram = false;
        }
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16640);
        GLES20.glUseProgram(this.mProgram);
        checkGlError("glUseProgram");
    }

    /* access modifiers changed from: protected */
    public void bindDrawFrameTexture() {
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(GL_TEXTURE_EXTERNAL_OES, this.mTextureID[0]);
    }

    /* access modifiers changed from: protected */
    public void takeBitmap(GL10 gl10) {
        if (this.mTakeShotPic) {
            this.mTakeShotPic = false;
            if (this.mGSYVideoShotListener != null) {
                this.mGSYVideoShotListener.getBitmap(createBitmapFromGLSurface(0, 0, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight(), gl10));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void initPointerAndDraw() {
        this.mTriangleVertices.position(0);
        GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, 20, this.mTriangleVertices);
        checkGlError("glVertexAttribPointer maPosition");
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        checkGlError("glEnableVertexAttribArray maPositionHandle");
        this.mTriangleVertices.position(3);
        GLES20.glVertexAttribPointer(this.maTextureHandle, 3, 5126, false, 20, this.mTriangleVertices);
        checkGlError("glVertexAttribPointer maTextureHandle");
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        checkGlError("glEnableVertexAttribArray maTextureHandle");
        GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
        GLES20.glDrawArrays(5, 0, 4);
        checkGlError("glDrawArrays");
    }

    public int getProgram() {
        return this.mProgram;
    }

    public int getMuMVPMatrixHandle() {
        return this.muMVPMatrixHandle;
    }

    public int getMuSTMatrixHandle() {
        return this.muSTMatrixHandle;
    }

    public int getMaPositionHandle() {
        return this.maPositionHandle;
    }

    public int getMaTextureHandle() {
        return this.maTextureHandle;
    }

    public float[] getSTMatrix() {
        return this.mSTMatrix;
    }

    public int[] getTextureID() {
        return this.mTextureID;
    }

    /* access modifiers changed from: protected */
    public String getFragmentShader() {
        return this.mEffect.getShader(this.mSurfaceView);
    }

    public void takeShotPic() {
        this.mTakeShotPic = true;
    }

    public void setGSYVideoShotListener(GSYVideoShotListener gSYVideoShotListener, boolean z) {
        this.mGSYVideoShotListener = gSYVideoShotListener;
        this.mHighShot = z;
    }
}
