.class Lcom/kantv/ui/fragment/NewsHistroyFragment$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsHistroyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsHistroyFragment;->removeBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsHistroyFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

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

    .line 287
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 288
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$300(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 290
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 292
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 294
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/kantv/ui/bean/EventBusBean;

    sget-object v1, Lcom/kantv/ui/fragment/NewsHistroyFragment;->TAG:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/kantv/ui/bean/EventBusBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 296
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 297
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 298
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 299
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 302
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    if-eqz p2, :cond_4

    .line 303
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    iget-object p2, p2, Lcom/kantv/ui/fragment/NewsHistroyFragment;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    invoke-virtual {p2}, Lcom/kantv/lib/recyclerview/XRecyclerView;->reset()V

    .line 306
    :cond_4
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0, v2}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$200(Lcom/kantv/ui/fragment/NewsHistroyFragment;ZLjava/lang/String;)V

    const-string p2, "msg"

    .line 307
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
