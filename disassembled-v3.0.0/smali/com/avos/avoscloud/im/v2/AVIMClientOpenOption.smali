.class public Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;
.super Ljava/lang/Object;
.source "AVIMClientOpenOption.java"


# instance fields
.field private isForceSingleLogin:Z

.field private isReconnect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isForceSingleLogin:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isReconnect:Z

    return-void
.end method


# virtual methods
.method public isForceSingleLogin()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isForceSingleLogin:Z

    return v0
.end method

.method public isReconnect()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isReconnect:Z

    return v0
.end method

.method public setForceSingleLogin(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isForceSingleLogin:Z

    xor-int/lit8 p1, p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isReconnect:Z

    return-void
.end method

.method public setReconnect(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClientOpenOption;->isReconnect:Z

    return-void
.end method
