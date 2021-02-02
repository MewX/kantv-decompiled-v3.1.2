.class public interface abstract Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;
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
    name = "ConvCommandOrBuilder"
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

.method public abstract getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end method

.method public abstract getAttrOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
.end method

.method public abstract getCdate()Ljava/lang/String;
.end method

.method public abstract getCdateBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCids(I)Ljava/lang/String;
.end method

.method public abstract getCidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCidsCount()I
.end method

.method public abstract getCidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
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

.method public abstract getFlag()I
.end method

.method public abstract getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
.end method

.method public abstract getInfoOrBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;
.end method

.method public abstract getInitBy()Ljava/lang/String;
.end method

.method public abstract getInitByBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLimit()I
.end method

.method public abstract getM(I)Ljava/lang/String;
.end method

.method public abstract getMBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMCount()I
.end method

.method public abstract getMList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxAckTimestamp()J
.end method

.method public abstract getMaxReadTimestamp()J
.end method

.method public abstract getMaxReadTuples(I)Lcom/avos/avoscloud/Messages$MaxReadTuple;
.end method

.method public abstract getMaxReadTuplesCount()I
.end method

.method public abstract getMaxReadTuplesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxReadTuplesOrBuilder(I)Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;
.end method

.method public abstract getMaxReadTuplesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getNBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNext()Ljava/lang/String;
.end method

.method public abstract getNextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getQueryAllMembers()Z
.end method

.method public abstract getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end method

.method public abstract getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
.end method

.method public abstract getS()Ljava/lang/String;
.end method

.method public abstract getSBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSkip()I
.end method

.method public abstract getSort()Ljava/lang/String;
.end method

.method public abstract getSortBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatusPub()Z
.end method

.method public abstract getStatusSub()Z
.end method

.method public abstract getStatusTTL()I
.end method

.method public abstract getT()J
.end method

.method public abstract getTargetClientId()Ljava/lang/String;
.end method

.method public abstract getTargetClientIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTempConv()Z
.end method

.method public abstract getTempConvIds(I)Ljava/lang/String;
.end method

.method public abstract getTempConvIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTempConvIdsCount()I
.end method

.method public abstract getTempConvIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTempConvTTL()I
.end method

.method public abstract getTransient()Z
.end method

.method public abstract getUdate()Ljava/lang/String;
.end method

.method public abstract getUdateBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUnique()Z
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public abstract getUniqueIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end method

.method public abstract getWhereOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
.end method

.method public abstract hasAttr()Z
.end method

.method public abstract hasCdate()Z
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasCount()Z
.end method

.method public abstract hasFlag()Z
.end method

.method public abstract hasInfo()Z
.end method

.method public abstract hasInitBy()Z
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasMaxAckTimestamp()Z
.end method

.method public abstract hasMaxReadTimestamp()Z
.end method

.method public abstract hasN()Z
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasQueryAllMembers()Z
.end method

.method public abstract hasResults()Z
.end method

.method public abstract hasS()Z
.end method

.method public abstract hasSkip()Z
.end method

.method public abstract hasSort()Z
.end method

.method public abstract hasStatusPub()Z
.end method

.method public abstract hasStatusSub()Z
.end method

.method public abstract hasStatusTTL()Z
.end method

.method public abstract hasT()Z
.end method

.method public abstract hasTargetClientId()Z
.end method

.method public abstract hasTempConv()Z
.end method

.method public abstract hasTempConvTTL()Z
.end method

.method public abstract hasTransient()Z
.end method

.method public abstract hasUdate()Z
.end method

.method public abstract hasUnique()Z
.end method

.method public abstract hasUniqueId()Z
.end method

.method public abstract hasWhere()Z
.end method
