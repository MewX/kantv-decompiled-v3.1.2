.class public Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/upload/FileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ProgressCalculator"
.end annotation


# instance fields
.field blockProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;

.field fileBlockCount:I


# direct methods
.method public constructor <init>(ILcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->fileBlockCount:I

    .line 185
    iput-object p2, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;

    .line 186
    iput p1, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->fileBlockCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized publishProgress(II)V
    .locals 1

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->blockProgress:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->callback:Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;

    mul-int/lit8 p2, p2, 0x50

    iget v0, p0, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->fileBlockCount:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0xa

    invoke-interface {p1, p2}, Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;->onProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
