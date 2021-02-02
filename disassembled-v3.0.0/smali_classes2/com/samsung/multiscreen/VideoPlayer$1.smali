.class Lcom/samsung/multiscreen/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/VideoPlayer;->addToList(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/VideoPlayer;

.field final synthetic val$videoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/VideoPlayer;Ljava/util/List;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    iput-object p2, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->val$videoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

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

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V
    .locals 8

    const-string v0, "VideoPlayer"

    if-nez p1, :cond_0

    const-string p1, "Error : Something went wrong with Node server!"

    .line 276
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_0
    iget-object v1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->val$videoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 290
    iget-object v1, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->val$videoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "uri"

    .line 292
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 293
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 300
    sget-object v4, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->title:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 301
    sget-object v4, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->title:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 304
    :goto_1
    sget-object v6, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->thumbnailUrl:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    sget-object v5, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->thumbnailUrl:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 308
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "subEvent"

    .line 310
    sget-object v7, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "playerType"

    .line 311
    sget-object v7, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    sget-object v2, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->title:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 315
    sget-object v2, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->thumbnailUrl:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerAttributes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 317
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

    .line 319
    :cond_3
    :goto_2
    sget-object v2, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v3, "playerQueueEvent"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 295
    :cond_4
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "enQueue(): ContentUrl can not be Optional."

    .line 296
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 322
    :cond_6
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$1;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "enQueue() Error: DMP Un-Initialized!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Lcom/samsung/multiscreen/Player$DMPStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$1;->onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V

    return-void
.end method
