.class public Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;
.super Landroid/view/TextureView;
.source "GSYTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/shuyu/gsyvideoplayer/render/view/IGSYRenderView;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field private mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

.field private mSurface:Landroid/view/Surface;

.field private mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->init()V

    return-void
.end method

.method public static addTextureView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;
    .locals 1

    .line 274
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 277
    :cond_0
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;-><init>(Landroid/content/Context;)V

    .line 278
    invoke-virtual {v0, p3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V

    .line 279
    invoke-virtual {v0, p4}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    int-to-float p0, p2

    .line 280
    invoke-virtual {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setRotation(F)V

    .line 281
    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 50
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-direct {v0, p0, p0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    return-void
.end method


# virtual methods
.method public getCurrentVideoHeight()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-object v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSizeH()I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initCover()Landroid/graphics/Bitmap;
    .locals 3

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeW()I

    move-result v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeH()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 119
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public initCoverHigh()Landroid/graphics/Bitmap;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeW()I

    move-result v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getSizeH()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 56
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRenderPause()V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support onRenderPause now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderResume()V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support onRenderResume now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 61
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mSurface:Landroid/view/Surface;

    .line 62
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mSurface:Landroid/view/Surface;

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mSurface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceDestroyed(Landroid/view/Surface;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mSurface:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, p3}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mSurface:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceUpdated(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public releaseRenderAll()V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support releaseRenderAll now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;-><init>(Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;Ljava/io/File;)V

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->initCoverHigh()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;->getBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->initCover()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;->getBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 1

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLEffectFilter now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 1

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLMVPMatrix now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 1

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setGLRenderer now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 99
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setRenderMode now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->initCoverHigh()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;->getBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->initCover()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;->getBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
