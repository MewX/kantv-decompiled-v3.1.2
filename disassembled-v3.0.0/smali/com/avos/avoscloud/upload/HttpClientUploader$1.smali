.class Lcom/avos/avoscloud/upload/HttpClientUploader$1;
.super Ljava/lang/Object;
.source "HttpClientUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/upload/HttpClientUploader;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/upload/HttpClientUploader;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    invoke-virtual {v0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    invoke-static {v1}, Lcom/avos/avoscloud/upload/HttpClientUploader;->access$000(Lcom/avos/avoscloud/upload/HttpClientUploader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    iget-object v1, v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    iget-object v1, v1, Lcom/avos/avoscloud/upload/HttpClientUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    iget-object v0, v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/avos/avoscloud/upload/HttpClientUploader$1;->this$0:Lcom/avos/avoscloud/upload/HttpClientUploader;

    iget-object v0, v0, Lcom/avos/avoscloud/upload/HttpClientUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    const/16 v1, 0x3e7

    const-string v2, "Uploading file task is canceled."

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method
