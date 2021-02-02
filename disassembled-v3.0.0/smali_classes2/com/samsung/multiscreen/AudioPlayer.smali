.class public Lcom/samsung/multiscreen/AudioPlayer;
.super Lcom/samsung/multiscreen/Player;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;,
        Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;,
        Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;,
        Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;
    }
.end annotation


# static fields
.field private static final AUDIO_PLAYER_CONTROL_RESPONSE:Ljava/lang/String; = "state"

.field private static final AUDIO_PLAYER_INTERNAL_RESPONSE:Ljava/lang/String; = "Audio State"

.field private static final AUDIO_PLAYER_QUEUE_EVENT_RESPONSE:Ljava/lang/String; = "queue"

.field private static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

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


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/Player;-><init>(Lcom/samsung/multiscreen/Service;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer;->mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    .line 65
    iput-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/multiscreen/AudioPlayer;->mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    return-object p0
.end method


# virtual methods
.method public addOnMessageListener(Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;)V
    .locals 2

    .line 520
    iput-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer;->mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    .line 521
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/AudioPlayer;Lcom/samsung/multiscreen/AudioPlayer$1;)V

    const-string v1, "playerNotice"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->addOnMessageListener(Ljava/lang/String;Lcom/samsung/multiscreen/Channel$OnMessageListener;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/samsung/multiscreen/AudioPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public addToList(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uri"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer;->addToList(Ljava/util/List;)V

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

    .line 315
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Lcom/samsung/multiscreen/AudioPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$1;-><init>(Lcom/samsung/multiscreen/AudioPlayer;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/AudioPlayer;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer;->mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    if-eqz p1, :cond_2

    .line 440
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string v0, "PLAYER_ERROR_PLAYER_NOT_LOADED"

    invoke-direct {p1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer;->mAudioPlayerListener:Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_2
    :goto_0
    return-void

    .line 316
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AudioPlayer"

    const-string v0, "enQueue(): audioList is NULL."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public clearList()V
    .locals 4

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 227
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 228
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearQueue(): Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v2, "playerQueueEvent"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getList()V
    .locals 4

    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 213
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 214
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchQueue(): Error in parsing JSON object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    sget-object v1, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v2, "playerQueueEvent"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playContent(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/multiscreen/AudioPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public playContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/samsung/multiscreen/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "AudioPlayer"

    if-eqz p1, :cond_2

    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "uri"

    .line 126
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 134
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    .line 137
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p4, :cond_6

    .line 140
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 128
    :cond_2
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_INVALID_URI"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "There\'s no media url to launch!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p5, :cond_4

    .line 130
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p4, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    nop

    .line 146
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "PLAYER_ERROR_UNKNOWN"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Unable to create JSONObject!"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p5, :cond_6

    .line 148
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p4, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    .line 150
    :cond_6
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-super {p0, v0, p1, p5}, Lcom/samsung/multiscreen/Player;->playContent(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Player$ContentType;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public removeFromList(Landroid/net/Uri;)V
    .locals 3

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "subEvent"

    .line 243
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 244
    sget-object v2, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri"

    .line 245
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deQueue(): Error in parsing JSON object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioPlayer"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    sget-object p1, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v1, "playerQueueEvent"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public repeat()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioPlayer"

    const-string v1, "Send repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(ILjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 163
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 164
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

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

    const-string v1, "AudioPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

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

    .line 183
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioPlayer"

    const-string v1, "Send setRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

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

.method public setShuffle(Z)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioPlayer"

    const-string v1, "Send setShuffle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->setShuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "playerControl"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public shuffle()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioPlayer"

    const-string v1, "Send shuffle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer;->mApplication:Lcom/samsung/multiscreen/Application;

    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerControl"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
