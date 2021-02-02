.class public Lcom/shuyu/gsyvideoplayer/render/effect/OverlayEffect;
.super Ljava/lang/Object;
.source "OverlayEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# instance fields
.field fstep:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ac49ba6    # 0.0015f

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/OverlayEffect;->fstep:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3ac49ba6    # 0.0015f

    .line 14
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/OverlayEffect;->fstep:F

    .line 21
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/OverlayEffect;->fstep:F

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 1

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n             uniform samplerExternalOES sTexture; \n             varying vec2 vTextureCoord; \n  \n             void main() \n             { \n              vec4 sample0,sample1,sample2,sample3; \n              float fstep="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/OverlayEffect;->fstep:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; \n              sample0=texture2D(sTexture,vec2(vTextureCoord.x-fstep,vTextureCoord.y-fstep)); \n              sample1=texture2D(sTexture,vec2(vTextureCoord.x+fstep,vTextureCoord.y-fstep)); \n              sample2=texture2D(sTexture,vec2(vTextureCoord.x+fstep,vTextureCoord.y+fstep)); \n              sample3=texture2D(sTexture,vec2(vTextureCoord.x-fstep,vTextureCoord.y+fstep)); \n              vec4 color=(sample0+sample1+sample2+sample3) / 4.0; \n              gl_FragColor=color; \n             } "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
