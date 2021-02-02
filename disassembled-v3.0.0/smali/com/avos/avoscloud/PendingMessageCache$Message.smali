.class public Lcom/avos/avoscloud/PendingMessageCache$Message;
.super Ljava/lang/Object;
.source "PendingMessageCache.java"

# interfaces
.implements Lcom/avos/avospush/session/MessageQueue$HasId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PendingMessageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field cid:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field requestReceipt:Z

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;
    .locals 1

    .line 78
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    invoke-direct {v0}, Lcom/avos/avoscloud/PendingMessageCache$Message;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PendingMessageCache$Message;->setId(Ljava/lang/String;)V

    .line 81
    iput-boolean p2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    .line 82
    iput-object p3, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    return-void
.end method
