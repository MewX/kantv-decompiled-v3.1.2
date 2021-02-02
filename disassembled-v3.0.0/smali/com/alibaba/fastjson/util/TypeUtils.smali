.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field private static class_OneToMany:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z = false

.field public static compatibleWithFieldName:Z = false

.field public static compatibleWithJavaBean:Z = false

.field private static volatile kotlinIgnores:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z = false

.field private static volatile kotlin_class_klass_error:Z = false

.field private static volatile kotlin_error:Z = false

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor; = null

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method; = null

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method; = null

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method; = null

.field private static volatile kotlin_metadata:Ljava/lang/Class; = null

.field private static volatile kotlin_metadata_error:Z = false

.field private static mappings:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method; = null

.field private static method_HibernateIsInitialized_error:Z = false

.field private static optionalClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z = false

.field private static oracleDateMethod:Ljava/lang/reflect/Method; = null

.field private static oracleDateMethodInited:Z = false

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method; = null

.field private static oracleTimestampMethodInited:Z = false

.field private static pathClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z = false

.field private static setAccessibleEnable:Z = true

.field private static transientClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "true"

    :try_start_0
    const-string v1, "fastjson.compatibleWithJavaBean"

    .line 91
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const-string v1, "fastjson.compatibleWithFieldName"

    .line 92
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :catch_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 1095
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    const/4 v0, 0x0

    .line 1241
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 16

    .line 1099
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "float"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "double"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "char"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [B

    const-string v2, "[byte"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [S

    const-string v2, "[short"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [I

    const-string v2, "[int"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [J

    const-string v2, "[long"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [F

    const-string v2, "[float"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [D

    const-string v2, "[double"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [Z

    const-string v2, "[boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [C

    const-string v2, "[char"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [B

    const-string v2, "[B"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [S

    const-string v2, "[S"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [I

    const-string v2, "[I"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [J

    const-string v2, "[J"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [F

    const-string v2, "[F"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [D

    const-string v2, "[D"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [C

    const-string v2, "[C"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, [Z

    const-string v2, "[Z"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3a

    .line 1126
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Cloneable;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "java.lang.AutoCloseable"

    .line 1129
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/Exception;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/RuntimeException;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/IllegalAccessError;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/IllegalAccessException;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-class v1, Ljava/lang/IllegalArgumentException;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-class v1, Ljava/lang/IllegalMonitorStateException;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-class v1, Ljava/lang/IllegalStateException;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-class v1, Ljava/lang/IllegalThreadStateException;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-class v1, Ljava/lang/IndexOutOfBoundsException;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-class v1, Ljava/lang/InstantiationError;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-class v1, Ljava/lang/InstantiationException;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/InternalError;

    const/16 v15, 0xe

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/InterruptedException;

    const/16 v15, 0xf

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/LinkageError;

    const/16 v15, 0x10

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NegativeArraySizeException;

    const/16 v15, 0x11

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NoClassDefFoundError;

    const/16 v15, 0x12

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NoSuchFieldError;

    const/16 v15, 0x13

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NoSuchFieldException;

    const/16 v15, 0x14

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NoSuchMethodError;

    const/16 v15, 0x15

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NoSuchMethodException;

    const/16 v15, 0x16

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NullPointerException;

    const/16 v15, 0x17

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/NumberFormatException;

    const/16 v15, 0x18

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/OutOfMemoryError;

    const/16 v15, 0x19

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/SecurityException;

    const/16 v15, 0x1a

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/StackOverflowError;

    const/16 v15, 0x1b

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/StringIndexOutOfBoundsException;

    const/16 v15, 0x1c

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/TypeNotPresentException;

    const/16 v15, 0x1d

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/VerifyError;

    const/16 v15, 0x1e

    aput-object v1, v0, v15

    const-class v1, Ljava/lang/StackTraceElement;

    const/16 v15, 0x1f

    aput-object v1, v0, v15

    const-class v1, Ljava/util/HashMap;

    const/16 v15, 0x20

    aput-object v1, v0, v15

    const-class v1, Ljava/util/Hashtable;

    const/16 v15, 0x21

    aput-object v1, v0, v15

    const-class v1, Ljava/util/TreeMap;

    const/16 v15, 0x22

    aput-object v1, v0, v15

    const-class v1, Ljava/util/IdentityHashMap;

    const/16 v15, 0x23

    aput-object v1, v0, v15

    const-class v1, Ljava/util/WeakHashMap;

    const/16 v15, 0x24

    aput-object v1, v0, v15

    const-class v1, Ljava/util/LinkedHashMap;

    const/16 v15, 0x25

    aput-object v1, v0, v15

    const-class v1, Ljava/util/HashSet;

    const/16 v15, 0x26

    aput-object v1, v0, v15

    const-class v1, Ljava/util/LinkedHashSet;

    const/16 v15, 0x27

    aput-object v1, v0, v15

    const-class v1, Ljava/util/TreeSet;

    const/16 v15, 0x28

    aput-object v1, v0, v15

    const-class v1, Ljava/util/concurrent/TimeUnit;

    const/16 v15, 0x29

    aput-object v1, v0, v15

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v15, 0x2a

    aput-object v1, v0, v15

    const-string v1, "java.util.concurrent.ConcurrentSkipListMap"

    .line 1170
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v15, 0x2b

    aput-object v1, v0, v15

    const-string v1, "java.util.concurrent.ConcurrentSkipListSet"

    .line 1171
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v15, 0x2c

    aput-object v1, v0, v15

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v15, 0x2d

    aput-object v1, v0, v15

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v15, 0x2e

    aput-object v1, v0, v15

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v15, 0x2f

    aput-object v1, v0, v15

    const-class v1, Ljava/util/BitSet;

    const/16 v15, 0x30

    aput-object v1, v0, v15

    const-class v1, Ljava/util/Calendar;

    const/16 v15, 0x31

    aput-object v1, v0, v15

    const-class v1, Ljava/util/Date;

    const/16 v15, 0x32

    aput-object v1, v0, v15

    const-class v1, Ljava/util/Locale;

    const/16 v15, 0x33

    aput-object v1, v0, v15

    const-class v1, Ljava/util/UUID;

    const/16 v15, 0x34

    aput-object v1, v0, v15

    const-class v1, Ljava/sql/Time;

    const/16 v15, 0x35

    aput-object v1, v0, v15

    const-class v1, Ljava/sql/Date;

    const/16 v15, 0x36

    aput-object v1, v0, v15

    const-class v1, Ljava/sql/Timestamp;

    const/16 v15, 0x37

    aput-object v1, v0, v15

    const-class v1, Ljava/text/SimpleDateFormat;

    const/16 v15, 0x38

    aput-object v1, v0, v15

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    const/16 v15, 0x39

    aput-object v1, v0, v15

    .line 1187
    array-length v1, v0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_1

    aget-object v13, v0, v15

    if-nez v13, :cond_0

    goto :goto_1

    .line 1191
    :cond_0
    sget-object v12, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v11, v13}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x9

    const/16 v12, 0xa

    const/16 v13, 0xb

    goto :goto_0

    .line 1194
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "java.awt.Rectangle"

    aput-object v1, v0, v2

    const-string v1, "java.awt.Point"

    aput-object v1, v0, v3

    const-string v1, "java.awt.Font"

    aput-object v1, v0, v4

    const-string v1, "java.awt.Color"

    aput-object v1, v0, v5

    .line 1199
    array-length v1, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v1, :cond_3

    aget-object v12, v0, v11

    .line 1200
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_3

    .line 1204
    :cond_2
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v15, v12}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1207
    :cond_3
    :goto_3
    new-array v0, v14, [Ljava/lang/String;

    const-string v1, "org.springframework.util.LinkedMultiValueMap"

    aput-object v1, v0, v2

    const-string v1, "org.springframework.util.LinkedCaseInsensitiveMap"

    aput-object v1, v0, v3

    const-string v1, "org.springframework.remoting.support.RemoteInvocation"

    aput-object v1, v0, v4

    const-string v1, "org.springframework.remoting.support.RemoteInvocationResult"

    aput-object v1, v0, v5

    const-string v1, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    aput-object v1, v0, v6

    const-string v1, "org.springframework.security.web.savedrequest.SavedCookie"

    aput-object v1, v0, v7

    const-string v1, "org.springframework.security.web.csrf.DefaultCsrfToken"

    aput-object v1, v0, v8

    const-string v1, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    aput-object v1, v0, v9

    const-string v1, "org.springframework.security.core.context.SecurityContextImpl"

    aput-object v1, v0, v10

    const-string v1, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "org.springframework.security.core.userdetails.User"

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 1222
    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 1223
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_5

    .line 1227
    :cond_4
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1323
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1332
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v9, :cond_7

    .line 1338
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v3

    .line 1340
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v1

    .line 1343
    :cond_0
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 1344
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v10, v1

    :goto_0
    if-eqz v5, :cond_3

    .line 1345
    const-class v11, Ljava/lang/Object;

    if-eq v5, v11, :cond_3

    .line 1347
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v11, :cond_1

    goto :goto_1

    .line 1352
    :cond_1
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v10

    .line 1353
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    .line 1346
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 1358
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v11, v5

    move-object v12, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_5

    aget-object v13, v5, v10

    .line 1359
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v13, :cond_4

    .line 1361
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v12

    .line 1362
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v12, :cond_6

    .line 1367
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    move-object v13, v1

    move-object v10, v2

    move-object v12, v3

    move v11, v4

    goto :goto_4

    :cond_6
    move-object v10, v2

    move v11, v4

    move-object v13, v12

    move-object v12, v3

    goto :goto_4

    :cond_7
    move-object v10, v1

    move-object v12, v10

    move-object v13, v12

    const/4 v11, 0x0

    .line 1375
    :goto_4
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1376
    invoke-static {v6, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    if-eqz p3, :cond_8

    .line 1379
    invoke-static {v6, v7, v0, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v5, p2

    .line 1380
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    .line 1381
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1382
    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v10, :cond_a

    .line 1386
    array-length v1, v10

    if-eqz v1, :cond_a

    if-eqz p3, :cond_9

    const/4 v0, 0x1

    .line 1388
    invoke-static {v6, v7, v0, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v5, p2

    .line 1389
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 1391
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1392
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v1

    .line 1394
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1395
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1397
    invoke-static {v1, v15}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v7, v15

    goto :goto_7

    :cond_b
    move-object v7, v1

    .line 1401
    :goto_7
    new-instance v8, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move-object v4, v13

    move v5, v11

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v8
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_7

    .line 689
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    .line 690
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 691
    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_1

    const-wide/16 p0, 0x0

    .line 692
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 693
    :cond_1
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    .line 694
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 695
    :cond_2
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    .line 696
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 697
    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    .line 698
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 699
    :cond_4
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_5

    const-wide/16 p0, 0x0

    .line 700
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 701
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_6

    .line 702
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    if-eqz p1, :cond_2e

    .line 711
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_8

    return-object p0

    .line 715
    :cond_8
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_b

    .line 716
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_9

    return-object p0

    .line 720
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 721
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return-object p0

    .line 725
    :cond_a
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 728
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 729
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 731
    check-cast p0, Ljava/util/Collection;

    .line 733
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 734
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 735
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 736
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return-object v0

    .line 743
    :cond_d
    const-class v1, [B

    if-ne p1, v1, :cond_e

    .line 744
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 748
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    .line 752
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2d

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_10

    goto/16 :goto_a

    .line 756
    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2c

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_11

    goto/16 :goto_9

    .line 760
    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2b

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_12

    goto/16 :goto_8

    .line 764
    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2a

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_13

    goto/16 :goto_7

    .line 768
    :cond_13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_29

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_14

    goto/16 :goto_6

    .line 772
    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_28

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_15

    goto/16 :goto_5

    .line 776
    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_27

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_16

    goto/16 :goto_4

    .line 780
    :cond_16
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_26

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_17

    goto/16 :goto_3

    .line 784
    :cond_17
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_18

    .line 785
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 788
    :cond_18
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_19

    .line 789
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 792
    :cond_19
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_1a

    .line 793
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 796
    :cond_1a
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_1b

    .line 797
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 800
    :cond_1b
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_1c

    .line 801
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    return-object p0

    .line 804
    :cond_1c
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_1d

    .line 805
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0

    .line 808
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 809
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 812
    :cond_1e
    const-class p2, Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    const-string v1, "can not cast to : "

    if-eqz p2, :cond_20

    .line 813
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 815
    const-class p2, Ljava/util/Calendar;

    if-ne p1, p2, :cond_1f

    .line 816
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_1

    .line 819
    :cond_1f
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    .line 824
    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 821
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 828
    :cond_20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 829
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 830
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 831
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 833
    sget-object p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0

    .line 836
    :cond_21
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_25

    .line 837
    check-cast p0, Ljava/lang/String;

    .line 839
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_24

    const-string p2, "null"

    .line 840
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    const-string p2, "NULL"

    .line 841
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_2

    .line 845
    :cond_22
    const-class p2, Ljava/util/Currency;

    if-ne p1, p2, :cond_23

    .line 846
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 849
    :cond_23
    const-class p2, Ljava/util/Locale;

    if-ne p1, p2, :cond_25

    .line 850
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_2
    return-object v0

    .line 854
    :cond_25
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 781
    :cond_26
    :goto_3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 777
    :cond_27
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 773
    :cond_28
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 769
    :cond_29
    :goto_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 765
    :cond_2a
    :goto_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 761
    :cond_2b
    :goto_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 757
    :cond_2c
    :goto_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 753
    :cond_2d
    :goto_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 708
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clazz is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 929
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 931
    const-class v1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_5

    .line 935
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 937
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_5

    .line 939
    const-class p1, Ljava/util/Set;

    if-eq v0, p1, :cond_3

    const-class p1, Ljava/util/HashSet;

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 941
    :cond_1
    const-class p1, Ljava/util/TreeSet;

    if-ne v0, p1, :cond_2

    .line 942
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 944
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 940
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 947
    :goto_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 949
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1

    .line 956
    :cond_5
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_8

    .line 957
    :cond_6
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 958
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 960
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 961
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 963
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 964
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 965
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 967
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-object p1

    .line 974
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 975
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 976
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 981
    :cond_9
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_a

    .line 982
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 983
    instance-of v1, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_a

    .line 984
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 988
    :cond_a
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 903
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 904
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 907
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 908
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 911
    :cond_2
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 912
    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 913
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    .line 914
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NULL"

    .line 915
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return-object v0

    .line 920
    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_5

    return-object p0

    .line 924
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 185
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 186
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 189
    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 190
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 193
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 198
    :cond_3
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    .line 202
    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 210
    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 211
    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 214
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 225
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-object v0

    .line 215
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 641
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 642
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 645
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 646
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 649
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 650
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 652
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "null"

    .line 653
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "NULL"

    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "true"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "1"

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "false"

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "0"

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "Y"

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "T"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "F"

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "N"

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 675
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 670
    :cond_9
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 665
    :cond_a
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 660
    :cond_b
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    :goto_4
    return-object v0

    .line 679
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 112
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 113
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 117
    check-cast p0, Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NULL"

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0

    .line 127
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3

    .line 626
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 627
    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    .line 630
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 631
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 633
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 135
    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 136
    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 139
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to char, value : "

    if-eqz v1, :cond_4

    .line 140
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    .line 146
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 p0, 0x0

    .line 150
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 147
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 287
    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 288
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 291
    :cond_1
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 292
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v1, -0x1

    .line 297
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 298
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 299
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 302
    :cond_3
    instance-of v3, p0, Ljava/lang/String;

    const-string v4, "can not cast to Date, value : "

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 303
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 305
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 307
    :try_start_0
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object p0

    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    const-string v2, "/Date("

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ")/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    const/16 v2, 0x2d

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 323
    sget-object p0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string p0, "yyyy-MM-dd"

    goto :goto_0

    .line 326
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_8

    const-string p0, "yyyy-MM-dd HH:mm:ss"

    goto :goto_0

    .line 328
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_9

    const/16 p0, 0x1a

    .line 329
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_9

    const/16 p0, 0x1c

    .line 330
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x30

    if-ne p0, v0, :cond_9

    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    :cond_9
    const-string p0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 336
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 337
    sget-object p0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 339
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 341
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    return-object v0

    .line 349
    :cond_b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 312
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw p0

    :cond_c
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-gez v0, :cond_11

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oracle.sql.TIMESTAMP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "toJdbc"

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    .line 355
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v1, :cond_d

    .line 357
    :try_start_2
    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 361
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw p0

    :catch_1
    :goto_2
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 367
    :cond_d
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 371
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_2
    move-exception p0

    .line 369
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 374
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "oracle.sql.DATE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 375
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v1, :cond_f

    .line 377
    :try_start_4
    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 381
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw p0

    :catch_3
    :goto_3
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 387
    :cond_f
    :try_start_5
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 391
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_4
    move-exception p0

    .line 389
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 394
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_11
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 260
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 261
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 264
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    .line 267
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    .line 268
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2c

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ","

    const-string v1, ""

    .line 273
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 276
    :cond_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0

    .line 279
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const-string p2, "can not cast to : "

    .line 874
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 875
    check-cast p0, Ljava/lang/String;

    .line 876
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 880
    :cond_0
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 883
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 884
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 885
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    .line 886
    array-length v1, v0

    if-ge p0, v1, :cond_2

    .line 887
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 894
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 891
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 233
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 234
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 237
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    .line 240
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    .line 241
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2c

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ","

    const-string v1, ""

    .line 246
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 249
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0

    .line 252
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 582
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 583
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 586
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 587
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 590
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 591
    check-cast p0, Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "null"

    .line 594
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "NULL"

    .line 595
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x2c

    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ","

    const-string v1, ""

    .line 600
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 603
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0

    .line 606
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 607
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 610
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 611
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 612
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const-string v1, "andIncrement"

    .line 613
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "andDecrement"

    .line 614
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 615
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 616
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 618
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 622
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 683
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 994
    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const-string p1, "className"

    .line 995
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "methodName"

    .line 996
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "fileName"

    .line 997
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "lineNumber"

    .line 1000
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1008
    :goto_0
    new-instance p0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 1012
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1013
    instance-of v2, v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1014
    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 1018
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1020
    :cond_2
    invoke-virtual {p2, v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1026
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1027
    invoke-static {p0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1023
    :cond_3
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1032
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1035
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    .line 1036
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_1

    .line 1038
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_1
    if-nez p2, :cond_6

    .line 1042
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1044
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz p2, :cond_7

    .line 1046
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1047
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1050
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p1, v0, v1

    invoke-static {p2, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1054
    :cond_8
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_a

    const-string v0, "language"

    .line 1055
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "country"

    .line 1056
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1057
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1058
    check-cast v0, Ljava/lang/String;

    .line 1059
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1060
    check-cast v1, Ljava/lang/String;

    .line 1061
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_9
    if-nez v1, :cond_a

    .line 1063
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1068
    :cond_a
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_b

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_b

    .line 1069
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez p2, :cond_c

    .line 1073
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1077
    :cond_c
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 1078
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_d

    .line 1079
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_d
    if-eqz v3, :cond_e

    .line 1086
    invoke-virtual {v3, p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not get javaBeanDeserializer. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1088
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 528
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 529
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 532
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 533
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 534
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "null"

    .line 535
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "NULL"

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x2c

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ","

    const-string v3, ""

    .line 541
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 550
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 555
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    if-eqz v0, :cond_6

    .line 558
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0

    .line 562
    :cond_6
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 563
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 564
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const-string v1, "andIncrement"

    .line 565
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "andDecrement"

    .line 566
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 567
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 568
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 570
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 574
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 161
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 162
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 166
    check-cast p0, Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NULL"

    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0

    .line 177
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 405
    :cond_0
    instance-of v1, p0, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 406
    check-cast p0, Ljava/sql/Date;

    return-object p0

    .line 409
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 410
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 413
    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 414
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 419
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 420
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    .line 423
    :goto_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 424
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 425
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "null"

    .line 426
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "NULL"

    .line 427
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 431
    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    .line 434
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 435
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 436
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    .line 438
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Timestamp, value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    :goto_2
    cmp-long v0, v4, v2

    if-lez v0, :cond_a

    .line 447
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object p0

    .line 444
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 455
    :cond_0
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 456
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 459
    :cond_1
    instance-of v1, p0, Ljava/sql/Timestamp;

    if-eqz v1, :cond_2

    .line 460
    check-cast p0, Ljava/sql/Timestamp;

    return-object p0

    .line 463
    :cond_2
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 464
    new-instance v0, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 469
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    .line 470
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    move-wide v4, v2

    .line 473
    :goto_0
    instance-of v1, p0, Ljava/lang/String;

    const-string v6, "can not cast to Timestamp, value : "

    if-eqz v1, :cond_b

    .line 474
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 475
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "null"

    .line 476
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "NULL"

    .line 477
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, ".000000000"

    .line 481
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 482
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v0, ".000000"

    .line 483
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 487
    :cond_7
    :goto_1
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 488
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_3

    .line 490
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 492
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_3

    .line 494
    :cond_9
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    return-object v0

    :cond_b
    :goto_3
    cmp-long v0, v4, v2

    if-lez v0, :cond_c

    .line 503
    new-instance p0, Ljava/sql/Timestamp;

    invoke-direct {p0, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p0

    .line 500
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearClassMapping()V
    .locals 1

    .line 1232
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1233
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1803
    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v10, v3, v6

    .line 1804
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    .line 1808
    :cond_0
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1811
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v17, :cond_4

    .line 1814
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_2

    .line 1818
    :cond_1
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 1819
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1820
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 1822
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    .line 1823
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 1826
    :cond_2
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1827
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v8

    :cond_3
    move-object/from16 v18, v8

    move v13, v9

    move v14, v11

    move v15, v12

    goto :goto_1

    :cond_4
    move-object/from16 v18, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 1832
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 1839
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    move-object v12, v7

    .line 1842
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1843
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v7, v11

    move-object v8, v12

    move-object v5, v11

    move-object/from16 v11, p0

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v19

    invoke-direct/range {v7 .. v18}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 1845
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 1439
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1441
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    const/16 v17, 0x0

    .line 1445
    move-object/from16 v0, v17

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 1449
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v9, v10

    move-object v1, v0

    move-object/from16 v0, v17

    move-object v2, v0

    move-object v3, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_3a

    aget-object v6, v10, v7

    .line 1450
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    .line 1454
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1458
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1462
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1466
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/ClassLoader;

    if-ne v4, v8, :cond_3

    goto :goto_1

    .line 1470
    :cond_3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "getMetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1471
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v16, :cond_5

    .line 1475
    invoke-static {v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    move-object/from16 v23, v0

    move/from16 v30, v7

    move/from16 v21, v9

    move-object/from16 v32, v10

    move-object v0, v11

    move-object v14, v13

    const/16 v31, 0x0

    goto/16 :goto_21

    .line 1479
    :cond_5
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v4, :cond_6

    .line 1482
    invoke-static {v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    :cond_6
    const-string v8, "get"

    move-object/from16 v19, v11

    if-nez v4, :cond_f

    if-eqz v16, :cond_f

    if-nez v0, :cond_9

    .line 1487
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 1491
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 1492
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1495
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 1496
    array-length v11, v2

    move/from16 v21, v9

    const/4 v9, 0x0

    invoke-static {v2, v9, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1499
    array-length v11, v2

    new-array v11, v11, [S

    move-object/from16 v22, v0

    .line 1500
    :goto_2
    array-length v0, v2

    if-ge v9, v0, :cond_7

    .line 1501
    aget-object v0, v2, v9

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1502
    aput-short v9, v11, v0

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    goto :goto_2

    :cond_7
    move-object v2, v3

    move-object v3, v11

    move-object/from16 v0, v22

    goto :goto_3

    :cond_8
    move-object/from16 v22, v0

    :cond_9
    move/from16 v21, v9

    :goto_3
    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 1508
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x3

    .line 1509
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1510
    invoke-static {v2, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_d

    .line 1512
    aget-short v11, v3, v11

    .line 1513
    aget-object v11, v1, v11

    if-eqz v11, :cond_b

    move-object/from16 v22, v0

    .line 1515
    array-length v0, v11

    move-object/from16 v23, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_c

    move/from16 v24, v0

    aget-object v0, v11, v1

    move-object/from16 v25, v2

    .line 1516
    instance-of v2, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v2, :cond_a

    .line 1517
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v24

    move-object/from16 v2, v25

    goto :goto_4

    :cond_b
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    :cond_c
    move-object/from16 v25, v2

    :goto_5
    if-nez v4, :cond_e

    .line 1523
    invoke-static {v9, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1525
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v26, v3

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v0

    goto :goto_7

    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v25, v2

    :cond_e
    move-object/from16 v26, v3

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    goto :goto_6

    :cond_f
    move/from16 v21, v9

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    :goto_6
    move-object/from16 v22, v4

    :goto_7
    if-eqz v22, :cond_13

    .line 1533
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_8
    move/from16 v30, v7

    move-object/from16 v32, v10

    move-object v14, v13

    move-object/from16 v0, v19

    const/16 v31, 0x0

    goto/16 :goto_20

    .line 1537
    :cond_10
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 1538
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1539
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v27

    .line 1541
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 1542
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_11

    .line 1545
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    move-object v8, v0

    .line 1551
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    move-object v0, v5

    move-object v1, v8

    move-object v2, v6

    move-object/from16 v4, p0

    move-object v6, v5

    move-object/from16 v5, v20

    move-object/from16 v29, v6

    move v6, v9

    move/from16 v30, v7

    move v7, v11

    move-object v11, v8

    const/16 v31, 0x0

    move/from16 v8, v27

    move-object/from16 v9, v22

    move-object/from16 v32, v10

    move-object/from16 v10, v28

    move-object v13, v11

    move-object/from16 v15, v19

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v29

    .line 1553
    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_12
    move/from16 v30, v7

    move-object/from16 v32, v10

    move-object/from16 v15, v19

    const/16 v31, 0x0

    .line 1557
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    .line 1558
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v18

    goto :goto_9

    :cond_13
    move/from16 v30, v7

    move-object/from16 v32, v10

    move-object/from16 v15, v19

    const/16 v31, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    .line 1562
    :cond_14
    :goto_9
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v13, 0x66

    const/16 v10, 0x5f

    if-eqz v0, :cond_28

    .line 1563
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_16

    :cond_15
    :goto_a
    move-object/from16 v14, p2

    :goto_b
    move-object v0, v15

    move-object/from16 v15, p5

    goto/16 :goto_20

    :cond_16
    const-string v0, "getClass"

    .line 1567
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    const-string v0, "getDeclaringClass"

    .line 1571
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    const/4 v0, 0x3

    .line 1575
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1578
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v3, 0x200

    if-le v2, v3, :cond_19

    goto :goto_c

    :cond_19
    if-ne v2, v10, :cond_1a

    .line 1588
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1a
    if-ne v2, v13, :cond_1b

    .line 1590
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 1591
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_15

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1592
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 1581
    :cond_1c
    :goto_c
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_1d

    .line 1582
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 1584
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1586
    :goto_d
    invoke-static {v14, v5, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1597
    :goto_e
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_a

    .line 1603
    :cond_1e
    invoke-static {v1, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1605
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1f

    .line 1606
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_1f

    const/4 v8, 0x3

    .line 1608
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_f

    :cond_1f
    const/4 v8, 0x3

    :goto_f
    move-object v3, v0

    if-eqz v3, :cond_25

    .line 1615
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_24

    .line 1618
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_a

    .line 1622
    :cond_20
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 1623
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 1624
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v7

    .line 1626
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_21

    .line 1627
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p2

    if-eqz v9, :cond_22

    .line 1630
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_22

    move-object v14, v9

    goto/16 :goto_b

    :cond_21
    move-object/from16 v9, p2

    .line 1637
    :cond_22
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_23

    .line 1638
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v27, v7

    move-object v7, v9

    move-object/from16 v20, v11

    move-object v11, v0

    goto :goto_11

    :cond_23
    move-object v11, v0

    move/from16 v19, v4

    move/from16 v27, v7

    move-object v7, v9

    move-object/from16 v20, v18

    move/from16 v18, v2

    goto :goto_11

    :cond_24
    move-object/from16 v7, p2

    move/from16 v19, v11

    move-object/from16 v20, v18

    move-object v11, v0

    goto :goto_10

    :cond_25
    move-object/from16 v7, p2

    move/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v20, v18

    :goto_10
    move/from16 v18, v9

    :goto_11
    if-eqz v7, :cond_26

    .line 1644
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_26

    move-object v14, v7

    goto/16 :goto_b

    :cond_26
    move-object v9, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_27

    .line 1651
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_12

    :cond_27
    move-object v4, v1

    .line 1654
    :goto_12
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v28, 0x0

    move-object v0, v2

    move-object v1, v4

    move-object v13, v2

    move-object v2, v6

    move-object v15, v4

    move-object/from16 v4, p0

    move-object v12, v5

    move-object/from16 v5, v28

    move-object/from16 v28, v6

    move/from16 v6, v18

    move/from16 v7, v19

    const/16 v29, 0x3

    move/from16 v8, v27

    move-object/from16 v33, v9

    move-object/from16 v9, v22

    move-object v10, v11

    const/4 v14, 0x3

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v10, v33

    .line 1656
    invoke-interface {v10, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v11, v19

    goto :goto_13

    :cond_28
    move-object v12, v5

    move-object/from16 v28, v6

    move-object v10, v15

    const/4 v14, 0x3

    move-object/from16 v20, v18

    move/from16 v18, v9

    :goto_13
    const-string v0, "is"

    .line 1659
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1660
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v14, :cond_29

    goto/16 :goto_1c

    .line 1664
    :cond_29
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2a

    .line 1665
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    const/4 v0, 0x2

    .line 1669
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1672
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1673
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_2b

    .line 1674
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 1676
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    move-object/from16 v13, p3

    .line 1678
    invoke-static {v13, v12, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_2c
    move-object/from16 v13, p3

    const/16 v2, 0x5f

    const/4 v3, 0x3

    if-ne v1, v2, :cond_2d

    .line 1680
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    move-object v1, v0

    move-object v0, v12

    move-object/from16 v12, p0

    goto :goto_16

    :cond_2d
    const/16 v2, 0x66

    if-ne v1, v2, :cond_39

    .line 1682
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1687
    :goto_16
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :goto_17
    goto/16 :goto_1d

    .line 1693
    :cond_2e
    invoke-static {v1, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 1696
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v3, v0

    goto :goto_18

    :cond_2f
    move-object v3, v2

    :goto_18
    if-eqz v3, :cond_35

    .line 1701
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_34

    .line 1704
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_17

    .line 1708
    :cond_30
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 1709
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 1710
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v5

    .line 1712
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_31

    .line 1713
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, p2

    if-eqz v14, :cond_32

    .line 1716
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_32

    goto :goto_1a

    :cond_31
    move-object/from16 v14, p2

    .line 1723
    :cond_32
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_33

    .line 1724
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    move-object v11, v0

    move v7, v4

    move v8, v5

    move-object/from16 v20, v6

    move v6, v2

    goto :goto_19

    :cond_33
    move-object v11, v0

    move v6, v2

    move v7, v4

    move v8, v5

    goto :goto_19

    :cond_34
    move-object/from16 v14, p2

    move v7, v11

    move/from16 v6, v18

    move/from16 v8, v27

    move-object v11, v0

    goto :goto_19

    :cond_35
    move-object/from16 v14, p2

    move v7, v11

    move-object/from16 v11, v17

    move/from16 v6, v18

    move/from16 v8, v27

    :goto_19
    if-eqz v14, :cond_36

    .line 1730
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_36

    :goto_1a
    goto :goto_1e

    :cond_36
    move-object/from16 v15, p5

    if-eqz v15, :cond_37

    .line 1737
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1b

    :cond_37
    move-object v9, v1

    .line 1741
    :goto_1b
    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_1f

    .line 1745
    :cond_38
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v18, 0x0

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v28

    move-object/from16 v4, p0

    move-object v13, v5

    move-object/from16 v5, v18

    move-object/from16 v34, v9

    move-object/from16 v9, v22

    move-object/from16 v35, v10

    move-object v10, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    .line 1747
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_39
    :goto_1c
    move-object/from16 v12, p0

    :goto_1d
    move-object/from16 v14, p2

    :goto_1e
    move-object/from16 v15, p5

    :goto_1f
    move-object v0, v10

    :goto_20
    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    :goto_21
    add-int/lit8 v7, v30, 0x1

    move-object v11, v0

    move-object v13, v14

    move/from16 v9, v21

    move-object/from16 v0, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p3

    goto/16 :goto_0

    :cond_3a
    move-object v0, v11

    move-object v14, v13

    .line 1751
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1752
    invoke-static {v12, v14, v15, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    move/from16 v1, p4

    .line 1754
    invoke-static {v12, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1421
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1425
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1426
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1427
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1429
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 1412
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1414
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1411
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1417
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 3

    .line 2151
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2154
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 2157
    :cond_0
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2158
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_2

    .line 2159
    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_2

    .line 2161
    :cond_2
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2162
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_2

    .line 2163
    :cond_3
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2164
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 2165
    :cond_4
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2167
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    .line 2168
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    .line 2170
    :cond_5
    const-class p0, Ljava/lang/Object;

    .line 2172
    :goto_0
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_2

    .line 2175
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2177
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create instance error, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2156
    :cond_7
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object p0
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 2067
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2073
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2074
    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p0, v2

    .line 2075
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .locals 5

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 2303
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2304
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .locals 5

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 2284
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2285
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_1
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 2016
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2019
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2020
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2023
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 2024
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2025
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2028
    :cond_2
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1259
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2123
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 2125
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2127
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 2128
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 2129
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2130
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2131
    aget-object p0, v1, v0

    .line 2135
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const-string v1, "can not create ASMParser"

    if-eqz v0, :cond_2

    .line 2136
    check-cast p0, Ljava/lang/Class;

    .line 2137
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 2138
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2141
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2146
    :cond_3
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4

    .line 2097
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2098
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2100
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    .line 2101
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 2102
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2103
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2104
    aget-object p0, v1, v0

    goto :goto_0

    .line 2109
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    .line 2110
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2111
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2112
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    .line 2116
    const-class p0, Ljava/lang/Object;

    :cond_3
    return-object p0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 2032
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2033
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2038
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2039
    const-class p2, Ljava/lang/Object;

    if-eq p0, p2, :cond_2

    .line 2040
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p0, :cond_0

    .line 1764
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 1767
    array-length v1, p0

    if-lez v1, :cond_4

    .line 1768
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1769
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1770
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1773
    :cond_1
    array-length p2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    .line 1774
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v3, :cond_2

    .line 1776
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1780
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1781
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1784
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1785
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    .line 1789
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_6
    return-object v0
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1983
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    return-object p0

    .line 1987
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1988
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 7

    .line 2330
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 2331
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 2332
    array-length v5, v4

    if-lez v5, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 2335
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8

    .line 2344
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.KClassImpl"

    .line 2346
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2347
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const-string v3, "getConstructors"

    .line 2348
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    const-string v0, "kotlin.reflect.KFunction"

    .line 2350
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getParameters"

    .line 2351
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const-string v0, "kotlin.reflect.KParameter"

    .line 2353
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getName"

    .line 2354
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2356
    :catch_0
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2360
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return-object v3

    .line 2364
    :cond_1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_2

    return-object v3

    .line 2370
    :cond_2
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2371
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 2372
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2373
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2372
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_1

    .line 2376
    :cond_3
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2377
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 2378
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2379
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2380
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 2384
    :catch_1
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    return-object v3
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2057
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2063
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result p0

    return p0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1852
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v0, :cond_1

    .line 1853
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1854
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1855
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2184
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2185
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2186
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2187
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2189
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "TODO"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2047
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2053
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 1862
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 1863
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_7

    .line 1864
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1865
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v6, v0, v5

    .line 1866
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 1867
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 1868
    array-length v11, v10

    array-length v12, v1

    if-eq v11, v12, :cond_0

    goto :goto_4

    .line 1871
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_4

    :cond_1
    const/4 v11, 0x0

    .line 1875
    :goto_2
    array-length v12, v1

    if-ge v11, v12, :cond_3

    .line 1876
    aget-object v12, v10, v11

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_4

    goto :goto_4

    .line 1886
    :cond_4
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v9, :cond_5

    return-object v9

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1894
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 1899
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1900
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1902
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_f

    aget-object v6, p0, v5

    .line 1903
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1904
    array-length v8, v7

    array-length v9, v1

    if-eq v8, v9, :cond_9

    goto :goto_8

    .line 1907
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    .line 1911
    :goto_6
    array-length v9, v1

    if-ge v8, v9, :cond_c

    .line 1912
    aget-object v9, v7, v8

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v7, 0x0

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x1

    :goto_7
    if-nez v7, :cond_d

    goto :goto_8

    .line 1922
    :cond_d
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v6, :cond_e

    return-object v6

    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2239
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "javax.persistence.OneToMany"

    .line 2241
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    .line 2244
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 2248
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-nez v1, :cond_2

    return v0

    .line 2252
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 2

    .line 1967
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1971
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1972
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1973
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    return v1

    .line 1976
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2260
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "org.hibernate.Hibernate"

    .line 2262
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isInitialized"

    .line 2263
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2266
    :catch_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 2270
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    .line 2272
    :try_start_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2273
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_2
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1933
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1939
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v3

    .line 1940
    array-length v4, v3

    if-lez v4, :cond_2

    const/4 p0, 0x0

    .line 1941
    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    .line 1942
    aget-object v0, v3, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 1948
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1949
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 1950
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1957
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1958
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 1

    .line 2313
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "kotlin.Metadata"

    .line 2315
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 2317
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 2321
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2325
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    .line 2391
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v2, :cond_0

    .line 2393
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "kotlin.ranges.CharRange"

    .line 2395
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    .line 2396
    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.IntRange"

    .line 2398
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2399
    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.LongRange"

    .line 2401
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2402
    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.ClosedFloatRange"

    .line 2404
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2405
    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.ClosedDoubleRange"

    .line 2407
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2408
    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2412
    :catch_0
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 2416
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v0, :cond_1

    return v4

    .line 2420
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-nez p0, :cond_2

    return v4

    .line 2425
    :cond_2
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 507
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 508
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    return v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1243
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.nio.file.Path"

    .line 1245
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 1247
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 1251
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2194
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 2195
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "net.sf.cglib.proxy.Factory"

    .line 2196
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "org.springframework.cglib.proxy.Factory"

    .line 2197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "javassist.util.proxy.ProxyObject"

    .line 2201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    return v1
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2216
    :cond_0
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "java.beans.Transient"

    .line 2218
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2222
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    throw p0

    :catch_0
    :goto_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2226
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 2227
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1237
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1267
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 1273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1274
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1275
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "L"

    .line 1278
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1280
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    .line 1285
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1286
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1291
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1296
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_5

    .line 1299
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1300
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-object v0, p1

    .line 1309
    :catch_2
    :cond_5
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1310
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-object v0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    .line 2079
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 2083
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2088
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 2090
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    :goto_0
    return-void
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    const-string v0, "_"

    .line 858
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 860
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 861
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 864
    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 865
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 868
    :cond_1
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1995
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "java.util.Optional"

    .line 1997
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2001
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw p0

    :catch_0
    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2005
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2006
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2007
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 2008
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :cond_1
    return-object p0
.end method
