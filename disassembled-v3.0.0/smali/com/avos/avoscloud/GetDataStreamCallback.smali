.class public abstract Lcom/avos/avoscloud/GetDataStreamCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "GetDataStreamCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected final internalDone0(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataStreamCallback;->done(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/GetDataStreamCallback;->internalDone0(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
