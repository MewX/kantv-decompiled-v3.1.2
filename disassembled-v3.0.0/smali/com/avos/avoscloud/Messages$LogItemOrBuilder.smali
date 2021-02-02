.class public interface abstract Lcom/avos/avoscloud/Messages$LogItemOrBuilder;
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
    name = "LogItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getAckAt()J
.end method

.method public abstract getBin()Z
.end method

.method public abstract getConvType()I
.end method

.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getFromBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract getMsgId()Ljava/lang/String;
.end method

.method public abstract getMsgIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPatchTimestamp()J
.end method

.method public abstract getReadAt()J
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasAckAt()Z
.end method

.method public abstract hasBin()Z
.end method

.method public abstract hasConvType()Z
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasFrom()Z
.end method

.method public abstract hasMentionAll()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasPatchTimestamp()Z
.end method

.method public abstract hasReadAt()Z
.end method

.method public abstract hasTimestamp()Z
.end method
