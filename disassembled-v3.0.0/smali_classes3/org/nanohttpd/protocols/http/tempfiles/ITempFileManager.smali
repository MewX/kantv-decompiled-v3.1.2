.class public interface abstract Lorg/nanohttpd/protocols/http/tempfiles/ITempFileManager;
.super Ljava/lang/Object;
.source "ITempFileManager.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract createTempFile(Ljava/lang/String;)Lorg/nanohttpd/protocols/http/tempfiles/ITempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
