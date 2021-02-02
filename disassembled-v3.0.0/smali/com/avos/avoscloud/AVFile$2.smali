.class Lcom/avos/avoscloud/AVFile$2;
.super Ljava/lang/Object;
.source "AVFile.java"

# interfaces
.implements Lcom/avos/avoscloud/upload/Uploader$UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/upload/Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFile;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$2;->this$0:Lcom/avos/avoscloud/AVFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedWithResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$2;->this$0:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0, p1, p1, p2}, Lcom/avos/avoscloud/AVFile;->handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
