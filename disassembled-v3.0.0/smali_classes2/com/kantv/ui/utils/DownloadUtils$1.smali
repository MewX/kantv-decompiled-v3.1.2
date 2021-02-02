.class Lcom/kantv/ui/utils/DownloadUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/utils/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/utils/DownloadUtils;


# direct methods
.method constructor <init>(Lcom/kantv/ui/utils/DownloadUtils;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$1;->this$0:Lcom/kantv/ui/utils/DownloadUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$1;->this$0:Lcom/kantv/ui/utils/DownloadUtils;

    invoke-static {p1}, Lcom/kantv/ui/utils/DownloadUtils;->access$000(Lcom/kantv/ui/utils/DownloadUtils;)V

    return-void
.end method
