.class public interface abstract Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;
.super Ljava/lang/Object;
.source "ControlCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract fail(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract success(Lcom/kantv/ui/androidupnpdemo/entity/IResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kantv/ui/androidupnpdemo/entity/IResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method
