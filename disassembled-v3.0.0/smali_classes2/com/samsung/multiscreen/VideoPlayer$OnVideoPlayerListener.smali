.class public interface abstract Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoPlayerListener"
.end annotation


# virtual methods
.method public abstract onAddToList(Lorg/json/JSONObject;)V
.end method

.method public abstract onApplicationResume()V
.end method

.method public abstract onApplicationSuspend()V
.end method

.method public abstract onBufferingComplete()V
.end method

.method public abstract onBufferingProgress(I)V
.end method

.method public abstract onBufferingStart()V
.end method

.method public abstract onClearList()V
.end method

.method public abstract onControlStatus(ILjava/lang/Boolean;Lcom/samsung/multiscreen/Player$RepeatMode;)V
.end method

.method public abstract onCurrentPlayTime(I)V
.end method

.method public abstract onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/samsung/multiscreen/Error;)V
.end method

.method public abstract onForward()V
.end method

.method public abstract onGetList(Lorg/json/JSONArray;)V
.end method

.method public abstract onMute()V
.end method

.method public abstract onNext()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayerChange(Ljava/lang/String;)V
.end method

.method public abstract onPlayerInitialized()V
.end method

.method public abstract onPrevious()V
.end method

.method public abstract onRemoveFromList(Lorg/json/JSONObject;)V
.end method

.method public abstract onRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V
.end method

.method public abstract onRewind()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onStreamCompleted()V
.end method

.method public abstract onStreamingStarted(I)V
.end method

.method public abstract onUnMute()V
.end method

.method public abstract onVolumeChange(I)V
.end method
