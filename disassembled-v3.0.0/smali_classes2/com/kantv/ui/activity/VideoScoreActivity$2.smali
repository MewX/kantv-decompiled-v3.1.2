.class Lcom/kantv/ui/activity/VideoScoreActivity$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoScoreActivity;->requestGrade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoScoreActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoScoreActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$2;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

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

    .line 169
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 170
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$2;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->access$000(Lcom/kantv/ui/activity/VideoScoreActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 172
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 174
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u8bc4\u5206"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "401"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 181
    invoke-static {}, Ldebug/KanApplication;->exitLogin()V

    .line 182
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity$2;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    const-string p2, "msg"

    .line 185
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
