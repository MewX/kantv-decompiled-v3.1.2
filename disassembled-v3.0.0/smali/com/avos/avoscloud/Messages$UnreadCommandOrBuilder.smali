.class public interface abstract Lcom/avos/avoscloud/Messages$UnreadCommandOrBuilder;
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
    name = "UnreadCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getConvs(I)Lcom/avos/avoscloud/Messages$UnreadTuple;
.end method

.method public abstract getConvsCount()I
.end method

.method public abstract getConvsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$UnreadTuple;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConvsOrBuilder(I)Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;
.end method

.method public abstract getConvsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$UnreadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotifTime()J
.end method

.method public abstract hasNotifTime()Z
.end method
