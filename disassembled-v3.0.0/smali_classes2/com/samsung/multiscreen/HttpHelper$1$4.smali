.class Lcom/samsung/multiscreen/HttpHelper$1$4;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/HttpHelper$1;Ljava/lang/Exception;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/multiscreen/HttpHelper$1$4;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/HttpHelper$1$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/multiscreen/HttpHelper$1$4;->this$0:Lcom/samsung/multiscreen/HttpHelper$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/HttpHelper$1;->val$callback:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/HttpHelper$1$4;->val$e:Ljava/lang/Exception;

    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method
