.class Lcom/kantv/ui/fragment/VideoDetailFragment$18;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->requestPlayUrlAndDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$part:Ljava/lang/String;

.field final synthetic val$part_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput-object p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part:Ljava/lang/String;

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

    .line 1728
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 1729
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002\u3002"

    if-nez p1, :cond_2

    .line 1730
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    .line 1732
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "data"

    .line 1733
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1734
    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment$18;Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->start()V

    goto :goto_0

    .line 1763
    :cond_1
    invoke-static {p2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1766
    :cond_2
    invoke-static {p2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
