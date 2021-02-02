.class final Lcom/avos/avoscloud/AVCloud$3;
.super Lcom/avos/avoscloud/FunctionCallback;
.source "AVCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVCloud;->rpcFunction(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FunctionCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$reference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/avos/avoscloud/AVCloud$3;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/avos/avoscloud/FunctionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/avos/avoscloud/AVCloud$3;->val$reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
