.class Lcom/avos/avoscloud/upload/QCloudUploader$1;
.super Ljava/lang/Object;
.source "QCloudUploader.java"

# interfaces
.implements Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/upload/QCloudUploader;->doWork()Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/upload/QCloudUploader;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/upload/QCloudUploader;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/avos/avoscloud/upload/QCloudUploader$1;->this$0:Lcom/avos/avoscloud/upload/QCloudUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QCloudUploader$1;->this$0:Lcom/avos/avoscloud/upload/QCloudUploader;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/upload/QCloudUploader;->publishProgress(I)V

    return-void
.end method
