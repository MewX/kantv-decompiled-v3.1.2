.class Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/samsung/multiscreen/Channel$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAudioPlayerMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/samsung/multiscreen/AudioPlayer;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/multiscreen/AudioPlayer;Lcom/samsung/multiscreen/AudioPlayer$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;-><init>(Lcom/samsung/multiscreen/AudioPlayer;)V

    return-void
.end method

.method private handlePlayerControlResponse(Ljava/lang/String;)V
    .locals 2

    .line 658
    :try_start_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->play:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onPlay()V

    goto/16 :goto_0

    .line 660
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->pause:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onPause()V

    goto/16 :goto_0

    .line 662
    :cond_1
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->stop:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onStop()V

    goto/16 :goto_0

    .line 664
    :cond_2
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->next:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onNext()V

    goto/16 :goto_0

    .line 666
    :cond_3
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->previous:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onPrevious()V

    goto/16 :goto_0

    .line 668
    :cond_4
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 669
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto/16 :goto_0

    .line 671
    :cond_5
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 672
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto :goto_0

    .line 673
    :cond_6
    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 674
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto :goto_0

    .line 676
    :cond_7
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "true"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 678
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onShuffle(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 681
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while parsing control response : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method private handlePlayerInternalResponse(Ljava/lang/String;)V
    .locals 2

    .line 689
    :try_start_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingstart:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onBufferingStart()V

    goto/16 :goto_0

    .line 691
    :cond_0
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingcomplete:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onBufferingComplete()V

    goto/16 :goto_0

    .line 693
    :cond_1
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->bufferingprogress:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ":"

    if-eqz v0, :cond_2

    .line 694
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 696
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onBufferingProgress(I)V

    goto/16 :goto_0

    .line 697
    :cond_2
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->currentplaytime:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 698
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 699
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 700
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onCurrentPlayTime(I)V

    goto :goto_0

    .line 701
    :cond_3
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->streamcompleted:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onStreamCompleted()V

    goto :goto_0

    .line 703
    :cond_4
    sget-object v0, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->totalduration:Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer$AudioPlayerInternalEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 705
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 706
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onStreamingStarted(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 709
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

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

    const-string v0, "AudioPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private handlePlayerQueueEventResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "data"

    const-string v1, "AudioPlayer"

    const-string v2, "subEvent"

    .line 715
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Sub-Event key missing from message."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 726
    :cond_1
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->enqueue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 727
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onAddToList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 728
    :cond_2
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->dequeue:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 729
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onRemoveFromList(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 730
    :cond_3
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->clear:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 731
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onClearList()V

    goto :goto_0

    .line 732
    :cond_4
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->fetch:Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerQueueSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 733
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 734
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onGetList(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 737
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

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

    const-string v3, "Audio State"

    const-string v4, "subEvent"

    .line 531
    iget-object v5, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v5

    const-string v6, "AudioPlayer"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget-object v5, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v5}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v5

    if-nez v5, :cond_2

    .line 534
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unregistered PlayerListener."

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 539
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Message;->getEvent()Ljava/lang/String;

    move-result-object v5

    const-string v7, "playerNotice"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 540
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "In-Valid Player Message"

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 547
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

    .line 550
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "NULL Response - Unable to parse JSON string."

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .line 559
    :cond_6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "playerType"

    if-eqz v5, :cond_9

    .line 560
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "playerReady"

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 563
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/AudioPlayer;->mAdditionalData:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    .line 564
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/AudioPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    iget-object p1, p1, Lcom/samsung/multiscreen/AudioPlayer;->mAdditionalData:Lorg/json/JSONObject;

    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->ADDITIONALMEDIAINFO:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    sget-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    const-string v0, "playerContentChange"

    iget-object v1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    iget-object v1, v1, Lcom/samsung/multiscreen/AudioPlayer;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    :cond_7
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onPlayerInitialized()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "playerChange"

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 579
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    sget-object v0, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onPlayerChange(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_9
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "state"

    if-eqz v4, :cond_e

    .line 582
    :try_start_2
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    sget-object v7, Lcom/samsung/multiscreen/Player$ContentType;->audio:Lcom/samsung/multiscreen/Player$ContentType;

    invoke-virtual {v7}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 585
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 586
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->handlePlayerControlResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    :cond_a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 588
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->handlePlayerInternalResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 589
    :cond_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 590
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->handlePlayerQueueEventResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 592
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1, v4}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 593
    :cond_d
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 594
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 596
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 597
    new-instance v1, Lcom/samsung/multiscreen/ErrorCode;

    invoke-direct {v1, v0}, Lcom/samsung/multiscreen/ErrorCode;-><init>(I)V

    .line 598
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

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

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 600
    :catch_0
    :try_start_4
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onError(Lcom/samsung/multiscreen/Error;)V

    goto/16 :goto_1

    .line 605
    :cond_e
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 606
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 607
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getControlStatus:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 608
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 610
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 611
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    .line 612
    sget-object v4, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 613
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->volume:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 615
    :cond_f
    sget-object v4, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 616
    sget-object v1, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->mute:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 618
    :cond_10
    sget-object v4, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 619
    sget-object v3, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->repeat:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v3}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 621
    sget-object v5, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 622
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatAll:Lcom/samsung/multiscreen/Player$RepeatMode;

    goto :goto_0

    .line 623
    :cond_11
    sget-object v5, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 624
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatSingle:Lcom/samsung/multiscreen/Player$RepeatMode;

    goto :goto_0

    .line 625
    :cond_12
    sget-object v5, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    invoke-virtual {v5}, Lcom/samsung/multiscreen/Player$RepeatMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 626
    sget-object v3, Lcom/samsung/multiscreen/Player$RepeatMode;->repeatOff:Lcom/samsung/multiscreen/Player$RepeatMode;

    goto :goto_0

    :cond_13
    move-object v3, v4

    .line 629
    :cond_14
    :goto_0
    sget-object v4, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v4}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 630
    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->shuffle:Lcom/samsung/multiscreen/Player$PlayerControlStatus;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerControlStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 632
    :cond_15
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onControlStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto/16 :goto_1

    .line 633
    :cond_16
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->mute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 634
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onMute()V

    goto/16 :goto_1

    .line 635
    :cond_17
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->unMute:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 636
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onUnMute()V

    goto/16 :goto_1

    .line 637
    :cond_18
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->getVolume:Lcom/samsung/multiscreen/Player$PlayerControlEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerControlEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ":"

    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 641
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {v0}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onVolumeChange(I)V

    goto :goto_1

    :cond_19
    const-string v0, "appStatus"

    .line 643
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 644
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->suspend:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 646
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onApplicationSuspend()V

    goto :goto_1

    .line 647
    :cond_1a
    sget-object v0, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->resume:Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player$PlayerApplicationStatusEvents;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 648
    iget-object p1, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Lcom/samsung/multiscreen/AudioPlayer;->access$100(Lcom/samsung/multiscreen/AudioPlayer;)Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;->onApplicationResume()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 652
    iget-object v0, p0, Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerMessageListener;->this$0:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1b

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

    :cond_1b
    :goto_1
    return-void
.end method
