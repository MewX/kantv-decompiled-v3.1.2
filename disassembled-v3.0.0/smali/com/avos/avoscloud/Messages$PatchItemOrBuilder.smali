.class public interface abstract Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;
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
    name = "PatchItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getBinaryMsg()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCidBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract getMid()Ljava/lang/String;
.end method

.method public abstract getMidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPatchTimestamp()J
.end method

.method public abstract getRecall()Z
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasBinaryMsg()Z
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasFrom()Z
.end method

.method public abstract hasMentionAll()Z
.end method

.method public abstract hasMid()Z
.end method

.method public abstract hasPatchTimestamp()Z
.end method

.method public abstract hasRecall()Z
.end method

.method public abstract hasTimestamp()Z
.end method
