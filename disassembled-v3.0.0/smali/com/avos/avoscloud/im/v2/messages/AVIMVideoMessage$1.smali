.class Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVIMVideoMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;->getAdditionalMetaData(Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$meta:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 6

    const-string p2, "size"

    const-string v0, "duration"

    const-string v1, "format"

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "format_name"

    .line 92
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 94
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 95
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$meta:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
