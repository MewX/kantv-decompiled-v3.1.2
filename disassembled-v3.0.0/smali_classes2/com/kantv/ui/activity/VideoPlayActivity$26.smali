.class Lcom/kantv/ui/activity/VideoPlayActivity$26;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initLineSwitchData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$line:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;ZI)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->val$line:I

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
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

    .line 1855
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1856
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4500(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1857
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1858
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1860
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "data"

    .line 1861
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1863
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const-string p2, "url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual/range {v0 .. v8}, Lcom/kantv/ui/activity/VideoPlayActivity;->switchPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->val$line:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "line_num"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5df2\u5207\u6362\u7ebf\u8def"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$26;->val$line:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
