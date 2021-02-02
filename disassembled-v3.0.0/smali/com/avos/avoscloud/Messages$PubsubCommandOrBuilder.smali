.class public interface abstract Lcom/avos/avoscloud/Messages$PubsubCommandOrBuilder;
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
    name = "PubsubCommandOrBuilder"
.end annotation


# virtual methods
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

.method public abstract getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end method

.method public abstract getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
.end method

.method public abstract getSubtopic()Ljava/lang/String;
.end method

.method public abstract getSubtopicBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubtopics(I)Ljava/lang/String;
.end method

.method public abstract getSubtopicsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubtopicsCount()I
.end method

.method public abstract getSubtopicsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopic()Ljava/lang/String;
.end method

.method public abstract getTopicBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTopics(I)Ljava/lang/String;
.end method

.method public abstract getTopicsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTopicsCount()I
.end method

.method public abstract getTopicsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCid()Z
.end method

.method public abstract hasResults()Z
.end method

.method public abstract hasSubtopic()Z
.end method

.method public abstract hasTopic()Z
.end method
