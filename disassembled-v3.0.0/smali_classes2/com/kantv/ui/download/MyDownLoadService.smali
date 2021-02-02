.class public Lcom/kantv/ui/download/MyDownLoadService;
.super Landroid/app/Service;
.source "MyDownLoadService.java"


# instance fields
.field private name:Ljava/lang/String;

.field private needStop:Z

.field private saveDir:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 0

    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "dwonload= onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "url"

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/download/MyDownLoadService;->url:Ljava/lang/String;

    const-string v1, "name"

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/download/MyDownLoadService;->name:Ljava/lang/String;

    const-string v1, "needStop"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kantv/ui/download/MyDownLoadService;->needStop:Z

    .line 40
    :cond_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    iget-object v1, p0, Lcom/kantv/ui/download/MyDownLoadService;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/kantv/ui/download/MyDownLoadService;->name:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/kantv/ui/download/VideoDownloadManager;->ClikcDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
