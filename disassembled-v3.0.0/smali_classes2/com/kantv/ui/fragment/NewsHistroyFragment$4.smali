.class Lcom/kantv/ui/fragment/NewsHistroyFragment$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsHistroyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsHistroyFragment;->removeCollect(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsHistroyFragment;Landroid/content/Context;ZI)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    iput p4, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->val$position:I

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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

    .line 330
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 331
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$300(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 333
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 335
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 336
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->val$position:I

    if-le p1, p2, :cond_2

    .line 337
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$000(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 339
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsHistroyFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsHistroyFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsHistroyFragment;->access$100(Lcom/kantv/ui/fragment/NewsHistroyFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
