.class Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;
.super Ljava/lang/Object;
.source "QiniuAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/upload/QiniuAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QiniuBlockResponseData"
.end annotation


# instance fields
.field public checksum:Ljava/lang/String;

.field public crc32:J

.field public ctx:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public offset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
