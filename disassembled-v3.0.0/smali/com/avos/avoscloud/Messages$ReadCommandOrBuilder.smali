.class public interface abstract Lcom/avos/avoscloud/Messages$ReadCommandOrBuilder;
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
    name = "ReadCommandOrBuilder"
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

.method public abstract getConvs(I)Lcom/avos/avoscloud/Messages$ReadTuple;
.end method

.method public abstract getConvsCount()I
.end method

.method public abstract getConvsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ReadTuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;
.end method

.method public abstract getConvsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ReadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCid()Z
.end method
