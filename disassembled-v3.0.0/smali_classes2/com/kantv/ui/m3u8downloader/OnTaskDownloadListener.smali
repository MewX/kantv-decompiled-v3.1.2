.class interface abstract Lcom/kantv/ui/m3u8downloader/OnTaskDownloadListener;
.super Ljava/lang/Object;
.source "OnTaskDownloadListener.java"

# interfaces
.implements Lcom/kantv/ui/m3u8downloader/BaseListener;


# virtual methods
.method public abstract onDownloading(JJII)V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStartDownload(II)V
.end method

.method public abstract onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;)V
.end method
