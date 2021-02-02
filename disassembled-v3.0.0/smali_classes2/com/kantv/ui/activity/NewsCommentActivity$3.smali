.class Lcom/kantv/ui/activity/NewsCommentActivity$3;
.super Ljava/lang/Object;
.source "NewsCommentActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsCommentActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsCommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsCommentActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$708(Lcom/kantv/ui/activity/NewsCommentActivity;)I

    .line 344
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$800(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$702(Lcom/kantv/ui/activity/NewsCommentActivity;I)I

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$100(Lcom/kantv/ui/activity/NewsCommentActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity$3;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsCommentActivity;->access$800(Lcom/kantv/ui/activity/NewsCommentActivity;)V

    return-void
.end method
