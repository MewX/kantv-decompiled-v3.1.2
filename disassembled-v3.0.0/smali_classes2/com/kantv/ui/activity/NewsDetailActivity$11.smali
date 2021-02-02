.class Lcom/kantv/ui/activity/NewsDetailActivity$11;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->requestCollect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$11;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

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

    .line 960
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 961
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$11;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2600(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 962
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$11;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 963
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$11;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 965
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    .line 966
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u6536\u85cf\u6210\u529f"

    .line 967
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "401"

    .line 968
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 969
    invoke-static {}, Ldebug/KanApplication;->exitLogin()V

    .line 970
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$11;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string p2, "msg"

    .line 972
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method
