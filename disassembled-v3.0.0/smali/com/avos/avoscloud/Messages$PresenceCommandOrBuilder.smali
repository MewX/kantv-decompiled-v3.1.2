.class public interface abstract Lcom/avos/avoscloud/Messages$PresenceCommandOrBuilder;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresenceCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionPeerIds(I)Ljava/lang/String;
.end method

.method public abstract getSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSessionPeerIdsCount()I
.end method

.method public abstract getSessionPeerIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/avos/avoscloud/Messages$StatusType;
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasStatus()Z
.end method
