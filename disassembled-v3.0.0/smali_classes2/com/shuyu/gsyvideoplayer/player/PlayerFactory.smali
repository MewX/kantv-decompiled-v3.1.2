.class public Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;
.super Ljava/lang/Object;
.source "PlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayManager(I)Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 19
    new-instance p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;-><init>()V

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;-><init>()V

    return-object p0
.end method
