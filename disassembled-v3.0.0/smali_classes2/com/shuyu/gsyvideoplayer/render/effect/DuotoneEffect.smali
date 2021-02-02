.class public Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;
.super Ljava/lang/Object;
.source "DuotoneEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# instance fields
.field private mFirstColor:I

.field private mSecondColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff01

    .line 16
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mFirstColor:I

    const/16 v0, -0x100

    .line 17
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mSecondColor:I

    .line 28
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mFirstColor:I

    .line 29
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mSecondColor:I

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 9

    const/4 p1, 0x3

    .line 34
    new-array v0, p1, [F

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mFirstColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mFirstColor:I

    .line 35
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v4, 0x1

    aput v1, v0, v4

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mFirstColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v5, 0x2

    aput v1, v0, v5

    .line 36
    new-array v1, p1, [F

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mSecondColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    aput v6, v1, v3

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mSecondColor:I

    .line 37
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    aput v6, v1, v4

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/render/effect/DuotoneEffect;->mSecondColor:I

    .line 38
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    aput v6, v1, v5

    .line 40
    new-array v2, p1, [Ljava/lang/String;

    .line 41
    new-array p1, p1, [Ljava/lang/String;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ";\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first[1] = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first[2] = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second[0] = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second[1] = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second[2] = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n vec3 first;\n vec3 second;\nvarying vec2 vTextureCoord;\nvoid main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  vec4 color = texture2D(sTexture, vTextureCoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
