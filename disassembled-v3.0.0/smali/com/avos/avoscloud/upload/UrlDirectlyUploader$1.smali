.class Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "UrlDirectlyUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

.field final synthetic val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/upload/UrlDirectlyUploader;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    iput-object p2, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 39
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    invoke-static {p1}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->access$000(Lcom/avos/avoscloud/upload/UrlDirectlyUploader;)Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    invoke-static {p1}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->access$000(Lcom/avos/avoscloud/upload/UrlDirectlyUploader;)Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    move-result-object p1

    const-string v1, "objectId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    iget-object v1, v1, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/avos/avoscloud/upload/Uploader$UploadCallback;->finishedWithResults(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->this$0:Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->publishProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    iget-object p2, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    aput-object v1, p2, v0

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;->val$exceptionSaveFile:[Lcom/avos/avoscloud/AVException;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    aput-object p1, v1, v0

    :goto_0
    return-void
.end method
