.class public abstract Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMMessage;
.source "AVIMTypedMessage.java"


# static fields
.field private static final KEY_MESSAGE_CONTENT:Ljava/lang/String; = "msg"

.field private static final KEY_MESSAGE_FROM:Ljava/lang/String; = "msg_from"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "msg_mid"

.field private static final KEY_MESSAGE_TIMESTAMP:Ljava/lang/String; = "msg_timestamp"

.field static fieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/avos/avospush/util/FieldAttribute;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->initMessageType()V

    return-void
.end method

.method protected static computeFieldAttribute(Ljava/lang/Class;)V
    .locals 19

    move-object/from16 v0, p0

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    .line 84
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 85
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 86
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 92
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    .line 93
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/reflect/Method;

    .line 94
    array-length v5, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v14, v3, v7

    .line 95
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    :cond_2
    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 100
    :cond_3
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    const/4 v15, 0x1

    if-eq v9, v15, :cond_6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-eqz v9, :cond_6

    goto :goto_2

    :cond_6
    const-string v9, "set"

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "get"

    const-string v13, "is"

    if-nez v11, :cond_7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "getMetaClass"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 114
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v15, "groovy.lang.MetaClass"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 115
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 121
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 122
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v15, 0x4

    if-eqz v9, :cond_a

    .line 124
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v15, v6

    goto/16 :goto_4

    :cond_8
    const/16 v10, 0x5f

    if-ne v6, v10, :cond_9

    .line 129
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    const/16 v10, 0x66

    if-ne v6, v10, :cond_2

    const/4 v6, 0x3

    .line 131
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_a
    if-eqz v11, :cond_f

    .line 138
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v6, "getClass"

    .line 142
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x3

    .line 146
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 148
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_d
    const/16 v6, 0x5f

    if-ne v10, v6, :cond_e

    .line 151
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_e
    const/16 v6, 0x66

    if-ne v10, v6, :cond_2

    const/4 v6, 0x3

    .line 153
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_f
    const/4 v6, 0x3

    if-eqz v12, :cond_13

    .line 158
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v6, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v10, 0x2

    .line 161
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 163
    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_11
    const/16 v10, 0x5f

    if-ne v15, v10, :cond_12

    .line 166
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_12
    const/16 v6, 0x66

    if-ne v15, v6, :cond_2

    const/4 v6, 0x2

    .line 168
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_13
    const/4 v15, 0x0

    .line 173
    :goto_4
    invoke-static {v4, v15}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_15

    if-nez v12, :cond_14

    if-eqz v9, :cond_15

    .line 175
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    .line 176
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-static {v4, v6}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_16

    move-object v15, v6

    goto :goto_5

    :cond_15
    const/4 v13, 0x0

    move-object v8, v6

    :cond_16
    :goto_5
    if-eqz v8, :cond_2

    .line 184
    const-class v6, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    if-eqz v6, :cond_2

    .line 187
    invoke-interface {v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageField;->name()Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 190
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avospush/util/FieldAttribute;

    goto :goto_6

    :cond_17
    const/4 v6, 0x0

    :goto_6
    if-eqz v9, :cond_19

    if-nez v6, :cond_18

    .line 194
    new-instance v6, Lcom/avos/avospush/util/FieldAttribute;

    const/4 v11, 0x0

    .line 195
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    move-object v8, v6

    move-object v9, v15

    move-object v12, v14

    const/16 v17, 0x0

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 196
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_18
    const/16 v17, 0x0

    .line 198
    invoke-virtual {v6, v14}, Lcom/avos/avospush/util/FieldAttribute;->setSetterMethod(Ljava/lang/reflect/Method;)V

    goto :goto_7

    :cond_19
    const/16 v17, 0x0

    if-nez v12, :cond_1b

    if-eqz v11, :cond_1a

    goto :goto_8

    :cond_1a
    :goto_7
    const/4 v6, 0x1

    goto :goto_9

    :cond_1b
    :goto_8
    if-nez v6, :cond_1c

    .line 202
    new-instance v6, Lcom/avos/avospush/util/FieldAttribute;

    const/4 v12, 0x0

    .line 203
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    move-object v8, v6

    move-object v9, v15

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {v1, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 206
    :cond_1c
    invoke-virtual {v6, v14}, Lcom/avos/avospush/util/FieldAttribute;->setGetterMethod(Ljava/lang/reflect/Method;)V

    goto :goto_7

    .line 209
    :goto_9
    invoke-virtual {v14, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 214
    :cond_1d
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10

    .line 246
    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    move-object v0, p1

    .line 247
    invoke-virtual {v9, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    move-object v0, p2

    .line 248
    invoke-virtual {v9, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 249
    invoke-static {v9}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method private initMessageType()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    .line 37
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    return-void
.end method

.method static parseMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 9

    if-eqz p1, :cond_0

    const-string v0, "msg_mid"

    .line 230
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "msg_from"

    .line 232
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "msg"

    .line 233
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg_timestamp"

    .line 234
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 235
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const-wide/16 v7, -0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 237
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 4

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getMessageType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_lctype"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 55
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 56
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avospush/util/FieldAttribute;

    .line 57
    invoke-virtual {v2, p0}, Lcom/avos/avospush/util/FieldAttribute;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-virtual {v2}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 4

    .line 65
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 66
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 69
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/util/FieldAttribute;

    .line 71
    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 72
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    :cond_1
    invoke-virtual {v1, p0, v2}, Lcom/avos/avospush/util/FieldAttribute;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setMessageType(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    return-void
.end method
