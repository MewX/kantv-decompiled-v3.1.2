.class Lcom/samsung/multiscreen/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createHttpCallback(Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;Lcom/samsung/multiscreen/Result;)Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
            "*>;",
            "Lcom/samsung/multiscreen/Result;",
            ")",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/samsung/multiscreen/HttpHelper$1;

    invoke-direct {v0, p1, p0}, Lcom/samsung/multiscreen/HttpHelper$1;-><init>(Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;)V

    return-object v0
.end method
