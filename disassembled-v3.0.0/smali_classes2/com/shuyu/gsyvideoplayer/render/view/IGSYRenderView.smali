.class public interface abstract Lcom/shuyu/gsyvideoplayer/render/view/IGSYRenderView;
.super Ljava/lang/Object;
.source "IGSYRenderView.java"


# virtual methods
.method public abstract getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;
.end method

.method public abstract getRenderView()Landroid/view/View;
.end method

.method public abstract getSizeH()I
.end method

.method public abstract getSizeW()I
.end method

.method public abstract initCover()Landroid/graphics/Bitmap;
.end method

.method public abstract initCoverHigh()Landroid/graphics/Bitmap;
.end method

.method public abstract onRenderPause()V
.end method

.method public abstract onRenderResume()V
.end method

.method public abstract releaseRenderAll()V
.end method

.method public abstract saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
.end method

.method public abstract setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
.end method

.method public abstract setGLMVPMatrix([F)V
.end method

.method public abstract setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V
.end method

.method public abstract setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V
.end method

.method public abstract setRenderMode(I)V
.end method

.method public abstract setRenderTransform(Landroid/graphics/Matrix;)V
.end method

.method public abstract setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
.end method

.method public abstract taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
.end method
