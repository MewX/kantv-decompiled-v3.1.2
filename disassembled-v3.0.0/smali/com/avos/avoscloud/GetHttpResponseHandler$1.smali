.class Lcom/avos/avoscloud/GetHttpResponseHandler$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "GetHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/GetHttpResponseHandler;->tryLastModifyCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GetHttpResponseHandler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-static {v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->access$000(Lcom/avos/avoscloud/GetHttpResponseHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PaasClient;->removeLastModifyForUrl(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-virtual {v0}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 45
    iget-object p2, p0, Lcom/avos/avoscloud/GetHttpResponseHandler$1;->this$0:Lcom/avos/avoscloud/GetHttpResponseHandler;

    invoke-virtual {p2}, Lcom/avos/avoscloud/GetHttpResponseHandler;->getCallback()Lcom/avos/avoscloud/GenericObjectCallback;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
