.class public interface abstract Lcom/avos/avoscloud/SignatureFactory;
.super Ljava/lang/Object;
.source "SignatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/SignatureFactory$SignatureException;
    }
.end annotation


# static fields
.field public static final SIGNATURE_FAILED_LOGIN:I = 0x1006


# virtual methods
.method public abstract createBlacklistSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation
.end method

.method public abstract createConversationSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation
.end method

.method public abstract createGroupSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Signature;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation
.end method
