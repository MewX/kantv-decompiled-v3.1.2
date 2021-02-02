.class public interface abstract Lcom/avos/avoscloud/Messages$LogsCommandOrBuilder;
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
    name = "LogsCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getChecksum()Ljava/lang/String;
.end method

.method public abstract getChecksumBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getCidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDirection()Lcom/avos/avoscloud/Messages$LogsCommand$QueryDirection;
.end method

.method public abstract getL()I
.end method

.method public abstract getLctype()I
.end method

.method public abstract getLimit()I
.end method

.method public abstract getLogs(I)Lcom/avos/avoscloud/Messages$LogItem;
.end method

.method public abstract getLogsCount()I
.end method

.method public abstract getLogsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$LogItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogsOrBuilder(I)Lcom/avos/avoscloud/Messages$LogItemOrBuilder;
.end method

.method public abstract getLogsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$LogItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMid()Ljava/lang/String;
.end method

.method public abstract getMidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStored()Z
.end method

.method public abstract getT()J
.end method

.method public abstract getTIncluded()Z
.end method

.method public abstract getTmid()Ljava/lang/String;
.end method

.method public abstract getTmidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTt()J
.end method

.method public abstract getTtIncluded()Z
.end method

.method public abstract hasChecksum()Z
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasDirection()Z
.end method

.method public abstract hasL()Z
.end method

.method public abstract hasLctype()Z
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasMid()Z
.end method

.method public abstract hasStored()Z
.end method

.method public abstract hasT()Z
.end method

.method public abstract hasTIncluded()Z
.end method

.method public abstract hasTmid()Z
.end method

.method public abstract hasTt()Z
.end method

.method public abstract hasTtIncluded()Z
.end method
