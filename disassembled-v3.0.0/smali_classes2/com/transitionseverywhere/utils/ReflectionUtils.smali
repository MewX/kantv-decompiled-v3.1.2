.class public Lcom/transitionseverywhere/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final FOUR_OBJECTS_ARRAY:[Ljava/lang/Object;

.field private static final ONE_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ReflectionUtils"

.field private static final THREE_OBJECTS_ARRAY:[Ljava/lang/Object;

.field private static final TWO_OBJECTS_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->EMPTY_ARRAY:[Ljava/lang/Object;

    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->ONE_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->TWO_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 v0, 0x3

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->THREE_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 v0, 0x4

    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->FOUR_OBJECTS_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 111
    sget-object p2, Lcom/transitionseverywhere/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string v0, "Exception in getFieldValue"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static varargs getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 1

    .line 126
    sget-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->EMPTY_ARRAY:[Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 130
    sget-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->ONE_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 131
    invoke-static {p0, p1, p2, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 132
    sget-object p1, Lcom/transitionseverywhere/utils/ReflectionUtils;->ONE_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 138
    sget-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->TWO_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    .line 139
    aput-object p4, v0, p3

    .line 140
    invoke-static {p0, p1, p2, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 141
    sget-object p1, Lcom/transitionseverywhere/utils/ReflectionUtils;->TWO_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 142
    aput-object p2, p1, p3

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 149
    sget-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->THREE_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    .line 150
    aput-object p4, v0, p3

    const/4 p4, 0x2

    .line 151
    aput-object p5, v0, p4

    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 153
    sget-object p1, Lcom/transitionseverywhere/utils/ReflectionUtils;->THREE_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 154
    aput-object p2, p1, p3

    .line 155
    aput-object p2, p1, p4

    return-object p0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 162
    sget-object v0, Lcom/transitionseverywhere/utils/ReflectionUtils;->FOUR_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    .line 163
    aput-object p4, v0, p3

    const/4 p4, 0x2

    .line 164
    aput-object p5, v0, p4

    const/4 p5, 0x3

    .line 165
    aput-object p6, v0, p5

    .line 166
    invoke-static {p0, p1, p2, v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 167
    sget-object p1, Lcom/transitionseverywhere/utils/ReflectionUtils;->FOUR_OBJECTS_ARRAY:[Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 168
    aput-object p2, p1, p3

    .line 169
    aput-object p2, p1, p4

    .line 170
    aput-object p2, p1, p5

    return-object p0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    return-object p1

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 75
    sget-object p2, Lcom/transitionseverywhere/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string p3, "Exception in invoke"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    sget-object p1, Lcom/transitionseverywhere/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    const-string p2, "Exception in setFieldValue"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
