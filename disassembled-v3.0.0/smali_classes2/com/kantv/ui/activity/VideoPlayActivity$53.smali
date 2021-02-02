.class Lcom/kantv/ui/activity/VideoPlayActivity$53;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->clickShareImg()V
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

    .line 3089
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

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

    .line 3092
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 3093
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8400(Lcom/kantv/ui/activity/VideoPlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3094
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3095
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 3097
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3098
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8500(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    .line 3099
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$53;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8000(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$53$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$53;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
