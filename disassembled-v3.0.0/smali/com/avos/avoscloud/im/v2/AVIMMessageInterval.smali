.class public Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;
.super Ljava/lang/Object;
.source "AVIMMessageInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;
    }
.end annotation


# instance fields
.field public endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

.field public startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    .line 43
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    return-void
.end method

.method public static createBound(Ljava/lang/String;JZ)Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;
    .locals 7

    .line 33
    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;-><init>(Ljava/lang/String;JZLcom/avos/avoscloud/im/v2/AVIMMessageInterval$1;)V

    return-object v6
.end method
