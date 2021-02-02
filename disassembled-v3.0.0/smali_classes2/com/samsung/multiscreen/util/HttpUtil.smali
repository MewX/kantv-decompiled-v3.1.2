.class public Lcom/samsung/multiscreen/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;
    }
.end annotation


# static fields
.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field private static logging:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0

    .line 59
    sput-boolean p0, Lcom/samsung/multiscreen/util/HttpUtil;->logging:Z

    return-void
.end method

.method public static executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;ILcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method public static executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")V"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    const/16 p2, 0x7530

    .line 110
    :cond_0
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setTimeout(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    if-eqz p3, :cond_1

    .line 114
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 115
    new-instance p2, Lcom/koushikdutta/async/http/body/JSONObjectBody;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/http/body/JSONObjectBody;-><init>(Lorg/json/JSONObject;)V

    .line 116
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 119
    :cond_1
    sget-boolean p1, Lcom/samsung/multiscreen/util/HttpUtil;->logging:Z

    if-eqz p1, :cond_2

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "executeJSONRequest() method: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "executeJSONRequest() request.getHeaders() "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/Headers;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public static executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method

.method public static executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x7530

    .line 95
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/multiscreen/util/HttpUtil;->executeJSONRequest(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)V

    return-void
.end method
