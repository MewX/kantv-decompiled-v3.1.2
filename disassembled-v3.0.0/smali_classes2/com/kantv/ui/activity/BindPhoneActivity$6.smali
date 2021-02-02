.class Lcom/kantv/ui/activity/BindPhoneActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "BindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BindPhoneActivity;->getVercode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

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

    .line 319
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 320
    iget-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$400(Lcom/kantv/ui/activity/BindPhoneActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 323
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 324
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "expire"

    .line 325
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v1, p2}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$502(Lcom/kantv/ui/activity/BindPhoneActivity;I)I

    .line 327
    iget-object p2, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$500(Lcom/kantv/ui/activity/BindPhoneActivity;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$602(Lcom/kantv/ui/activity/BindPhoneActivity;I)I

    .line 329
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/activity/BindPhoneActivity$6;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$700(Lcom/kantv/ui/activity/BindPhoneActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    const-string p2, "msg"

    .line 331
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method
