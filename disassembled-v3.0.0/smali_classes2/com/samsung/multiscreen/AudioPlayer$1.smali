.class Lcom/samsung/multiscreen/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/AudioPlayer;->addToList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Player$DMPStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/AudioPlayer;

.field final synthetic val$audioList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/AudioPlayer;Ljava/util/List;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    iput-object p2, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->val$audioList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enQueue() Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V
    .locals 10

    const-string v0, "AudioPlayer"

    if-nez p1, :cond_0

    const-string p1, "Error : Something went wrong with Node server!"

    .line 328
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_0
    iget-object v1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->val$audioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 346
    iget-object v1, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->val$audioList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "uri"

    .line 348
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 349
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 356
    sget-object v4, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 357
    sget-object v4, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 360
    :goto_1
    sget-object v6, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 361
    sget-object v6, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v6, v5

    .line 364
    :goto_2
    sget-object v7, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 365
    sget-object v7, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v5

    .line 368
    :goto_3
    sget-object v8, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v8}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 369
    sget-object v5, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 372
    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "subEvent"

    .line 374
    sget-object v9, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v9}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "playerType"

    .line 375
    sget-object v9, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v9}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    sget-object v2, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->title:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    sget-object v2, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumName:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    sget-object v2, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->endTime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v7, :cond_5

    .line 381
    sget-object v2, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->albumArt:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enQueue(): Error in parsing JSON object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5
    :goto_4
    sget-object v2, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v3, "playerQueueEvent"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 351
    :cond_6
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "enQueue(): ContentUrl can not be Optional."

    .line 352
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 388
    :cond_8
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$1;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "enQueue() Error: DMP Un-Initialized!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Lcom/samsung/multiscreen/Player$DMPStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$1;->onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V

    return-void
.end method
