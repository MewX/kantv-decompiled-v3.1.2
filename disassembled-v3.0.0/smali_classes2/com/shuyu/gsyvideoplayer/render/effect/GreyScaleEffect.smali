.class public Lcom/shuyu/gsyvideoplayer/render/effect/GreyScaleEffect;
.super Ljava/lang/Object;
.source "GreyScaleEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 0

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 color = texture2D(sTexture, vTextureCoord);\n  float y = dot(color, vec4(0.299, 0.587, 0.114, 0));\n  gl_FragColor = vec4(y, y, y, color.a);\n}\n"

    return-object p1
.end method
