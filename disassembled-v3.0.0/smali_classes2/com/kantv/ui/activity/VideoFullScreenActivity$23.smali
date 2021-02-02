.class Lcom/kantv/ui/activity/VideoFullScreenActivity$23;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->requestSwitchOver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

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

    .line 1142
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1143
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$2200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1144
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1146
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 1148
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1149
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1602(Lcom/kantv/ui/activity/VideoFullScreenActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpIv:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002\u3002"

    .line 1152
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
