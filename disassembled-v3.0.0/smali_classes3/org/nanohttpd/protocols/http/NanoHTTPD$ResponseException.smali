.class public final Lorg/nanohttpd/protocols/http/NanoHTTPD$ResponseException;
.super Ljava/lang/Exception;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nanohttpd/protocols/http/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b2cc1565237327cL


# instance fields
.field private final status:Lorg/nanohttpd/protocols/http/response/Status;


# direct methods
.method public constructor <init>(Lorg/nanohttpd/protocols/http/response/Status;Ljava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lorg/nanohttpd/protocols/http/NanoHTTPD$ResponseException;->status:Lorg/nanohttpd/protocols/http/response/Status;

    return-void
.end method

.method public constructor <init>(Lorg/nanohttpd/protocols/http/response/Status;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 151
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iput-object p1, p0, Lorg/nanohttpd/protocols/http/NanoHTTPD$ResponseException;->status:Lorg/nanohttpd/protocols/http/response/Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lorg/nanohttpd/protocols/http/response/Status;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/nanohttpd/protocols/http/NanoHTTPD$ResponseException;->status:Lorg/nanohttpd/protocols/http/response/Status;

    return-object v0
.end method
