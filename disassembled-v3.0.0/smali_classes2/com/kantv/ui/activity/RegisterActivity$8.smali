.class Lcom/kantv/ui/activity/RegisterActivity$8;
.super Lcom/kantv/common/api/CommonCallBack;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity;->regAccount()V
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

    .line 335
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 338
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 339
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/RegisterActivity;->access$400(Lcom/kantv/ui/activity/RegisterActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 341
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 343
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 344
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 348
    :cond_2
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    const-class v0, Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-virtual {p2, v0}, Lcom/kantv/ui/activity/RegisterActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 350
    iget-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity$8;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-virtual {p2}, Lcom/kantv/ui/activity/RegisterActivity;->finish()V

    :cond_3
    const-string p2, "msg"

    .line 352
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
