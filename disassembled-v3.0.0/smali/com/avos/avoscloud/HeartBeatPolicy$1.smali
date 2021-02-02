.class Lcom/avos/avoscloud/HeartBeatPolicy$1;
.super Ljava/lang/Object;
.source "HeartBeatPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/HeartBeatPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/HeartBeatPolicy;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/HeartBeatPolicy;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/avos/avoscloud/HeartBeatPolicy$1;->this$0:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/avos/avoscloud/HeartBeatPolicy$1;->this$0:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-static {v2}, Lcom/avos/avoscloud/HeartBeatPolicy;->access$000(Lcom/avos/avoscloud/HeartBeatPolicy;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy$1;->this$0:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {v0}, Lcom/avos/avoscloud/HeartBeatPolicy;->onTimeOut()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/HeartBeatPolicy$1;->this$0:Lcom/avos/avoscloud/HeartBeatPolicy;

    invoke-virtual {v0}, Lcom/avos/avoscloud/HeartBeatPolicy;->sendPing()V

    :goto_0
    return-void
.end method
