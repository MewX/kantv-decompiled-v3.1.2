.class Lcom/avos/avoscloud/AVObjectSerializer;
.super Ljava/lang/Object;
.source "AVObjectSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/avos/avoscloud/AVObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/avos/avoscloud/AVObjectSerializer;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObjectSerializer;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObjectSerializer;->instance:Lcom/avos/avoscloud/AVObjectSerializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    .line 22
    check-cast p2, Lcom/avos/avoscloud/AVObject;

    const/16 p3, 0x7b

    .line 23
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x20

    const-string p5, "@type"

    invoke-virtual {p1, p4, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x2c

    const-string p5, "objectId"

    invoke-virtual {p1, p4, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getAVObjectUpdatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "updatedAt"

    invoke-virtual {p1, p4, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getAVObjectCreatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "createdAt"

    invoke-virtual {p1, p4, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->getAVObjectClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const-string p5, "className"

    invoke-virtual {p1, p4, p5, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 32
    instance-of p3, p2, Lcom/avos/avoscloud/AVStatus;

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p3, :cond_1

    .line 33
    check-cast p2, Lcom/avos/avoscloud/AVStatus;

    const-string p3, "dataMap"

    .line 34
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getData()Ljava/util/Map;

    move-result-object p3

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, p5

    invoke-static {p3, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p3, "inboxType"

    .line 40
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getInboxType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p3, "messageId"

    .line 43
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getSource()Lcom/avos/avoscloud/AVUser;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 46
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p3, "source"

    .line 47
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lcom/avos/avoscloud/AVStatus;->getSource()Lcom/avos/avoscloud/AVUser;

    move-result-object p2

    sget-object p3, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array p4, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p4, v0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v0, p4, p5

    invoke-static {p2, p3, p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "serverData"

    .line 53
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 54
    iget-object p3, p2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    sget-object v2, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array v3, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, v0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v3, p5

    invoke-static {p3, v2, v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 57
    iget-object p3, p2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 58
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p3, "operationQueue"

    .line 59
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 60
    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    sget-object p3, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    new-array p4, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, p4, v0

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v0, p4, p5

    invoke-static {p2, p3, p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/16 p2, 0x7d

    .line 65
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method
