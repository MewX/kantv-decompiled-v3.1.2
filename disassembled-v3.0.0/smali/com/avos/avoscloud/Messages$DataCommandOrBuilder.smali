.class public interface abstract Lcom/avos/avoscloud/Messages$DataCommandOrBuilder;
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
    name = "DataCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getIds(I)Ljava/lang/String;
.end method

.method public abstract getIdsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIdsCount()I
.end method

.method public abstract getIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMsg(I)Lcom/avos/avoscloud/Messages$JsonObjectMessage;
.end method

.method public abstract getMsgCount()I
.end method

.method public abstract getMsgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMsgOrBuilder(I)Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
.end method

.method public abstract getMsgOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOffline()Z
.end method

.method public abstract hasOffline()Z
.end method
