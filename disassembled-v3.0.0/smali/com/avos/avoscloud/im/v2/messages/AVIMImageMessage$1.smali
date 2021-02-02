.class Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMImageMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4

    const-string p2, "width"

    const-string v0, "height"

    const-string v1, "format"

    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 121
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$meta:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
