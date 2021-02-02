.class public interface abstract Lcom/avos/avoscloud/upload/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/upload/Uploader$UploadCallback;
    }
.end annotation


# virtual methods
.method public abstract cancel(Z)Z
.end method

.method public abstract doWork()Lcom/avos/avoscloud/AVException;
.end method

.method public abstract execute()V
.end method

.method public abstract getFinalObjectId()Ljava/lang/String;
.end method

.method public abstract getFinalUrl()Ljava/lang/String;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract publishProgress(I)V
.end method
