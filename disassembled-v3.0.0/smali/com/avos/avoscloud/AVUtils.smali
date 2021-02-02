.class public Lcom/avos/avoscloud/AVUtils;
.super Ljava/lang/Object;
.source "AVUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_NOT_CONNECTED:I = 0x0

.field public static final TYPE_WIFI:I = 0x1

.field static acu:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field public static final classNameTag:Ljava/lang/String; = "className"

.field private static final dateFormat:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final defaultFileKeyLength:I = 0x28

.field static emailPattern:Ljava/util/regex/Pattern; = null

.field private static fieldsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final objectIdTag:Ljava/lang/String; = "objectId"

.field static pattern:Ljava/util/regex/Pattern; = null

.field static phoneNumPattern:Ljava/util/regex/Pattern; = null

.field static random:Ljava/util/Random; = null

.field public static final typeTag:Ljava/lang/String; = "__type"

.field static verifyCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    const-string v0, "^[a-zA-Z_][a-zA-Z_0-9]*$"

    .line 102
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    const-string v0, "^\\w+?@\\w+?[.]\\w+"

    .line 103
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    const-string v0, "1\\d{10}"

    .line 104
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\d{6}"

    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    .line 189
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    .line 764
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->random:Ljava/util/Random;

    .line 770
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 1165
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1166
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 1167
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1168
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1126
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1127
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1129
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p0

    const-string p0, "%s?%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1052
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1035
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->base64Encode([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 1045
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->base64Encode([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static base64Encode([BI)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1042
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 419
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 420
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 421
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p3, :cond_2

    .line 422
    :cond_1
    invoke-virtual {v3, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v0
.end method

.method public static checkClassName(Ljava/lang/String;)V
    .locals 1

    .line 120
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid class name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Blank class name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkDNSException(ILjava/lang/Throwable;)Z
    .locals 1

    .line 1082
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 1084
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1085
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "unknownhostexception"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkEmailAddress(Ljava/lang/String;)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static checkMobilePhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .line 112
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static checkMobileVerifyCode(Ljava/lang/String;)Z
    .locals 1

    .line 116
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 831
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    return v0

    .line 835
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static checkResponseType(ILjava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)Z
    .locals 4

    if-lez p0, :cond_1

    .line 1067
    invoke-static {p2}, Lcom/avos/avoscloud/PaasClient;->isJSONResponse(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 1069
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong response content type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 1070
    invoke-virtual {p3, p0, v0, p1}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(ILjava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static collectionNonNullCount(Ljava/util/Collection;)I
    .locals 2

    .line 988
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 989
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1028
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static computeMD5([B)Ljava/lang/String;
    .locals 0

    .line 917
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 134
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_0

    const/16 v7, 0x9

    if-gt v5, v7, :cond_0

    add-int/lit8 v5, v5, 0x30

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    :goto_2
    int-to-char v5, v5

    .line 1154
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 1160
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V
    .locals 1

    .line 478
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 480
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/JSONHelper;->mapFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 481
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/AVObject;",
            ")V"
        }
    .end annotation

    .line 488
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-virtual {p1, v1, v0, v4}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 500
    :cond_2
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 501
    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 502
    :cond_3
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 503
    check-cast v0, Ljava/util/Map;

    invoke-static {p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    invoke-virtual {p1, v1, v0, v4}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 513
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__op"

    .line 57
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "objects"

    .line 62
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static createDeleteOpMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
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

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__op"

    const-string v2, "Delete"

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1061
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__op"

    .line 148
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 151
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "objects"

    .line 153
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static dataFromMap(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "base64"

    .line 270
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x2

    .line 271
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static dateFromMap(Ljava/util/Map;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    const-string v0, "iso"

    .line 236
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 237
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static dateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 197
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isDigitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 202
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "UTC"

    .line 206
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 207
    sget-object v2, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 210
    :cond_2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1016
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVFile;"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/avos/avoscloud/AVFile;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V

    const-string v1, "metaData"

    .line 309
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "_name"

    .line 311
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "objectId"

    .line 314
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVFile;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVGeoPoint;"
        }
    .end annotation

    const-string v0, "latitude"

    .line 249
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-string v2, "longitude"

    .line 250
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 251
    new-instance p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVGeoPoint;-><init>(DD)V

    return-object p0
.end method

.method public static getAVObjectClassByClassName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    const-string v0, "_Role"

    .line 605
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-class p0, Lcom/avos/avoscloud/AVRole;

    return-object p0

    .line 607
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const-class p0, Lcom/avos/avoscloud/AVUser;

    return-object p0

    .line 611
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getAVObjectClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1100
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAVObjectCreatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 0

    .line 1104
    iget-object p0, p0, Lcom/avos/avoscloud/AVObject;->createdAt:Ljava/lang/String;

    return-object p0
.end method

.method public static getAVObjectUpdatedAt(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;
    .locals 0

    .line 1108
    iget-object p0, p0, Lcom/avos/avoscloud/AVObject;->updatedAt:Ljava/lang/String;

    return-object p0
.end method

.method public static getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 72
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    goto :goto_4

    .line 75
    :cond_0
    sget-object v1, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 81
    const-class v3, Ljava/lang/Object;

    if-eq p0, v3, :cond_3

    .line 82
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 83
    array-length v4, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v2, v4

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 87
    :cond_3
    new-array v2, v2, [Ljava/lang/reflect/Field;

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Field;

    if-eqz v4, :cond_4

    .line 91
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    const/4 v8, 0x1

    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 94
    :cond_5
    array-length v5, v4

    invoke-static {v4, v0, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_2

    .line 98
    :cond_6
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 73
    :cond_7
    :goto_4
    new-array p0, v0, [Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "put"

    .line 972
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "post"

    .line 976
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "delete"

    .line 978
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 980
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 981
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 983
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    const-string v0, "__type"

    .line 523
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 525
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Pointer"

    .line 527
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const-class p0, Lcom/avos/avoscloud/AVObject;

    return-object p0

    :cond_1
    const-string v0, "GeoPoint"

    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    const-class p0, Lcom/avos/avoscloud/AVGeoPoint;

    return-object p0

    :cond_2
    const-string v0, "Bytes"

    .line 531
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    const-class p0, [B

    return-object p0

    :cond_3
    const-string v0, "Date"

    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 534
    const-class p0, Ljava/util/Date;

    return-object p0

    .line 537
    :cond_4
    const-class p0, Ljava/util/Map;

    return-object p0

    .line 526
    :cond_5
    :goto_0
    const-class p0, Ljava/util/Map;

    return-object p0
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 3

    const-string v0, "connectivity"

    .line 942
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 944
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 946
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 948
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v2

    .line 950
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public static getConnectivityStatusString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 956
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "Wifi enabled"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "Mobile data enabled"

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Not connected to Internet"

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getCurrentTimestamp()J
    .locals 2

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEncodeUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1112
    new-instance v0, Lcom/avos/avoscloud/AVRequestParams;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVRequestParams;->getWholeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 626
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1089
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "www."

    .line 1091
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J
    .locals 1

    .line 930
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method static getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 922
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1117
    const-class v0, Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1118
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1121
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getMimeTypeFromLocalFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 902
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    .line 903
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 904
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 906
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 886
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 888
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 890
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getNextIMRequestId()I
    .locals 4

    .line 773
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    :goto_0
    if-le v0, v1, :cond_0

    .line 775
    sget-object v2, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 776
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->acu:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method static getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 748
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 749
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 750
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 751
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "__type"

    .line 717
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 718
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "Pointer"

    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "GeoPoint"

    .line 733
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "Bytes"

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 736
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "Date"

    .line 737
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "Relation"

    .line 739
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 740
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "File"

    .line 741
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 742
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    const-string v1, "className"

    .line 729
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    .line 730
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    return-object v1

    .line 719
    :cond_8
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 721
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 722
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 723
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 724
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method static getObjectFrom(Ljava/util/Collection;)Ljava/util/List;
    .locals 2

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 710
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 648
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 649
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getParsedList(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_0

    .line 379
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 381
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 384
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 642
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 394
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 396
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 397
    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getParsedObject(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 662
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 663
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 664
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 665
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 666
    :cond_2
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 668
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 670
    :cond_3
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 672
    :cond_4
    instance-of p1, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz p1, :cond_5

    .line 673
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 674
    :cond_5
    instance-of p1, p0, Ljava/util/Date;

    if-eqz p1, :cond_6

    .line 675
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 676
    :cond_6
    instance-of p1, p0, [B

    if-eqz p1, :cond_7

    .line 677
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 678
    :cond_7
    instance-of p1, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz p1, :cond_8

    .line 679
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 680
    :cond_8
    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 682
    :cond_9
    instance-of p1, p0, Lorg/json/JSONArray;

    if-eqz p1, :cond_a

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 0

    .line 767
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSessionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUIThreadHandler()Landroid/os/Handler;
    .locals 1

    .line 1056
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static hasProperty(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 404
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 405
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 406
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hexEncodeBytes([B)Ljava/lang/String;
    .locals 0

    .line 913
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->hexEncodeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isACL(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ACL"

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBlankContent(Ljava/lang/String;)Z
    .locals 0

    .line 130
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankJsonContent(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBlankString(Ljava/lang/String;)Z
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "connectivity"

    .line 800
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 801
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 803
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "Exception: "

    .line 810
    invoke-static {v0, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_1
    move-exception p0

    const-string v1, "Please add ACCESS_NETWORK_STATE permission in your manifest"

    .line 807
    invoke-static {v1, p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public static isData(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Bytes"

    .line 561
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Date"

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDigitString(Ljava/lang/String;)Z
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->isDigitString(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmptyList(Ljava/util/List;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1012
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "File"

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFileFromUrulu(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "mime_type"

    .line 571
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/2addr p0, v0

    return p0
.end method

.method public static isGeoPoint(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "GeoPoint"

    .line 549
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMainThread()Z
    .locals 2

    .line 850
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPointer(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Pointer"

    .line 545
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2

    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000

    .line 842
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 843
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRelation(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "Relation"

    .line 541
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 789
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 790
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 791
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 820
    invoke-static {p1, p0}, Lcom/avos/avoscloud/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 276
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 277
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v0, v3

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v0, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    new-array v0, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v0, v3

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v0, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 288
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 289
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v5, v0, v3

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v0, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 293
    :cond_0
    new-array v0, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v0, v3

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v3, v0, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 359
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "__type"

    if-nez p1, :cond_1

    const-string p0, "Pointer"

    .line 365
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "Object"

    .line 367
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object p0, p0, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 370
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 371
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static mapFromByteArray([B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__type"

    const-string v2, "Bytes"

    .line 264
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 265
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v1, "base64"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalId()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "cid"

    .line 183
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "className"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key"

    .line 185
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static mapFromDate(Ljava/util/Date;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__type"

    const-string v2, "Date"

    .line 230
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "iso"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVFile;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "metaData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__type"

    const-string v2, "GeoPoint"

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v1, "longitude"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
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

    .line 170
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__type"

    const-string v2, "Pointer"

    .line 174
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "className"

    const-string v2, "_User"

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "objectId"

    .line 176
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 761
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2

    const-string v0, "_Role"

    .line 584
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    new-instance p0, Lcom/avos/avoscloud/AVRole;

    invoke-direct {p0}, Lcom/avos/avoscloud/AVRole;-><init>()V

    return-object p0

    .line 586
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0

    .line 590
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 593
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 595
    new-instance v0, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v1, "New subclass instance failed."

    invoke-direct {v0, v1, p0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 599
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newAVObjectByClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 617
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 618
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    return-object p0
.end method

.method public static objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 576
    const-class v0, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p0

    return-object p0

    .line 579
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    return-object p0
.end method

.method public static objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    const-string v0, "className"

    .line 257
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 258
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x28

    .line 1135
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    .line 1138
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    .line 1142
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    const-string v0, "className"

    .line 319
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    const-string v1, "objectId"

    .line 320
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 321
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    return-object v0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 867
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p0, v1

    int-to-long v3, p0

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 872
    new-array p0, p0, [B

    .line 873
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    .line 869
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "File size >= 2 GB"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 876
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static restfulCloudData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "{}"

    return-object p0

    .line 334
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 335
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 336
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 337
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 338
    :cond_2
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_3

    .line 339
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    invoke-static {p0, v1}, Lcom/avos/avoscloud/AVUtils;->mapFromAVObject(Lcom/avos/avoscloud/AVObject;Z)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 340
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_4

    .line 341
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :cond_4
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 343
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 345
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_6
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_7

    .line 347
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_7
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 350
    :cond_8
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_9
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restfulServerData(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "{}"

    return-object p0

    .line 328
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 329
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringFromBytes([B)Ljava/lang/String;
    .locals 0

    .line 824
    invoke-static {p0}, Lcom/avos/avoscloud/utils/StringUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 223
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 630
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 631
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 633
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 473
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 435
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isACL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance p1, Lcom/avos/avoscloud/AVACL;

    invoke-direct {p1, p2}, Lcom/avos/avoscloud/AVACL;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject;->setACL(Lcom/avos/avoscloud/AVACL;)V

    return-void

    :cond_0
    const-string v0, "objectId"

    .line 440
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "__type"

    .line 441
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 447
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isGeoPoint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object p2

    .line 449
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 450
    :cond_2
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isDate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object p2

    .line 452
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 453
    :cond_3
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object p2

    .line 455
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 456
    :cond_4
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object p2

    .line 458
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 459
    :cond_5
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isFileFromUrulu(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 460
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object p2

    .line 461
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 462
    :cond_6
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isRelation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "className"

    .line 463
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 464
    :cond_7
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isPointer(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    goto :goto_0

    .line 468
    :cond_8
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 465
    :cond_9
    :goto_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object p2

    .line 466
    invoke-virtual {p0, p1, p2, v2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method

.method public static urlCleanLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 998
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 999
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
