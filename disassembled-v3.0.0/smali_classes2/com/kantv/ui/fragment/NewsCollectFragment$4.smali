.class Lcom/kantv/ui/fragment/NewsCollectFragment$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsCollectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsCollectFragment;->removeCollect(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;ZI)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iput p4, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->val$position:I

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

    .line 349
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 350
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$300(Lcom/kantv/ui/fragment/NewsCollectFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 352
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 354
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->val$position:I

    if-le p1, p2, :cond_2

    .line 356
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$000(Lcom/kantv/ui/fragment/NewsCollectFragment;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 358
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$4;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsCollectFragment;->access$100(Lcom/kantv/ui/fragment/NewsCollectFragment;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
