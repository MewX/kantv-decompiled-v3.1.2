.class Lcom/kantv/ui/activity/DownloadingActivity$5;
.super Ljava/lang/Object;
.source "DownloadingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/DownloadingActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 797
    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$802(Z)Z

    .line 798
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 799
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 801
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    const-class v2, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 802
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v1, v1, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$5;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/activity/DownloadingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
