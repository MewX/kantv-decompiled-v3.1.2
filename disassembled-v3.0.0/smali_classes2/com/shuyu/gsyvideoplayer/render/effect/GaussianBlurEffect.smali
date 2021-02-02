.class public Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;
.super Ljava/lang/Object;
.source "GaussianBlurEffect.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;


# static fields
.field public static final TYPEX:I = 0x1

.field public static final TYPEXY:I = 0x3

.field public static final TYPEY:I = 0x2


# instance fields
.field private blurTypeString:Ljava/lang/String;

.field private radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->radius:F

    const-string v0, "vec2(1.0,0.0)"

    .line 17
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->radius:F

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->radius:F

    const-string v0, "vec2(1.0,0.0)"

    .line 17
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    .line 27
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->radius:F

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "vec2(1.0,1.0)"

    .line 36
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "vec2(0.0,1.0)"

    .line 33
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_2
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getShader(Landroid/opengl/GLSurfaceView;)Ljava/lang/String;
    .locals 1

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nconst float resolution=1024.0;\nconst float radius = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->radius:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ";\nvec2 dir ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/effect/GaussianBlurEffect;->blurTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; //\u82e5\u4e3ax\u6a21\u7cca\uff0c\u53ef\u4f20\u5165\uff081.0,0.0\uff09  y\u6a21\u7cca  \uff080.0,1.0\uff09\n\nvoid main() {\n    //this will be our RGBA sum\n    vec4 sum = vec4(0.0);\n    \n    //our original texcoord for this fragment\n    vec2 tc = vTextureCoord;\n    \n    //the amount to blur, i.e. how far off center to sample from \n    //1.0 -> blur by one pixel\n    //2.0 -> blur by two pixels, etc.\n    float blur = radius/resolution; \n    \n    //the direction of our blur\n    //(1.0, 0.0) -> x-axis blur\n    //(0.0, 1.0) -> y-axis blur\n    float hstep = dir.x;\n    float vstep = dir.y;\n    \n    \n    //apply blurring, using a 9-tap filter with predefined gaussian weights\n    \n    sum += texture2D(sTexture, vec2(tc.x - 4.0*blur*hstep, tc.y - 4.0*blur*vstep)) * 0.0162162162;\n    sum += texture2D(sTexture, vec2(tc.x - 3.0*blur*hstep, tc.y - 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x - 2.0*blur*hstep, tc.y - 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x - 1.0*blur*hstep, tc.y - 1.0*blur*vstep)) * 0.1945945946;\n    \n    sum += texture2D(sTexture, vec2(tc.x, tc.y)) * 0.2270270270;\n    \n    sum += texture2D(sTexture, vec2(tc.x + 1.0*blur*hstep, tc.y + 1.0*blur*vstep)) * 0.1945945946;\n    sum += texture2D(sTexture, vec2(tc.x + 2.0*blur*hstep, tc.y + 2.0*blur*vstep)) * 0.1216216216;\n    sum += texture2D(sTexture, vec2(tc.x + 3.0*blur*hstep, tc.y + 3.0*blur*vstep)) * 0.0540540541;\n    sum += texture2D(sTexture, vec2(tc.x + 4.0*blur*hstep, tc.y + 4.0*blur*vstep)) * 0.0162162162;\n\n    vec4 cc= texture2D(sTexture,vTextureCoord );\n\n    //discard alpha for our simple demo, multiply by vertex color and return\n    gl_FragColor =vec4(sum.rgb, cc.a);\n}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
