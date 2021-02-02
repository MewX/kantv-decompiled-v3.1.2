.class public Lcom/samsung/multiscreen/VideoPlayer;
.super Lcom/samsung/multiscreen/Player;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;,
        Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;,
        Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;,
        Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayer"

.field private static final VIDEO_PLAYER_CONTROL_RESPONSE:Ljava/lang/String; = "state"

.field private static final VIDEO_PLAYER_INTERNAL_RESPONSE:Ljava/lang/String; = "Video State"

.field private static final VIDEO_PLAYER_QUEUE_EVENT_RESPONSE:Ljava/lang/String; = "queue"


# instance fields
.field private mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Player;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer;->mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/multiscreen/VideoPlayer;->mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    return-object p0
.end method


# virtual methods
.method public addOnMessageListener(Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;)V
    .locals 2

    .line 441
    iput-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer;->mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    .line 442
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/VideoPlayer;Lcom/samsung/multiscreen/VideoPlayer$1;)V

    const-string v1, "playerNotice"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->addOnMessageListener(Ljava/lang/String;Lcom/samsung/multiscreen/Channel$OnMessageListener;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/multiscreen/VideoPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->title:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->thumbnailUrl:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer;->addToList(Ljava/util/List;)V

    return-void
.end method

.method public addToList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 263
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Lcom/samsung/multiscreen/VideoPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$1;-><init>(Lcom/samsung/multiscreen/VideoPlayer;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/VideoPlayer;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer;->mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    if-eqz p1, :cond_2

    .line 368
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string v0, "PLAYER_ERROR_PLAYER_NOT_LOADED"

    invoke-direct {p1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer;->mVideoPlayerListener:Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_2
    :goto_0
    return-void

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "VideoPlayer"

    const-string v0, "enQueue(): videoList is NULL."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public clearList()V
    .locals 4

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 202
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 203
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearQueue(): Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v2, "playerQueueEvent"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public forward()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer"

    const-string v1, "Send Forward"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->FF:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getList()V
    .locals 4

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 188
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 189
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchQueue(): Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v2, "playerQueueEvent"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playContent(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/samsung/multiscreen/VideoPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public playContent(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "VideoPlayer"

    if-eqz p1, :cond_1

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "uri"

    .line 91
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 99
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->title:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_5

    .line 102
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->thumbnailUrl:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_INVALID_URI"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "There\'s no media url to launch!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p4, :cond_3

    .line 95
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v2, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    nop

    .line 105
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_UNKNOWN"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unable to create JSONObject!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p4, :cond_5

    .line 107
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v1, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    .line 109
    :cond_5
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-super {p0, v0, p1, p4}, Lcom/samsung/multiscreen/Player;->playContent(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Player$ContentType;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public removeFromList(Landroid/net/Uri;)V
    .locals 3

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 218
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 219
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri"

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deQueue(): Error in parsing JSON object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v1, "playerQueueEvent"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public repeat()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer"

    const-string v1, "Send repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public rewind()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer"

    const-string v1, "Send Rewind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->RWD:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(ILjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 138
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 139
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send SeekTo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->seekTo:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "playerControl"

    invoke-virtual {v0, p2, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayer"

    const-string v1, "Send setRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setRepeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playerControl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
