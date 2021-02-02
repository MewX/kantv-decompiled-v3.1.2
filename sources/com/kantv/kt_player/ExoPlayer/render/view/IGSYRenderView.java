package com.kantv.kt_player.ExoPlayer.render.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.View;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoShotListener;
import com.kantv.kt_player.ExoPlayer.listener.GSYVideoShotSaveListener;
import com.kantv.kt_player.ExoPlayer.render.glrender.GSYVideoGLViewBaseRender;
import com.kantv.kt_player.ExoPlayer.render.view.GSYVideoGLView.ShaderInterface;
import com.kantv.kt_player.ExoPlayer.render.view.listener.IGSYSurfaceListener;
import com.kantv.kt_player.ExoPlayer.utils.MeasureHelper.MeasureFormVideoParamsListener;
import java.io.File;

public interface IGSYRenderView {
    IGSYSurfaceListener getIGSYSurfaceListener();

    View getRenderView();

    int getSizeH();

    int getSizeW();

    Bitmap initCover();

    Bitmap initCoverHigh();

    void onRenderPause();

    void onRenderResume();

    void releaseRenderAll();

    void saveFrame(File file, boolean z, GSYVideoShotSaveListener gSYVideoShotSaveListener);

    void setGLEffectFilter(ShaderInterface shaderInterface);

    void setGLMVPMatrix(float[] fArr);

    void setGLRenderer(GSYVideoGLViewBaseRender gSYVideoGLViewBaseRender);

    void setIGSYSurfaceListener(IGSYSurfaceListener iGSYSurfaceListener);

    void setRenderMode(int i);

    void setRenderTransform(Matrix matrix);

    void setVideoParamsListener(MeasureFormVideoParamsListener measureFormVideoParamsListener);

    void taskShotPic(GSYVideoShotListener gSYVideoShotListener, boolean z);
}
