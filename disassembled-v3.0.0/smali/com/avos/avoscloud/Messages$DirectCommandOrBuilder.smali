.class public interface abstract Lcom/avos/avoscloud/Messages$DirectCommandOrBuilder;
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
    name = "DirectCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getBinaryMsg()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getConvType()I
.end method

.method public abstract getDt()Ljava/lang/String;
.end method

.method public abstract getDtBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFromPeerId()Ljava/lang/String;
.end method

.method public abstract getFromPeerIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHasMore()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMentionAll()Z
.end method

.method public abstract getMentionPids(I)Ljava/lang/String;
.end method

.method public abstract getMentionPidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMentionPidsCount()I
.end method

.method public abstract getMentionPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMsg()Ljava/lang/String;
.end method

.method public abstract getMsgBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOffline()Z
.end method

.method public abstract getPatchTimestamp()J
.end method

.method public abstract getPushData()Ljava/lang/String;
.end method

.method public abstract getPushDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getR()Z
.end method

.method public abstract getRoomId()Ljava/lang/String;
.end method

.method public abstract getRoomIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getToPeerIds(I)Ljava/lang/String;
.end method

.method public abstract getToPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToPeerIdsCount()I
.end method

.method public abstract getToPeerIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransient()Z
.end method

.method public abstract getUid()Ljava/lang/String;
.end method

.method public abstract getUidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWill()Z
.end method

.method public abstract hasBinaryMsg()Z
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasConvType()Z
.end method

.method public abstract hasDt()Z
.end method

.method public abstract hasFromPeerId()Z
.end method

.method public abstract hasHasMore()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasMentionAll()Z
.end method

.method public abstract hasMsg()Z
.end method

.method public abstract hasOffline()Z
.end method

.method public abstract hasPatchTimestamp()Z
.end method

.method public abstract hasPushData()Z
.end method

.method public abstract hasR()Z
.end method

.method public abstract hasRoomId()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasTransient()Z
.end method

.method public abstract hasUid()Z
.end method

.method public abstract hasWill()Z
.end method
