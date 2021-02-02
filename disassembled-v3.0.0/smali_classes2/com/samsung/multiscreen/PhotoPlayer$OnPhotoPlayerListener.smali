.class public interface abstract Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;
.super Ljava/lang/Object;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPhotoPlayerListener"
.end annotation


# virtual methods
.method public abstract onAddToList(Lorg/json/JSONObject;)V
.end method

.method public abstract onApplicationResume()V
.end method

.method public abstract onApplicationSuspend()V
.end method

.method public abstract onClearList()V
.end method

.method public abstract onControlStatus(ILjava/lang/Boolean;)V
.end method

.method public abstract onCurrentPlaying(Lorg/json/JSONObject;Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/samsung/multiscreen/Error;)V
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

.method public abstract onStop()V
.end method

.method public abstract onUnMute()V
.end method

.method public abstract onVolumeChange(I)V
.end method
