.class Lcom/kantv/ui/MainActivity$6;
.super Lcom/kantv/common/api/CommonCallBack;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initOnlineStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$6;->this$0:Lcom/kantv/ui/MainActivity;

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

    .line 506
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 507
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$6;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$900(Lcom/kantv/ui/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 509
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$6;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 511
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 512
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 513
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "Login_State"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$6;->this$0:Lcom/kantv/ui/MainActivity;

    const-string p2, "\u63d0\u793a"

    const-string v0, "\u60a8\u7684\u8d26\u53f7\u5df2\u7ecf\u5728\u53e6\u5916\u4e00\u53f0\u8bbe\u5907\u4e0a\u767b\u5f55\uff0c\u662f\u5426\u91cd\u65b0\u767b\u5f55\uff1f"

    invoke-static {p1, p2, v0}, Lcom/kantv/ui/MainActivity;->access$1000(Lcom/kantv/ui/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    :cond_3
    return-void
.end method
