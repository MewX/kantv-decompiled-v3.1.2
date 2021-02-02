.class public interface abstract Lcom/avos/avoscloud/AVPushWebSocketClient$AVPacketParser;
.super Ljava/lang/Object;
.source "AVPushWebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AVPacketParser"
.end annotation


# virtual methods
.method public abstract loginCmd()V
.end method

.method public abstract processCommand(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract processConnectionStatus(Lcom/avos/avoscloud/AVException;)V
.end method

.method public abstract processRemoteServerNotAvailable()V
.end method

.method public abstract processSessionsStatus(Z)V
.end method
