.class Lcom/kantv/ui/activity/CommentActivity$3;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CommentActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CommentActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$708(Lcom/kantv/ui/activity/CommentActivity;)I

    .line 350
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$800(Lcom/kantv/ui/activity/CommentActivity;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/CommentActivity;->access$702(Lcom/kantv/ui/activity/CommentActivity;I)I

    .line 342
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$100(Lcom/kantv/ui/activity/CommentActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$3;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/CommentActivity;->access$800(Lcom/kantv/ui/activity/CommentActivity;)V

    return-void
.end method
