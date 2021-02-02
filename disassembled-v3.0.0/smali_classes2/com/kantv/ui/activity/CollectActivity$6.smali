.class Lcom/kantv/ui/activity/CollectActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "CollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->removeCollect(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;ZI)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iput p4, p0, Lcom/kantv/ui/activity/CollectActivity$6;->val$position:I

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

    .line 326
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 327
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$800(Lcom/kantv/ui/activity/CollectActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 329
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 331
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 332
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/kantv/ui/activity/CollectActivity$6;->val$position:I

    if-le p1, p2, :cond_2

    .line 333
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$200(Lcom/kantv/ui/activity/CollectActivity;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/activity/CollectActivity$6;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 335
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$6;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$300(Lcom/kantv/ui/activity/CollectActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
