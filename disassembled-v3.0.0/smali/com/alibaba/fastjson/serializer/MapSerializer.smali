.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final NON_STRINGKEY_AS_STRING:I

.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    sput v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 53
    iget-object v9, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 60
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 61
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 62
    iget v3, v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    and-int v2, p5, v2

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2

    .line 65
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v2

    goto :goto_0

    :catch_0
    :cond_2
    move-object v10, v1

    .line 72
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_3
    iget-object v11, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v12, 0x0

    move-object/from16 v1, p3

    .line 78
    invoke-virtual {v8, v11, v0, v1, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    if-nez p6, :cond_4

    const/16 v1, 0x7b

    .line 81
    :try_start_1
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 91
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_7

    .line 92
    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 93
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 94
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/util/HashMap;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/util/LinkedHashMap;

    if-ne v2, v3, :cond_6

    .line 95
    :cond_5
    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    .line 97
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    .line 103
    :goto_2
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v2, 0x0

    move v15, v1

    move-object v6, v2

    move-object/from16 v16, v6

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    if-eqz v1, :cond_a

    .line 111
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_8

    goto :goto_4

    .line 115
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_9

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_b

    .line 116
    :cond_9
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v7, v8, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 112
    :cond_a
    :goto_4
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_5
    move-object/from16 v19, v6

    goto/16 :goto_12

    .line 124
    :cond_b
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyPreFilters:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 125
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    if-eqz v1, :cond_e

    .line 126
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    goto :goto_6

    .line 130
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_d

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    .line 131
    :cond_d
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v7, v8, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    .line 127
    :cond_e
    :goto_6
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    .line 140
    :cond_f
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_13

    .line 141
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    if-eqz v1, :cond_12

    .line 142
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_7

    .line 146
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_11

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_13

    .line 147
    :cond_11
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v7, v8, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_5

    .line 143
    :cond_12
    :goto_7
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_5

    .line 155
    :cond_13
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->propertyFilters:Ljava/util/List;

    if-eqz v2, :cond_17

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    if-eqz v1, :cond_16

    .line 157
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_14

    goto :goto_8

    .line 161
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_15

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_17

    .line 162
    :cond_15
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v7, v8, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_5

    .line 158
    :cond_16
    :goto_8
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v2, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_5

    .line 171
    :cond_17
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_1b

    .line 172
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    if-eqz v1, :cond_1a

    .line 173
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_18

    goto :goto_9

    .line 175
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_19

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1b

    .line 176
    :cond_19
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v7, v8, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 174
    :cond_1a
    :goto_9
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_1b
    :goto_a
    iget-object v2, v7, Lcom/alibaba/fastjson/serializer/MapSerializer;->nameFilters:Ljava/util/List;

    if-eqz v2, :cond_1f

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    if-eqz v1, :cond_1e

    .line 184
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1c

    goto :goto_b

    .line 186
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1d

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1f

    .line 187
    :cond_1d
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v7, v8, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 185
    :cond_1e
    :goto_b
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v8, v0, v1, v5}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    :goto_c
    move-object v4, v1

    if-eqz v4, :cond_24

    .line 194
    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_20

    goto :goto_f

    .line 197
    :cond_20
    instance-of v1, v4, Ljava/util/Map;

    if-nez v1, :cond_22

    instance-of v1, v4, Ljava/util/Collection;

    if-eqz v1, :cond_21

    goto :goto_d

    :cond_21
    const/4 v1, 0x0

    goto :goto_e

    :cond_22
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-nez v1, :cond_23

    .line 199
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 200
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_23
    move-object v12, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v3, v18

    goto :goto_11

    :cond_24
    :goto_f
    move-object v12, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v3, 0x0

    .line 195
    move-object v5, v12

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_10
    move-object v3, v1

    :goto_11
    if-nez v3, :cond_25

    .line 206
    sget v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_25

    :goto_12
    move-object/from16 v6, v19

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 211
    :cond_25
    instance-of v1, v12, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_28

    .line 212
    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    if-nez v15, :cond_26

    .line 215
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 218
    :cond_26
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 221
    :cond_27
    invoke-virtual {v9, v4, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_14

    :cond_28
    if-nez v15, :cond_29

    .line 224
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 227
    :cond_29
    sget v1, Lcom/alibaba/fastjson/serializer/MapSerializer;->NON_STRINGKEY_AS_STRING:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    instance-of v1, v12, Ljava/lang/Enum;

    if-nez v1, :cond_2a

    .line 228
    invoke-static {v12}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_13

    .line 231
    :cond_2a
    invoke-virtual {v8, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :goto_13
    const/16 v1, 0x3a

    .line 234
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_14
    if-nez v3, :cond_2b

    .line 240
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_15
    move-object/from16 v6, v19

    :goto_16
    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 244
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v6, v19

    if-ne v15, v6, :cond_2c

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v4, v12

    move-object/from16 v19, v6

    move v6, v15

    .line 247
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_15

    .line 250
    :cond_2c
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v4, v12

    .line 252
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v15

    goto :goto_16

    .line 256
    :cond_2d
    iput-object v11, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 260
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_2e
    if-nez p6, :cond_2f

    const/16 v0, 0x7d

    .line 265
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_2f
    return-void

    :catchall_0
    move-exception v0

    .line 256
    iput-object v11, v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method
