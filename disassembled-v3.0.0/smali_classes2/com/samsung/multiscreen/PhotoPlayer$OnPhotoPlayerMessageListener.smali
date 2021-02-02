.class Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;
.super Ljava/lang/Object;
.source "PhotoPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Channel$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPhotoPlayerMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/PhotoPlayer;


# direct methods
.method private constructor <init>(Lcom/samsung/multiscreen/PhotoPlayer;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/multiscreen/PhotoPlayer;Lcom/samsung/multiscreen/PhotoPlayer$1;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/PhotoPlayer;)V

    return-void
.end method

.method private handlePlayerControlResponse(Ljava/lang/String;)V
    .locals 2

    .line 497
    :try_start_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onPlay()V

    goto/16 :goto_0

    .line 499
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onPause()V

    goto :goto_0

    .line 501
    :cond_1
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onStop()V

    goto :goto_0

    .line 503
    :cond_2
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onNext()V

    goto :goto_0

    .line 505
    :cond_3
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 506
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onPrevious()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 509
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing control response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private handlePlayerQueueEventResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "data"

    const-string v1, "PhotoPlayer"

    const-string v2, "subEvent"

    .line 515
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 522
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Sub-Event key missing from message."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 526
    :cond_1
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onAddToList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 528
    :cond_2
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onRemoveFromList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 530
    :cond_3
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onClearList()V

    goto :goto_0

    .line 532
    :cond_4
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 533
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 534
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onGetList(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 537
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing list Event response : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public onMessage(Lcom/samsung/multiscreen/Message;)V
    .locals 7

    const-string v0, "error"

    const-string v1, "currentPlaying"

    const-string v2, "queue"

    const-string v3, "subEvent"

    .line 387
    iget-object v4, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result v4

    const-string v5, "PhotoPlayer"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessage : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    iget-object v4, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {v4}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object v4

    if-nez v4, :cond_2

    .line 390
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unregistered PlayerListener."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 395
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v4

    const-string v6, "playerNotice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 396
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "In-Valid Player Message"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 403
    :cond_4
    :try_start_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v4, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_6

    .line 406
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "NULL Response - Unable to parse JSON string."

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 415
    :cond_6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "playerType"

    if-eqz v4, :cond_9

    .line 416
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "playerReady"

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 419
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/PhotoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    .line 420
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/PhotoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/PhotoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    sget-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v0, "playerContentChange"

    iget-object v1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    iget-object v1, v1, Lcom/samsung/multiscreen/PhotoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    :cond_7
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onPlayerInitialized()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "playerChange"

    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 435
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onPlayerChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_9
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "state"

    if-eqz v3, :cond_d

    .line 438
    :try_start_2
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    sget-object v6, Lcom/samsung/multiscreen/Player$ContentType;->photo:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v6}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 441
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 442
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->handlePlayerControlResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_a
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 444
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->handlePlayerQueueEventResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 446
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 448
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 450
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    new-instance v1, Lcom/samsung/multiscreen/ErrorCode;

    invoke-direct {v1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(I)V

    .line 452
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 454
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    goto/16 :goto_0

    .line 459
    :cond_d
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 460
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 461
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 462
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 464
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 465
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 466
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 468
    :cond_e
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 469
    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 471
    :cond_f
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onControlStatus(ILjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 472
    :cond_10
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 473
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onMute()V

    goto/16 :goto_0

    .line 474
    :cond_11
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 475
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onUnMute()V

    goto/16 :goto_0

    .line 476
    :cond_12
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ":"

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 480
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onVolumeChange(I)V

    goto :goto_0

    :cond_13
    const-string v0, "appStatus"

    .line 482
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 483
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 484
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->suspend:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 485
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onApplicationSuspend()V

    goto :goto_0

    .line 486
    :cond_14
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->resume:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 487
    iget-object p1, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/PhotoPlayer;->access$100(Lcom/samsung/multiscreen/PhotoPlayer;)Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;->onApplicationResume()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 491
    iget-object v0, p0, Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_0
    return-void
.end method
