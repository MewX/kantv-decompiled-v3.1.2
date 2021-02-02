.class Lcom/kantv/ui/activity/NewsDetailActivity$24;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->todayAuNewsProcess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 1711
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1719
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1720
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 1721
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1722
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "info"

    .line 1724
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1726
    :cond_1
    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$24;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
