.class Lcom/kantv/ui/activity/NewsDetailActivity$12;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->requestCollect(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 997
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

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

    .line 1000
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1001
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$2700(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1002
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1003
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1005
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    .line 1006
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "msg"

    if-eqz v0, :cond_3

    .line 1007
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/NewsDetailActivity;->is_collect:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1014
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u6536\u85cf"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1022
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v0, "401"

    .line 1023
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1024
    invoke-static {}, Ldebug/KanApplication;->exitLogin()V

    .line 1025
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$12;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1027
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
