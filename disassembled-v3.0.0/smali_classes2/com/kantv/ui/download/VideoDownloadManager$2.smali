.class final Lcom/kantv/ui/download/VideoDownloadManager$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "VideoDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/download/VideoDownloadManager;->requestSwitchOver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

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

    .line 454
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 455
    iget-object p1, p0, Lcom/kantv/ui/download/VideoDownloadManager$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 457
    iget-object p1, p0, Lcom/kantv/ui/download/VideoDownloadManager$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "status"

    .line 460
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 461
    sget-object p2, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const-string p2, "data"

    .line 462
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 463
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 465
    array-length p2, p1

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 467
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_3

    .line 469
    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    aget-object v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->access$000()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 476
    sget-object p2, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->access$000()V

    goto :goto_1

    :cond_2
    const-string p1, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002\u3002"

    .line 481
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
