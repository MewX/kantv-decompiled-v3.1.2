.class Lcom/kantv/ui/fragment/VideoClassFragment$4;
.super Ljava/lang/Object;
.source "VideoClassFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment;->fillDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoClassFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$500(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$4;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$500(Lcom/kantv/ui/fragment/VideoClassFragment;Ljava/lang/String;Z)V

    return-void
.end method
