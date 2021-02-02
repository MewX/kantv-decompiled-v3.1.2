.class public interface abstract Lcom/kantv/ui/androidupnpdemo/control/IPlayControl;
.super Ljava/lang/Object;
.source "IPlayControl.java"


# virtual methods
.method public abstract getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
    .param p1    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getVolume(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V
    .param p1    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract pause(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p1    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p1    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract seek(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMute(ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVolume(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p2    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V
    .param p1    # Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
