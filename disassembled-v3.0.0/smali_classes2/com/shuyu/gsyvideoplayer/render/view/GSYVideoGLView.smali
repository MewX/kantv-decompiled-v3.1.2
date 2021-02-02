.class public Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
.super Landroid/opengl/GLSurfaceView;
.source "GSYVideoGLView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;
.implements Lcom/shuyu/gsyvideoplayer/render/view/IGSYRenderView;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;
    }
.end annotation


# static fields
.field public static final MODE_LAYOUT_SIZE:I = 0x0

.field public static final MODE_RENDER_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.shuyu.gsyvideoplayer.render.view.GSYVideoGLView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

.field private mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

.field private mMVPMatrix:[F

.field private mMode:I

.field private mOnGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

.field private mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

.field private mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    .line 71
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {p2}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    .line 76
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 380
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 383
    :cond_0
    new-instance v2, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;

    move-object v4, p0

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v2, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    :cond_1
    move-object/from16 v1, p5

    .line 387
    invoke-virtual {v2, v1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    move-object v1, p4

    .line 388
    invoke-virtual {v2, p4}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setVideoParamsListener(Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    move/from16 v9, p8

    .line 389
    invoke-virtual {v2, v9}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderMode(I)V

    move-object v7, p3

    .line 390
    invoke-virtual {v2, p3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V

    move v6, p2

    int-to-float v3, v6

    .line 391
    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRotation(F)V

    .line 392
    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->initRender()V

    .line 393
    new-instance v10, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V

    invoke-virtual {v2, v10}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V

    if-eqz v0, :cond_2

    .line 408
    array-length v1, v0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 409
    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    :cond_2
    move-object v0, p1

    .line 411
    invoke-static {p1, v2}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->addToParent(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    .line 81
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEGLContextClientVersion(I)V

    .line 82
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewSimpleRender;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewSimpleRender;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    .line 83
    new-instance p1, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-direct {p1, p0, p0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;-><init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    .line 84
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p1, p0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public getCurrentVideoHeight()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEffect()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object v0
.end method

.method public getIGSYSurfaceListener()Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-object v0
.end method

.method public getMVPMatrix()[F
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMVPMatrix:[F

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getRenderer()Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    return-object v0
.end method

.method public getSizeH()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSizeW()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initCover()Landroid/graphics/Bitmap;
    .locals 2

    .line 137
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

    .line 143
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

.method public initRender()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method protected initRenderMeasure()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 279
    :try_start_0
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v1

    .line 281
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentViewWidth(I)V

    .line 283
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentViewHeight(I)V

    .line 284
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v2, v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentVideoWidth(I)V

    .line 285
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setCurrentVideoHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 97
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 99
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 100
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->initRenderMeasure()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->prepareMeasure(III)V

    .line 103
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->measureHelper:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onRenderPause()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->requestLayout()V

    .line 198
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->onPause()V

    return-void
.end method

.method public onRenderResume()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->requestLayout()V

    .line 192
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->onResume()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->initRenderSize()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->releaseAll()V

    :cond_0
    return-void
.end method

.method public releaseRenderAll()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->requestLayout()V

    .line 205
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->releaseAll()V

    return-void
.end method

.method public saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
    .locals 1

    .line 168
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$1;-><init>(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;Ljava/io/File;)V

    .line 179
    invoke-virtual {p0, v0, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V

    .line 180
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->takeShotPic()V

    return-void
.end method

.method public setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    .line 311
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {p1, p0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 312
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->initRenderMeasure()V

    return-void
.end method

.method public setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 322
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    .line 323
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mEffect:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    :cond_0
    return-void
.end method

.method public setGLEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    return-void
.end method

.method public setGLMVPMatrix([F)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMVPMatrix([F)V

    return-void
.end method

.method public setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setCustomRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V

    return-void
.end method

.method public setGSYVideoShotListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYVideoShotListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V

    return-void
.end method

.method public setIGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;)V
    .locals 0

    .line 114
    invoke-virtual {p0, p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setOnGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;)V

    .line 115
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mIGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    return-void
.end method

.method public setMVPMatrix([F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 329
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMVPMatrix:[F

    .line 330
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setMVPMatrix([F)V

    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mMode:I

    return-void
.end method

.method public setOnGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;)V
    .locals 1

    .line 316
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mOnGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

    .line 317
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mOnGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->setGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setMode(I)V

    return-void
.end method

.method public setRenderTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 217
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

    .line 241
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mVideoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    return-void
.end method

.method public takeShotPic()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->takeShotPic()V

    return-void
.end method

.method public taskShotPic(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->setGSYVideoShotListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->takeShotPic()V

    :cond_0
    return-void
.end method
