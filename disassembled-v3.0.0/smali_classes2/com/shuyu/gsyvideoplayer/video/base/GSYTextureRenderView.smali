.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;
.super Landroid/widget/FrameLayout;
.source "GSYTextureRenderView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;
.implements Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# instance fields
.field protected mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

.field protected mFullPauseBitmap:Landroid/graphics/Bitmap;

.field protected mMatrixGL:[F

.field protected mMode:I

.field protected mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

.field protected mRotate:I

.field protected mSurface:Landroid/view/Surface;

.field protected mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

.field protected mTextureViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;

    invoke-direct {p1}, Lcom/shuyu/gsyvideoplayer/render/effect/NoEffect;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    return-void
.end method


# virtual methods
.method protected addTextureView()V
    .locals 11

    .line 115
    new-instance v0, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    .line 116
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    iget-object v9, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget v10, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v10}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->addView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;I)V

    return-void
.end method

.method protected changeTextureViewShowType()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->getTextureParams()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 136
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public getEffectFilter()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    return-object v0
.end method

.method public getRenderProxy()Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    return-object v0
.end method

.method protected getTextureParams()I
    .locals 1

    .line 125
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->getShowType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method protected initCover()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->initCover()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getShowView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->pauseLogic(Landroid/view/Surface;Z)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;)Z
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setDisplay(Landroid/view/Surface;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->releaseSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->releasePauseCover()V

    return-void
.end method

.method protected pauseLogic(Landroid/view/Surface;Z)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->showPauseCover()V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method protected abstract releasePauseCover()V
.end method

.method protected abstract releaseSurface(Landroid/view/Surface;)V
.end method

.method public setCustomGLRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V
    .locals 1

    .line 197
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setGLRenderer(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;)V

    :cond_0
    return-void
.end method

.method protected abstract setDisplay(Landroid/view/Surface;)V
.end method

.method public setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .locals 1

    .line 175
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    .line 176
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setEffectFilter(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V

    :cond_0
    return-void
.end method

.method public setGLRenderMode(I)V
    .locals 1

    .line 209
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    .line 210
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setGLRenderMode(I)V

    :cond_0
    return-void
.end method

.method public setMatrixGL([F)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    .line 188
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mMatrixGL:[F

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setMatrixGL([F)V

    :cond_0
    return-void
.end method

.method protected abstract setSmallVideoTextureView()V
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;->setSmallVideoTextureView()V

    return-void
.end method

.method protected abstract showPauseCover()V
.end method
