.class Lcom/samsung/multiscreen/HttpHelper$1$3;
.super Ljava/lang/Object;
.source "HttpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/HttpHelper$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/HttpHelper$1;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/util/Map;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/HttpHelper$1;->val$callback:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iget-object v1, v1, Lcom/samsung/multiscreen/HttpHelper$1;->val$resultCreator:Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;

    iget-object v2, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->val$map:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;->createResult(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/samsung/multiscreen/HttpHelper$1$3;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iget-object v1, v1, Lcom/samsung/multiscreen/HttpHelper$1;->val$callback:Lcom/samsung/multiscreen/Result;

    invoke-static {v0}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :goto_0
    return-void
.end method
