.class Lcom/kantv/ui/activity/ResetPwdActivity$7;
.super Lcom/kantv/common/api/CommonCallBack;
.source "ResetPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/ResetPwdActivity;->getVercode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/ResetPwdActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

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

    .line 366
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 367
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/ResetPwdActivity;->access$500(Lcom/kantv/ui/activity/ResetPwdActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 369
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->json:Ljava/lang/String;

    const-string p2, "\u91cd\u7f6e\u5bc6\u7801\u8fd4\u56de=="

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 372
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 373
    iget-object p2, p0, Lcom/kantv/ui/activity/ResetPwdActivity$7;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/ResetPwdActivity;->access$600(Lcom/kantv/ui/activity/ResetPwdActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    const-string p2, "msg"

    .line 375
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method