.class Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;
.super Ljava/lang/Object;
.source "M3U8Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->cancelAndDelete(Ljava/util/List;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

.field final synthetic val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader;Ljava/util/List;Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->val$urls:Ljava/util/List;

    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->val$urls:Ljava/util/List;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->val$urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 324
    new-instance v3, Ljava/io/File;

    invoke-static {v4}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->clearDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 326
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$2;->val$listener:Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    .line 329
    invoke-interface {v0}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onSuccess()V

    goto :goto_2

    .line 331
    :cond_2
    invoke-interface {v0}, Lcom/kantv/ui/m3u8downloader/OnDeleteTaskListener;->onFail()V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    .line 326
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
