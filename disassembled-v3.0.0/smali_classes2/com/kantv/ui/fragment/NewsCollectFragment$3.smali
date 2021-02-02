.class Lcom/kantv/ui/fragment/NewsCollectFragment$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsCollectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsCollectFragment;->removeBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 306
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 307
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$300(Lcom/kantv/ui/fragment/NewsCollectFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 309
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 311
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 313
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/kantv/ui/bean/EventBusBean;

    sget-object v1, Lcom/kantv/ui/fragment/NewsCollectFragment;->TAG:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 315
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 316
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 317
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 318
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 321
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p2, :cond_4

    .line 322
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/NewsCollectFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->reset()V

    .line 325
    :cond_4
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0, v2}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$200(Lcom/kantv/ui/fragment/NewsCollectFragment;ZLjava/lang/String;)V

    const-string p2, "msg"

    .line 326
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
