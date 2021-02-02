.class public Lcom/avos/avospush/session/StaleMessageDepot;
.super Ljava/lang/Object;
.source "StaleMessageDepot.java"


# static fields
.field private static final MAXLENGTH:I = 0x32


# instance fields
.field messageDepot:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized putStableMessage(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20
    monitor-exit p0

    return v1

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/MessageQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v2, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v2, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {p1}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result p1

    const/16 v2, 0x32

    if-le p1, v2, :cond_1

    .line 26
    iget-object p1, p0, Lcom/avos/avospush/session/StaleMessageDepot;->messageDepot:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {p1}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    xor-int/lit8 p1, v0, 0x1

    .line 29
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
