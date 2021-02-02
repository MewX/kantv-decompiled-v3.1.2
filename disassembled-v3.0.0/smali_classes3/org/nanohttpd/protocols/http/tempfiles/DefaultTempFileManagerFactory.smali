.class public Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "DefaultTempFileManagerFactory.java"

# interfaces
.implements Lorg/nanohttpd/util/IFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/nanohttpd/util/IFactory<",
        "Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManagerFactory;->create()Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;
    .locals 1

    .line 45
    new-instance v0, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;

    invoke-direct {v0}, Lorg/nanohttpd/protocols/http/tempfiles/DefaultTempFileManager;-><init>()V

    return-object v0
.end method
