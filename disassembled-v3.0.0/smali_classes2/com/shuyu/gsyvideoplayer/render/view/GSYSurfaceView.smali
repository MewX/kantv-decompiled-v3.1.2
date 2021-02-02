.class public Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;
.super Landroid/view/SurfaceView;
.source "GSYSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/shuyu/gsyvideoplayer/render/view/IGSYRenderView;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field private mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

.field private mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->init()V

    return-void
.end method

.method public static addSurfaceView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;
    .locals 1

    .line 225
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    :cond_0
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v0, p3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V

    .line 230
    invoke-virtual {v0, p4}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    int-to-float p0, p2

    .line 231
    invoke-virtual {v0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->setRotation(F)V

    .line 232
    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 46
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-direct {v0, p0, p0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    return-void
.end method


# virtual methods
.method public getCurrentVideoHeight()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-object v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSizeH()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initCover()Landroid/graphics/Bitmap;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support initCover now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initCoverHigh()Landroid/graphics/Bitmap;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not support initCoverHigh now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 52
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRenderPause()V
    .locals 2

    .line 144
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

    .line 139
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

.method public releaseRenderAll()V
    .locals 2

    .line 149
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
    .locals 0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not support saveFrame now"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 1

    .line 178
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

    .line 170
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

    .line 165
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
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 89
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 154
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
    .locals 1

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not support setRenderTransform now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYSurfaceView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceDestroyed(Landroid/view/Surface;)Z

    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not support taskShotPic now"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    return-void
.end method
