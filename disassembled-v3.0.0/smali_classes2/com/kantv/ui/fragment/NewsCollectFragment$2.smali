.class Lcom/kantv/ui/fragment/NewsCollectFragment$2;
.super Ljava/lang/Object;
.source "NewsCollectFragment.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsCollectFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsCollectFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 236
    sget-object v0, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onLoadMore"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String12Bean;->getStr5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$200(Lcom/kantv/ui/fragment/NewsCollectFragment;ZLjava/lang/String;)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 226
    sget-object v0, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$2;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$200(Lcom/kantv/ui/fragment/NewsCollectFragment;ZLjava/lang/String;)V

    return-void
.end method
