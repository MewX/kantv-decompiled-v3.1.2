.class public final Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
.super Ljava/lang/Object;
.source "ChunkOperationHolder.java"


# instance fields
.field public chunk:Lcom/google/android/exoplayer/chunk/Chunk;

.field public endOfStream:Z

.field public queueSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 50
    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    return-void
.end method
