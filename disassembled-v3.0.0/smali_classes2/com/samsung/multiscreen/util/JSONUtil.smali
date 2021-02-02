.class public Lcom/samsung/multiscreen/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# static fields
.field private static containerFactory:Lorg/json/simple/parser/ContainerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/samsung/multiscreen/util/JSONUtil$1;

    invoke-direct {v0}, Lcom/samsung/multiscreen/util/JSONUtil$1;-><init>()V

    sput-object v0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 69
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 72
    :try_start_0
    sget-object v1, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 75
    :catch_1
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;)Lorg/json/simple/JSONArray;
    .locals 1

    .line 107
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 109
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 111
    :catch_0
    new-instance p0, Lorg/json/simple/JSONArray;

    invoke-direct {p0}, Lorg/json/simple/JSONArray;-><init>()V

    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 127
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 131
    sget-object v1, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 134
    :catch_1
    sget-object p0, Lcom/samsung/multiscreen/util/JSONUtil;->containerFactory:Lorg/json/simple/parser/ContainerFactory;

    invoke-interface {p0}, Lorg/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;)Lorg/json/simple/JSONObject;
    .locals 1

    .line 91
    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 93
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 95
    :catch_0
    new-instance p0, Lorg/json/simple/JSONObject;

    invoke-direct {p0}, Lorg/json/simple/JSONObject;-><init>()V

    return-object p0
.end method

.method public static toJSONObjectMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static toJSONObjectMapList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 178
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static toJSONString(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/util/Map;)Lorg/json/simple/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/simple/JSONObject;"
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 192
    invoke-virtual {v0, p0}, Lorg/json/simple/JSONObject;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
