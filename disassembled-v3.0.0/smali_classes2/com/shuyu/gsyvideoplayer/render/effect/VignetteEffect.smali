.class public Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;
.super Ljava/lang/Object;
.source "VignetteEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# instance fields
.field private mHeight:I

.field private mScale:F

.field private final mShade:F

.field private mWidth:I


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mWidth:I

    .line 15
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mHeight:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mScale:F

    const v1, 0x3f59999a    # 0.85f

    .line 17
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mShade:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    :cond_1
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mScale:F

    return-void
.end method

.method private initValues(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mWidth:I

    .line 40
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mHeight:I

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 9

    .line 45
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->initValues(Landroid/opengl/GLSurfaceView;)V

    const/4 p1, 0x2

    .line 46
    new-array v0, p1, [F

    .line 47
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mWidth:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mHeight:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v2, :cond_0

    aput v3, v0, v5

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    aput v2, v0, v4

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v5

    aput v3, v0, v4

    .line 54
    :goto_0
    aget v1, v0, v5

    aget v2, v0, v5

    mul-float v1, v1, v2

    aget v2, v0, v4

    aget v6, v0, v4

    mul-float v2, v2, v6

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 57
    new-array p1, p1, [Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale[0] = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ";\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v5

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale[1] = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inv_max_dist = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "range = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x3fa66666    # 1.3f

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/render/effect/VignetteEffect;->mScale:F

    float-to-double v7, v3

    .line 69
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    const v7, 0x3f333333    # 0.7f

    mul-float v3, v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float range;\n float inv_max_dist;\n float shade;\n vec2 scale;\nvarying vec2 vTextureCoord;\nvoid main() {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "shade = 0.85;\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  const float slope = 20.0;\n  vec2 coord = vTextureCoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
