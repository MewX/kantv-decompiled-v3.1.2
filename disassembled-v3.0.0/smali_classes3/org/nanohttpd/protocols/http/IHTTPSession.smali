.class public interface abstract Lorg/nanohttpd/protocols/http/IHTTPSession;
.super Ljava/lang/Object;
.source "IHTTPSession.java"


# virtual methods
.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCookies()Lorg/nanohttpd/protocols/http/content/CookieHandler;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getMethod()Lorg/nanohttpd/protocols/http/request/Method;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getParms()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getQueryParameterString()Ljava/lang/String;
.end method

.method public abstract getRemoteHostName()Ljava/lang/String;
.end method

.method public abstract getRemoteIpAddress()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract parseBody(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/nanohttpd/protocols/http/NanoHTTPD$ResponseException;
        }
    .end annotation
.end method
