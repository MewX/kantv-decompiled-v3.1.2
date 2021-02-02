.class final Lcom/samsung/multiscreen/HttpHelper$1;
.super Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/HttpHelper;->createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/samsung/multiscreen/Result;

.field final synthetic val$resultCreator:Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/multiscreen/HttpHelper$1;->val$callback:Lcom/samsung/multiscreen/Result;

    iput-object p2, p0, Lcom/samsung/multiscreen/HttpHelper$1;->val$resultCreator:Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 50
    new-instance p2, Lcom/samsung/multiscreen/HttpHelper$1$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/multiscreen/HttpHelper$1$1;-><init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/lang/Exception;)V

    goto :goto_1

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->code()I

    move-result p1

    int-to-long v3, p1

    .line 61
    invoke-static {p3}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-wide/16 v0, 0xc8

    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    .line 64
    new-instance p1, Lcom/samsung/multiscreen/HttpHelper$1$2;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/multiscreen/HttpHelper$1$2;-><init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/util/Map;JLcom/koushikdutta/async/http/AsyncHttpResponse;)V

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Lcom/samsung/multiscreen/HttpHelper$1$3;

    invoke-direct {p1, p0, v2}, Lcom/samsung/multiscreen/HttpHelper$1$3;-><init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Lcom/samsung/multiscreen/HttpHelper$1$4;

    invoke-direct {p2, p0, p1}, Lcom/samsung/multiscreen/HttpHelper$1$4;-><init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/lang/Exception;)V

    .line 105
    :goto_1
    invoke-static {p2}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Lcom/koushikdutta/async/http/AsyncHttpResponse;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/multiscreen/HttpHelper$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V

    return-void
.end method
