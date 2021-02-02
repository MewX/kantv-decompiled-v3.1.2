.class Lcom/kantv/ui/activity/RegisterActivity$9;
.super Lcom/kantv/common/api/CommonCallBack;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity;->getVercode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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

    .line 374
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 375
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/RegisterActivity;->access$500(Lcom/kantv/ui/activity/RegisterActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 378
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 379
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "expire"

    .line 380
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v1, p2}, Lcom/kantv/ui/activity/RegisterActivity;->access$602(Lcom/kantv/ui/activity/RegisterActivity;I)I

    .line 382
    iget-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/RegisterActivity;->access$600(Lcom/kantv/ui/activity/RegisterActivity;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/RegisterActivity;->access$702(Lcom/kantv/ui/activity/RegisterActivity;I)I

    .line 384
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity$9;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/RegisterActivity;->access$800(Lcom/kantv/ui/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    const-string p2, "msg"

    .line 386
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method
