.class Lcom/avos/avospush/session/MessageQueue$1;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avospush/session/MessageQueue;->storeMessageQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/session/MessageQueue;


# direct methods
.method constructor <init>(Lcom/avos/avospush/session/MessageQueue;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/avos/avospush/session/MessageQueue$1;->this$0:Lcom/avos/avospush/session/MessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/avos/avospush/session/MessageQueue$1;->this$0:Lcom/avos/avospush/session/MessageQueue;

    iget-object v0, v0, Lcom/avos/avospush/session/MessageQueue;->messages:Ljava/util/Queue;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 157
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avospush/session/MessageQueue$1;->this$0:Lcom/avos/avospush/session/MessageQueue;

    invoke-static {v2}, Lcom/avos/avospush/session/MessageQueue;->access$000(Lcom/avos/avospush/session/MessageQueue;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.avoscloud.chat.message"

    invoke-virtual {v1, v3, v2, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
