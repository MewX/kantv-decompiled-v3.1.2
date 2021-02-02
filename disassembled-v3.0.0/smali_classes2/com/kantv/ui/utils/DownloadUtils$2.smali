.class Lcom/kantv/ui/utils/DownloadUtils$2;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/utils/DownloadUtils;->install(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/utils/DownloadUtils;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/kantv/ui/utils/DownloadUtils;Landroid/app/Dialog;Ljava/io/File;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->this$0:Lcom/kantv/ui/utils/DownloadUtils;

    iput-object p2, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 149
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->this$0:Lcom/kantv/ui/utils/DownloadUtils;

    iget-object v0, p0, Lcom/kantv/ui/utils/DownloadUtils$2;->val$file:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/utils/DownloadUtils;->installAPK(Ljava/io/File;)V

    return-void
.end method
