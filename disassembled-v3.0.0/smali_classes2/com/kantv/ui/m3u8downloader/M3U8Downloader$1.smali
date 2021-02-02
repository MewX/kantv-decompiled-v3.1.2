.class Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;
.super Ljava/lang/Object;
.source "M3U8Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->cancelAndDelete(Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

.field final synthetic val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;->val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->clearDir(Ljava/io/File;)Z

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;->val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v1}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onSuccess()V

    goto :goto_0

    .line 300
    :cond_0
    invoke-interface {v1}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onFail()V

    :cond_1
    :goto_0
    return-void
.end method
