.class Lcom/kantv/ui/activity/FilterActivity$3;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/FilterActivity;->access$108(Lcom/kantv/ui/activity/FilterActivity;)I

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/FilterActivity;->access$400(Lcom/kantv/ui/activity/FilterActivity;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/FilterActivity;->access$102(Lcom/kantv/ui/activity/FilterActivity;I)I

    .line 268
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/FilterActivity;->access$200(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$3;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/FilterActivity;->access$400(Lcom/kantv/ui/activity/FilterActivity;Z)V

    return-void
.end method
