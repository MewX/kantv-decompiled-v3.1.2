.class Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Channel$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVideoPlayerMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/VideoPlayer;


# direct methods
.method private constructor <init>(Lcom/samsung/multiscreen/VideoPlayer;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/multiscreen/VideoPlayer;Lcom/samsung/multiscreen/VideoPlayer$1;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/VideoPlayer;)V

    return-void
.end method

.method private handlePlayerControlResponse(Ljava/lang/String;)V
    .locals 2

    .line 581
    :try_start_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onPlay()V

    goto/16 :goto_0

    .line 583
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onPause()V

    goto/16 :goto_0

    .line 585
    :cond_1
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onStop()V

    goto/16 :goto_0

    .line 587
    :cond_2
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onNext()V

    goto/16 :goto_0

    .line 589
    :cond_3
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 590
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onPrevious()V

    goto/16 :goto_0

    .line 591
    :cond_4
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->FF:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 592
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onForward()V

    goto/16 :goto_0

    .line 593
    :cond_5
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->RWD:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onRewind()V

    goto/16 :goto_0

    .line 595
    :cond_6
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 596
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 597
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto :goto_0

    .line 598
    :cond_7
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 599
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto :goto_0

    .line 600
    :cond_8
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 601
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 608
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing control response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method

.method private handlePlayerInternalResponse(Ljava/lang/String;)V
    .locals 2

    .line 616
    :try_start_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->bufferingstart:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onBufferingStart()V

    goto/16 :goto_0

    .line 618
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->bufferingcomplete:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onBufferingComplete()V

    goto/16 :goto_0

    .line 620
    :cond_1
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->bufferingprogress:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ":"

    if-eqz v0, :cond_2

    .line 621
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 623
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onBufferingProgress(I)V

    goto/16 :goto_0

    .line 624
    :cond_2
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->currentplaytime:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 627
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onCurrentPlayTime(I)V

    goto :goto_0

    .line 628
    :cond_3
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->streamcompleted:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onStreamCompleted()V

    goto :goto_0

    .line 630
    :cond_4
    sget-object v0, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->totalduration:Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer$VideoPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 631
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 633
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onStreamingStarted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 636
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing Internal Event response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private handlePlayerQueueEventResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "data"

    const-string v1, "VideoPlayer"

    const-string v2, "subEvent"

    .line 642
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Sub-Event key missing from message."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 653
    :cond_1
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onAddToList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 655
    :cond_2
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 656
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onRemoveFromList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 657
    :cond_3
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 658
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onClearList()V

    goto :goto_0

    .line 659
    :cond_4
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 660
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 661
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onGetList(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 664
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

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
    .locals 8

    const-string v0, "error"

    const-string v1, "currentPlaying"

    const-string v2, "queue"

    const-string v3, "Video State"

    const-string v4, "subEvent"

    .line 452
    iget-object v5, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v5

    const-string v6, "VideoPlayer"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-object v5, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v5}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v5

    if-nez v5, :cond_2

    .line 455
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unregistered PlayerListener."

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 460
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v5

    const-string v7, "playerNotice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 461
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "In-Valid Player Message"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 468
    :cond_4
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v5, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_6

    .line 471
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "NULL Response - Unable to parse JSON string."

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 480
    :cond_6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "playerType"

    if-eqz v5, :cond_9

    .line 481
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "playerReady"

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 484
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/VideoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    .line 485
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/VideoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/VideoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    sget-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v0, "playerContentChange"

    iget-object v1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    iget-object v1, v1, Lcom/samsung/multiscreen/VideoPlayer;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    :cond_7
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onPlayerInitialized()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "playerChange"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 501
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onPlayerChange(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 503
    :cond_9
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "state"

    if-eqz v4, :cond_e

    .line 504
    :try_start_2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 505
    sget-object v7, Lcom/samsung/multiscreen/Player$ContentType;->video:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 508
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 509
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->handlePlayerControlResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 510
    :cond_a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 511
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->handlePlayerInternalResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 512
    :cond_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 513
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->handlePlayerQueueEventResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 514
    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 515
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 516
    :cond_d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 517
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 519
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 520
    new-instance v1, Lcom/samsung/multiscreen/ErrorCode;

    invoke-direct {v1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

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

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 523
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    goto/16 :goto_1

    .line 528
    :cond_e
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 529
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 531
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 533
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 534
    sget-object v2, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    .line 535
    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 536
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 538
    :cond_f
    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 539
    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 541
    :cond_10
    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 542
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 544
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 545
    sget-object v2, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    goto :goto_0

    .line 546
    :cond_11
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 547
    sget-object v2, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    goto :goto_0

    .line 548
    :cond_12
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 549
    sget-object v2, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    .line 555
    :cond_13
    :goto_0
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onControlStatus(ILjava/lang/Boolean;Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto/16 :goto_1

    .line 556
    :cond_14
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 557
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onMute()V

    goto/16 :goto_1

    .line 558
    :cond_15
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 559
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onUnMute()V

    goto/16 :goto_1

    .line 560
    :cond_16
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, ":"

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 564
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onVolumeChange(I)V

    goto :goto_1

    :cond_17
    const-string v0, "appStatus"

    .line 566
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 567
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->suspend:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 569
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onApplicationSuspend()V

    goto :goto_1

    .line 570
    :cond_18
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->resume:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 571
    iget-object p1, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/VideoPlayer;->access$100(Lcom/samsung/multiscreen/VideoPlayer;)Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;->onApplicationResume()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 575
    iget-object v0, p0, Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_1
    return-void
.end method
