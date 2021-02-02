.class Lcom/avos/avoscloud/upload/FileUploader$2;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/upload/FileUploader;->fetchUploadBucket(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVCallback;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/upload/FileUploader;

.field final synthetic val$callback:Lcom/avos/avoscloud/AVCallback;

.field final synthetic val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/upload/FileUploader;Lcom/avos/avoscloud/AVCallback;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->this$0:Lcom/avos/avoscloud/upload/FileUploader;

    iput-object p2, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    iput-object p3, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 117
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader$2;->val$exceptionWhenGetBucket:[Lcom/avos/avoscloud/AVException;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method
