.class Lcom/kantv/ui/activity/SendEmailResultActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SendEmailResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SendEmailResultActivity;->resetPwdSendEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SendEmailResultActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SendEmailResultActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity$1;->this$0:Lcom/kantv/ui/activity/SendEmailResultActivity;

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

    .line 146
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 147
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity$1;->this$0:Lcom/kantv/ui/activity/SendEmailResultActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SendEmailResultActivity;->access$000(Lcom/kantv/ui/activity/SendEmailResultActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/kantv/ui/activity/SendEmailResultActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 151
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u53d1\u9001\u6210\u529f\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536"

    .line 152
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
