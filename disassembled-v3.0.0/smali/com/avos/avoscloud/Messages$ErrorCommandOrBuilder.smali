.class public interface abstract Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
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
    name = "ErrorCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppCode()I
.end method

.method public abstract getCode()I
.end method

.method public abstract getDetail()Ljava/lang/String;
.end method

.method public abstract getDetailBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPids(I)Ljava/lang/String;
.end method

.method public abstract getPidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPidsCount()I
.end method

.method public abstract getPidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReason()Ljava/lang/String;
.end method

.method public abstract getReasonBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAppCode()Z
.end method

.method public abstract hasCode()Z
.end method

.method public abstract hasDetail()Z
.end method

.method public abstract hasReason()Z
.end method
