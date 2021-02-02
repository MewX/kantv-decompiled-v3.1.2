.class Lcom/samsung/multiscreen/HttpHelper$1$2;
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

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

.field final synthetic val$status:J


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/util/Map;JLcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$map:Ljava/util/Map;

    iput-wide p3, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$status:J

    iput-object p5, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 71
    iget-wide v1, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$status:J

    invoke-static {v1, v2, v0}, Lcom/samsung/multiscreen/Error;->create(JLjava/util/Map;)Lcom/samsung/multiscreen/Error;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-static {v0}, Lcom/samsung/multiscreen/Error;->create(Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/samsung/multiscreen/Error;

    move-result-object v0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/HttpHelper$1$2;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iget-object v1, v1, Lcom/samsung/multiscreen/HttpHelper$1;->val$callback:Lcom/samsung/multiscreen/Result;

    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method
