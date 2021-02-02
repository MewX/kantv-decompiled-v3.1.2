.class Lcom/kantv/ui/fragment/VideoCommentFragment$3;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoCommentFragment;->InItView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoCommentFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$908(Lcom/kantv/ui/fragment/VideoCommentFragment;)I

    .line 342
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$1000(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$902(Lcom/kantv/ui/fragment/VideoCommentFragment;I)I

    .line 334
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$100(Lcom/kantv/ui/fragment/VideoCommentFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$100(Lcom/kantv/ui/fragment/VideoCommentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoCommentFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->access$1000(Lcom/kantv/ui/fragment/VideoCommentFragment;)V

    return-void
.end method
