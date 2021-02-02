.class public Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;
.super Ljava/lang/Object;
.source "AVIMMessageInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVIMMessageIntervalBound"
.end annotation


# instance fields
.field public closed:Z

.field public messageId:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->messageId:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->timestamp:J

    .line 19
    iput-boolean p4, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->closed:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JZLcom/avos/avoscloud/im/v2/AVIMMessageInterval$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method
