.class Lcom/kantv/ui/activity/OfflineVideoActivity$4;
.super Ljava/lang/Object;
.source "OfflineVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoActivity;->getDownLoadFileCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$4;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 452
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 453
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$4;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    const-class v0, Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6682\u65e0\u6b63\u5728\u7f13\u5b58\u7684\u89c6\u9891"

    .line 456
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
