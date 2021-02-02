.class public interface abstract Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;
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
    name = "MaxReadTupleOrBuilder"
.end annotation


# virtual methods
.method public abstract getMaxAckTimestamp()J
.end method

.method public abstract getMaxReadTimestamp()J
.end method

.method public abstract getPid()Ljava/lang/String;
.end method

.method public abstract getPidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasMaxAckTimestamp()Z
.end method

.method public abstract hasMaxReadTimestamp()Z
.end method

.method public abstract hasPid()Z
.end method
