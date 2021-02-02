.class Lcom/kantv/ui/activity/VideoPlayActivity$28;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initVideoTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1926
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

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

    .line 1929
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1930
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4800(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1931
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1932
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->json:Ljava/lang/String;

    const-string p2, "\u4e13\u9898\u64ad\u653e\u63a5\u53e3"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1935
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 1936
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 1939
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string v0, "kafka_domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$602(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1941
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1943
    :goto_0
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V

    .line 1944
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p2, :cond_3

    .line 1945
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$28;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-string v0, ""

    const-string v1, "0"

    invoke-virtual {p2, p1, v0, v0, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initInfoView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
