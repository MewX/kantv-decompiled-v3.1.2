.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    const-class v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    return-void
.end method

.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getBoundaryEnd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 174
    iget-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$6;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget v0, p2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->written:I

    return-void
.end method
