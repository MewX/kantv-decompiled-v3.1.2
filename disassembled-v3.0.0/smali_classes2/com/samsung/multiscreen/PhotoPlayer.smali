.class public Lcom/samsung/multiscreen/PhotoPlayer;
.super Lcom/samsung/multiscreen/Player;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;,
        Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;,
        Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;
    }
.end annotation


# static fields
.field private static final PHOTO_PLAYER_CONTROL_RESPONSE:Ljava/lang/String; = "state"

.field private static final PHOTO_PLAYER_QUEUE_EVENT_RESPONSE:Ljava/lang/String; = "queue"

.field private static final TAG:Ljava/lang/String; = "PhotoPlayer"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Player;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    .line 50
    iput-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    return-object p0
.end method


# virtual methods
.method public addOnMessageListener(Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;)V
    .locals 2

    .line 376
    iput-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    .line 377
    sget-object p1, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/PhotoPlayer;Lcom/samsung/multiscreen/PhotoPlayer$1;)V

    const-string v1, "playerNotice"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->addOnMessageListener(Ljava/lang/String;Lcom/samsung/multiscreen/Channel$OnMessageListener;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/samsung/multiscreen/PhotoPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object p1, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer;->addToList(Ljava/util/List;)V

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

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/PhotoPlayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Lcom/samsung/multiscreen/PhotoPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$1;-><init>(Lcom/samsung/multiscreen/PhotoPlayer;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/PhotoPlayer;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    if-eqz p1, :cond_2

    .line 310
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string v0, "PLAYER_ERROR_PLAYER_NOT_LOADED"

    invoke-direct {p1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer;->mPhotoPlayerListener:Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_2
    :goto_0
    return-void

    .line 218
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "PhotoPlayer"

    const-string v0, "enQueue(): photoList is NULL."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public clearList()V
    .locals 4

    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 158
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 159
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v2, "playerQueueEvent"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getList()V
    .locals 4

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 144
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 145
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

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

    .line 60
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/multiscreen/PhotoPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public playContent(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "PhotoPlayer"

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uri"

    .line 77
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    .line 85
    sget-object p1, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->title:Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer$PhotoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_INVALID_URI"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "There\'s no media url to launch!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p2, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    nop

    .line 88
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_UNKNOWN"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Unable to create JSONObject!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p3, :cond_4

    .line 90
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p2, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    .line 92
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-super {p0, v0, p1, p3}, Lcom/samsung/multiscreen/Player;->playContent(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Player$ContentType;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public removeFromList(Landroid/net/Uri;)V
    .locals 3

    .line 172
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 174
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 175
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri"

    .line 176
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in parsing JSON object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PhotoPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v1, "playerQueueEvent"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBackgroundMusic(Landroid/net/Uri;)V
    .locals 3

    .line 111
    sget-object v0, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->playMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playerControl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 3

    .line 118
    sget-object v0, Lcom/samsung/multiscreen/PhotoPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stopMusic:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
