.class public Lcom/shuyu/gsyvideoplayer/render/effect/ContrastEffect;
.super Ljava/lang/Object;
.source "ContrastEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# instance fields
.field private contrast:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    .line 26
    :cond_1
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/ContrastEffect;->contrast:F

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 1

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\n float contrast;\nvarying vec2 vTextureCoord;\nvoid main() {\n  contrast ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/ContrastEffect;->contrast:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  color -= 0.5;\n  color *= contrast;\n  color += 0.5;\n  gl_FragColor = color;\n}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
