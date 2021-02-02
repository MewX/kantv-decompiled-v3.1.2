.class Lcom/kantv/ui/activity/VersionupActivity$4;
.super Ljava/lang/Object;
.source "VersionupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VersionupActivity;->initUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VersionupActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 293
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$400(Lcom/kantv/ui/activity/VersionupActivity;)Landroid/app/DownloadManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$400(Lcom/kantv/ui/activity/VersionupActivity;)Landroid/app/DownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VersionupActivity;->access$500(Lcom/kantv/ui/activity/VersionupActivity;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$400(Lcom/kantv/ui/activity/VersionupActivity;)Landroid/app/DownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VersionupActivity;->access$500(Lcom/kantv/ui/activity/VersionupActivity;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VersionupActivity;->installAPK(Ljava/io/File;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/downloadapk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kantv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/VersionupActivity$4;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/VersionupActivity;->access$100(Lcom/kantv/ui/activity/VersionupActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/kantv/ui/activity/VersionupActivity;->installAPK(Ljava/io/File;)V

    :goto_0
    return-void
.end method
