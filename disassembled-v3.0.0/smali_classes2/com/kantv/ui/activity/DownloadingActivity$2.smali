.class Lcom/kantv/ui/activity/DownloadingActivity$2;
.super Lcom/kantv/common/api/CommonCallBack;
.source "DownloadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/DownloadingActivity;->requestSwitchOver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

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

    .line 729
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 730
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$600(Lcom/kantv/ui/activity/DownloadingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 731
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Thread.currentThread().getName() requestSwitchOver "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadingActivity"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "status"

    .line 735
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$702(Lcom/kantv/ui/activity/DownloadingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$700(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 738
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$700(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 739
    array-length v0, p1

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 740
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5355\u96c6\u4fe1\u606fjson   i  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    aget-object v2, p1, v1

    iput-object v2, v0, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    .line 743
    new-instance v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 744
    iput v2, v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    :cond_2
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 750
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5355\u96c6\u4fe1\u606fjson  \u4e00\u4e2a trueUrl  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/DownloadingActivity;->access$700(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object p2, p0, Lcom/kantv/ui/activity/DownloadingActivity$2;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$700(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, "\u6570\u636e\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002\u3002"

    .line 755
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method
