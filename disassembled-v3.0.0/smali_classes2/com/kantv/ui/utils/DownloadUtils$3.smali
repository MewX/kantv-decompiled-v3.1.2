.class Lcom/kantv/ui/utils/DownloadUtils$3;
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


# direct methods
.method constructor <init>(Lcom/kantv/ui/utils/DownloadUtils;Landroid/app/Dialog;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$3;->this$0:Lcom/kantv/ui/utils/DownloadUtils;

    iput-object p2, p0, Lcom/kantv/ui/utils/DownloadUtils$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
