.class public interface abstract Lcom/avos/avoscloud/Messages$RoomCommandOrBuilder;
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
    name = "RoomCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getByPeerId()Ljava/lang/String;
.end method

.method public abstract getByPeerIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getNBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRoomId()Ljava/lang/String;
.end method

.method public abstract getRoomIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRoomPeerIds(I)Ljava/lang/String;
.end method

.method public abstract getRoomPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRoomPeerIdsCount()I
.end method

.method public abstract getRoomPeerIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getS()Ljava/lang/String;
.end method

.method public abstract getSBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getT()J
.end method

.method public abstract getTransient()Z
.end method

.method public abstract hasByPeerId()Z
.end method

.method public abstract hasN()Z
.end method

.method public abstract hasRoomId()Z
.end method

.method public abstract hasS()Z
.end method

.method public abstract hasT()Z
.end method

.method public abstract hasTransient()Z
.end method
