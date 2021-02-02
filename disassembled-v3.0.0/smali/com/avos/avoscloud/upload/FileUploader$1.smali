.class Lcom/avos/avoscloud/upload/FileUploader$1;
.super Lcom/avos/avoscloud/AVCallback;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/upload/FileUploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/upload/FileUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/upload/FileUploader;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader$1;->this$0:Lcom/avos/avoscloud/upload/FileUploader;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/upload/FileUploader$1;->internalDone0(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected internalDone0(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    if-nez p2, :cond_0

    .line 55
    iget-object p2, p0, Lcom/avos/avoscloud/upload/FileUploader$1;->this$0:Lcom/avos/avoscloud/upload/FileUploader;

    invoke-static {p2, p1}, Lcom/avos/avoscloud/upload/FileUploader;->access$000(Lcom/avos/avoscloud/upload/FileUploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "failed to parse response of fileTokens."

    .line 57
    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string p1, "failed to invoke fileTokens."

    .line 60
    invoke-static {p1, p2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
