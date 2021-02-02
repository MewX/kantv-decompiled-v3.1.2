.class public interface abstract Lcom/avos/avoscloud/Messages$PatchCommandOrBuilder;
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
    name = "PatchCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getLastPatchTime()J
.end method

.method public abstract getPatches(I)Lcom/avos/avoscloud/Messages$PatchItem;
.end method

.method public abstract getPatchesCount()I
.end method

.method public abstract getPatchesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$PatchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPatchesOrBuilder(I)Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;
.end method

.method public abstract getPatchesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$PatchItemOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasLastPatchTime()Z
.end method
