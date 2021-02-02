.class Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;
.super Ljava/lang/Object;
.source "GSYVideoGLViewBaseRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

.field final synthetic val$error:I

.field final synthetic val$op:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;I)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$op:Ljava/lang/String;

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYVideoGLRenderErrorListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYVideoGLRenderErrorListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->val$error:I

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    iget-boolean v4, v4, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;->onError(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;IZ)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;->this$0:Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    return-void
.end method
