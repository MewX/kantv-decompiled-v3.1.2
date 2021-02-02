.class Lcom/kantv/ui/activity/SafeVerInputActivity$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SafeVerInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerInputActivity;->checkVar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$3;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 182
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 183
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$3;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->access$000(Lcom/kantv/ui/activity/SafeVerInputActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 185
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 187
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 191
    iget-object p2, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$3;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    const-class v0, Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-virtual {p2, v0}, Lcom/kantv/ui/activity/SafeVerInputActivity;->gotoActivity(Ljava/lang/Class;)V

    :cond_2
    const-string p2, "msg"

    .line 193
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
