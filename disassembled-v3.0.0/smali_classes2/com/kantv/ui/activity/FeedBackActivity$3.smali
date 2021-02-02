.class Lcom/kantv/ui/activity/FeedBackActivity$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "FeedBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FeedBackActivity;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FeedBackActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$3;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

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

    .line 185
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 186
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$3;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/FeedBackActivity;->access$000(Lcom/kantv/ui/activity/FeedBackActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 190
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 191
    iget-object p2, p0, Lcom/kantv/ui/activity/FeedBackActivity$3;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p2}, Lcom/kantv/ui/activity/FeedBackActivity;->finish()V

    :cond_2
    const-string p2, "msg"

    .line 193
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
