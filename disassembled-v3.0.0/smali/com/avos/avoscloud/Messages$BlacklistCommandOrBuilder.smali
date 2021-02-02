.class public interface abstract Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;
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
    name = "BlacklistCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getAllowedPids(I)Ljava/lang/String;
.end method

.method public abstract getAllowedPidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAllowedPidsCount()I
.end method

.method public abstract getAllowedPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlockedCids(I)Ljava/lang/String;
.end method

.method public abstract getBlockedCidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBlockedCidsCount()I
.end method

.method public abstract getBlockedCidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlockedPids(I)Ljava/lang/String;
.end method

.method public abstract getBlockedPidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBlockedPidsCount()I
.end method

.method public abstract getBlockedPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;
.end method

.method public abstract getFailedPidsCount()I
.end method

.method public abstract getFailedPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFailedPidsOrBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
.end method

.method public abstract getFailedPidsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLimit()I
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getNBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNext()Ljava/lang/String;
.end method

.method public abstract getNextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getS()Ljava/lang/String;
.end method

.method public abstract getSBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSrcCid()Ljava/lang/String;
.end method

.method public abstract getSrcCidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSrcPid()Ljava/lang/String;
.end method

.method public abstract getSrcPidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getT()J
.end method

.method public abstract getToCids(I)Ljava/lang/String;
.end method

.method public abstract getToCidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToCidsCount()I
.end method

.method public abstract getToCidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToPids(I)Ljava/lang/String;
.end method

.method public abstract getToPidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToPidsCount()I
.end method

.method public abstract getToPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasN()Z
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasS()Z
.end method

.method public abstract hasSrcCid()Z
.end method

.method public abstract hasSrcPid()Z
.end method

.method public abstract hasT()Z
.end method
