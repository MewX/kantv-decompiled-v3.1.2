.class Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;
.super Ljava/lang/Object;
.source "GSYVideoGLViewBaseRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->sendSurfaceForPlayer(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Landroid/view/Surface;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;->val$surface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;->onSurfaceAvailable(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
