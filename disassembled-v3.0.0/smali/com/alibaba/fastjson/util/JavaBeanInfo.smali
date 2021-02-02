.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

.field public creatorConstructorParameters:[Ljava/lang/String;

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public orders:[Ljava/lang/String;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 60
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 63
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 65
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p2, 0x0

    if-eqz p7, :cond_3

    .line 67
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p6

    .line 68
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 71
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 76
    :goto_1
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p1

    .line 77
    array-length p6, p1

    if-nez p6, :cond_2

    move-object p1, p2

    :cond_2
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    .line 84
    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {p8, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p1

    new-array p2, p2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 88
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    const/4 p7, 0x0

    if-eqz p6, :cond_7

    .line 89
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    invoke-direct {p1, p6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p8, p6

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p8, :cond_4

    aget-object v1, p6, v0

    .line 91
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 94
    :cond_4
    iget-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->orders:[Ljava/lang/String;

    array-length p8, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    if-ge v0, p8, :cond_6

    aget-object v2, p6, v0

    .line 95
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v3, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 97
    aput-object v3, p2, v1

    .line 98
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 101
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/alibaba/fastjson/util/FieldInfo;

    add-int/lit8 p8, v1, 0x1

    .line 102
    aput-object p6, p2, v1

    move v1, p8

    goto :goto_5

    .line 105
    :cond_7
    array-length p6, p1

    invoke-static {p1, p7, p2, p7, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 109
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 110
    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 112
    :cond_9
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p3, :cond_a

    .line 115
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    iput p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_6

    :cond_a
    if-eqz p5, :cond_b

    .line 117
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    iput p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    goto :goto_6

    .line 119
    :cond_b
    iput p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    :goto_6
    if-eqz p4, :cond_c

    .line 123
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    .line 124
    iget-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p2

    if-eq p1, p2, :cond_c

    .line 125
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :cond_c
    return-void
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .line 146
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 149
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 159
    :cond_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    if-gez v2, :cond_2

    .line 162
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    :cond_4
    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .line 175
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "ZZ)",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 184
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 186
    invoke-static {v12, v15}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v11

    .line 188
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 189
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v0

    .line 192
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/16 v16, 0x0

    if-nez v0, :cond_1

    if-nez v11, :cond_0

    .line 197
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    move-object/from16 v17, v2

    goto :goto_1

    :cond_1
    move-object/from16 v17, v16

    :goto_1
    const/16 v18, 0x0

    const/4 v5, 0x0

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    move-object v0, v12

    :goto_2
    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 213
    invoke-static {v12, v13, v14, v8, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 215
    :cond_2
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    .line 218
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :goto_4
    const/4 v4, 0x2

    if-nez v17, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    if-eqz v2, :cond_2b

    .line 220
    :cond_7
    invoke-static {v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    const-string v5, "illegal json creator"

    if-eqz v19, :cond_c

    if-nez v2, :cond_c

    .line 223
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 225
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 226
    array-length v0, v9

    if-lez v0, :cond_b

    .line 227
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v13

    const/4 v14, 0x0

    .line 228
    :goto_5
    array-length v0, v9

    if-ge v14, v0, :cond_b

    .line 229
    aget-object v0, v13, v14

    .line 231
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 232
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_8

    .line 233
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, v16

    :goto_7
    if-eqz v0, :cond_a

    .line 240
    aget-object v3, v9, v14

    .line 241
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v14

    .line 242
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 243
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v17

    .line 244
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v18

    .line 245
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v20

    .line 246
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object/from16 p1, v9

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 p2, v13

    move-object v13, v5

    move-object v5, v7

    const/4 v7, 0x0

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 p4, v10

    move-object v10, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 248
    invoke-static {v10, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p1

    move-object v8, v10

    move-object v5, v13

    const/4 v6, 0x0

    move-object/from16 v13, p2

    move-object/from16 v10, p4

    goto :goto_5

    :cond_a
    move-object v13, v5

    .line 238
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v10, v8

    .line 252
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, v19

    move-object v7, v15

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    :cond_c
    move-object/from16 p4, v10

    move-object v10, v8

    move-object v8, v13

    move-object v13, v5

    .line 255
    invoke-static {v12, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 257
    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 259
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 260
    array-length v0, v6

    if-lez v0, :cond_11

    .line 261
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    const/4 v14, 0x0

    .line 262
    :goto_8
    array-length v0, v6

    if-ge v14, v0, :cond_10

    .line 263
    aget-object v0, v9, v14

    .line 265
    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 266
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_d

    .line 267
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_a

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v0, v16

    :goto_a
    if-eqz v0, :cond_f

    .line 275
    aget-object v3, v6, v14

    .line 276
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v14

    .line 277
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p4

    invoke-static {v12, v1, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 278
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 279
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 280
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v18

    .line 281
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object/from16 p1, v9

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v6

    move v6, v7

    move/from16 v7, v17

    move-object v12, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 283
    invoke-static {v10, v9}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p1

    move-object/from16 p4, v12

    move-object/from16 v6, v19

    move-object/from16 v12, p0

    goto :goto_8

    .line 272
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_10
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v5, v20

    move-object v7, v15

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    :cond_11
    const/4 v13, 0x3

    move-object/from16 v12, p0

    move-object/from16 v29, p4

    goto/16 :goto_15

    :cond_12
    move-object/from16 v12, p4

    if-nez v2, :cond_2a

    .line 289
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v0, :cond_13

    .line 292
    array-length v0, v1

    if-lez v0, :cond_13

    .line 293
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    move-object v6, v0

    move-object/from16 v19, v1

    const/4 v7, 0x1

    const/16 v22, 0x0

    goto/16 :goto_f

    .line 298
    :cond_13
    array-length v0, v1

    move-object/from16 v5, v16

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_20

    aget-object v6, v1, v2

    .line 299
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const-string v7, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    .line 301
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 302
    array-length v7, v3

    if-ne v7, v4, :cond_14

    const/4 v7, 0x0

    aget-object v4, v3, v7

    const-class v7, Ljava/lang/String;

    if-ne v4, v7, :cond_14

    const/4 v4, 0x1

    aget-object v7, v3, v4

    move/from16 v23, v0

    const-class v0, Ljava/lang/String;

    if-ne v7, v0, :cond_15

    .line 304
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 305
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v6

    const/4 v7, 0x1

    const/16 v22, 0x0

    :goto_c
    move-object v6, v0

    goto/16 :goto_f

    :cond_14
    move/from16 v23, v0

    :cond_15
    const-string v0, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    .line 310
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 311
    array-length v0, v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_17

    const/4 v0, 0x0

    aget-object v7, v3, v0

    const-class v0, Ljava/lang/Object;

    if-ne v7, v0, :cond_17

    const/4 v0, 0x1

    aget-object v7, v3, v0

    const-class v4, Ljava/lang/Object;

    if-ne v7, v4, :cond_16

    const/4 v4, 0x2

    aget-object v7, v3, v4

    const-class v4, Ljava/util/Collection;

    if-ne v7, v4, :cond_16

    .line 316
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x3

    .line 317
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "principal"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "credentials"

    aput-object v2, v1, v0

    const-string v0, "authorities"

    const/4 v7, 0x2

    aput-object v0, v1, v7

    move-object/from16 v19, v6

    const/4 v7, 0x1

    const/16 v22, 0x0

    move-object v6, v1

    goto :goto_f

    :cond_16
    const/4 v4, 0x3

    :cond_17
    const/4 v7, 0x2

    const-string v0, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    .line 322
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 323
    array-length v0, v3

    const/4 v7, 0x1

    if-ne v0, v7, :cond_19

    const/16 v22, 0x0

    aget-object v0, v3, v22

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_1a

    .line 326
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "authority"

    aput-object v1, v0, v22

    move-object/from16 v19, v6

    goto :goto_c

    :cond_18
    const/4 v7, 0x1

    :cond_19
    const/16 v22, 0x0

    .line 334
    :cond_1a
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_d

    :cond_1b
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_1c

    goto :goto_e

    .line 338
    :cond_1c
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 339
    array-length v3, v0

    if-nez v3, :cond_1d

    goto :goto_e

    :cond_1d
    if-eqz v19, :cond_1e

    .line 343
    array-length v3, v0

    array-length v4, v5

    if-gt v3, v4, :cond_1e

    goto :goto_e

    :cond_1e
    move-object v5, v0

    move-object/from16 v19, v6

    :cond_1f
    :goto_e
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v23

    const/4 v4, 0x2

    goto/16 :goto_b

    :cond_20
    const/4 v7, 0x1

    const/16 v22, 0x0

    move-object v6, v5

    :goto_f
    if-eqz v6, :cond_21

    .line 354
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object v5, v0

    goto :goto_10

    :cond_21
    move-object/from16 v5, v16

    :goto_10
    if-eqz v6, :cond_29

    .line 357
    array-length v0, v5

    array-length v1, v6

    if-ne v0, v1, :cond_29

    .line 359
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v23

    const/4 v4, 0x0

    .line 360
    :goto_11
    array-length v0, v5

    if-ge v4, v0, :cond_28

    .line 361
    aget-object v0, v23, v4

    .line 362
    aget-object v1, v6, v4

    .line 365
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_23

    aget-object v7, v0, v3

    move-object/from16 v24, v0

    .line 366
    instance-of v0, v7, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_22

    .line 367
    move-object v0, v7

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_13

    :cond_22
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    const/4 v7, 0x1

    goto :goto_12

    :cond_23
    move-object/from16 v0, v16

    .line 372
    :goto_13
    aget-object v3, v5, v4

    .line 373
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v7, v2, v4

    move-object/from16 v24, v5

    move-object v2, v12

    move-object/from16 v12, p0

    .line 374
    invoke-static {v12, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_24

    if-nez v0, :cond_24

    .line 377
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_24
    if-nez v0, :cond_26

    const-string v0, "org.springframework.security.core.userdetails.User"

    .line 385
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "password"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 387
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v27, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    goto :goto_14

    :cond_25
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    goto :goto_14

    .line 392
    :cond_26
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v25

    .line 393
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_27

    move-object/from16 v1, v25

    .line 396
    :cond_27
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v25

    .line 397
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v26

    .line 398
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v0

    move/from16 v27, v0

    .line 400
    :goto_14
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v2, p0

    move-object/from16 v30, v13

    const/4 v13, 0x3

    move/from16 v21, v4

    move-object v4, v7

    move-object/from16 v31, v6

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 402
    invoke-static {v10, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    add-int/lit8 v4, v21, 0x1

    move-object/from16 v8, p1

    move-object/from16 v5, v24

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v6, v31

    const/4 v7, 0x1

    const/16 v22, 0x0

    goto/16 :goto_11

    :cond_28
    const/4 v13, 0x3

    move-object/from16 v29, v12

    move-object/from16 v12, p0

    .line 405
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 406
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, v19

    move-object v7, v15

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9

    :cond_29
    move-object/from16 v12, p0

    .line 409
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 v13, 0x3

    move-object/from16 v29, v12

    move-object/from16 v12, p0

    goto :goto_15

    :cond_2b
    move-object/from16 v29, v10

    const/4 v13, 0x3

    move-object v10, v8

    move-object/from16 v20, v5

    move-object/from16 v19, v16

    :cond_2c
    :goto_15
    if-eqz v17, :cond_2d

    .line 415
    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_2d
    const-string v8, "set"

    if-eqz v11, :cond_41

    .line 421
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_2e

    .line 423
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_2e
    move-object/from16 v0, v16

    :goto_16
    if-eqz v0, :cond_2f

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    :cond_2f
    const-string v0, "with"

    :cond_30
    move-object v7, v0

    .line 430
    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v5, v6

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v5, :cond_3b

    aget-object v2, v6, v4

    .line 431
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_18
    move/from16 v25, v4

    move/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v21, v7

    move-object v13, v8

    move-object/from16 v34, v9

    move-object v14, v10

    move-object/from16 p4, v15

    move-object/from16 v35, v29

    move-object v15, v11

    goto/16 :goto_1d

    .line 435
    :cond_31
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_18

    .line 441
    :cond_32
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_33

    .line 444
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    :cond_33
    move-object/from16 v21, v0

    if-eqz v21, :cond_36

    .line 448
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_18

    .line 452
    :cond_34
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v22

    .line 453
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 454
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v24

    .line 456
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 457
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 458
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v0, v3

    move-object v13, v3

    move-object/from16 v3, v25

    move/from16 v25, v4

    move-object/from16 v4, p0

    move/from16 v28, v5

    move-object/from16 v5, p1

    move-object/from16 v30, v6

    move/from16 v6, v22

    move-object/from16 v32, v7

    move/from16 v7, v23

    move-object/from16 v33, v8

    move/from16 v8, v24

    move-object/from16 v34, v9

    move-object/from16 v9, v21

    move-object/from16 v36, v10

    move-object/from16 v35, v29

    move-object/from16 v10, v26

    move-object/from16 p4, v15

    move-object v15, v11

    move-object/from16 v11, v27

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v11, v36

    invoke-static {v11, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object v14, v11

    move-object/from16 v21, v32

    move-object/from16 v13, v33

    goto/16 :goto_1d

    :cond_35
    move/from16 v25, v4

    move/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 p4, v15

    move-object/from16 v35, v29

    move-object v15, v11

    move-object v11, v10

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    goto :goto_19

    :cond_36
    move/from16 v25, v4

    move/from16 v28, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 p4, v15

    move-object/from16 v35, v29

    move-object v15, v11

    move-object v11, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 464
    :goto_19
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v33

    .line 466
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_37

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v32

    :goto_1a
    const/4 v9, 0x0

    goto :goto_1c

    :cond_37
    move-object/from16 v10, v32

    .line 469
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    :goto_1b
    move-object/from16 v21, v10

    move-object v14, v11

    goto :goto_1d

    .line 473
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_39

    goto :goto_1b

    .line 477
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    .line 480
    :goto_1c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 481
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_1b

    .line 485
    :cond_3a
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v9, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v37, v5

    move-object/from16 v5, p1

    move-object/from16 v9, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v22

    move-object v14, v11

    move-object/from16 v11, v23

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_1d
    add-int/lit8 v4, v25, 0x1

    move-object v8, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v7, v21

    move/from16 v5, v28

    move-object/from16 v6, v30

    move-object/from16 v9, v34

    move-object/from16 v29, v35

    const/4 v13, 0x3

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    goto/16 :goto_17

    :cond_3b
    move-object v13, v8

    move-object/from16 v34, v9

    move-object v14, v10

    move-object/from16 p4, v15

    move-object/from16 v35, v29

    move-object v15, v11

    if-eqz v15, :cond_42

    .line 494
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    if-eqz v0, :cond_3c

    .line 498
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_3c
    move-object/from16 v0, v16

    :goto_1e
    if-eqz v0, :cond_3d

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3e

    :cond_3d
    const-string v0, "build"

    :cond_3e
    const/4 v11, 0x0

    .line 506
    :try_start_0
    new-array v1, v11, [Ljava/lang/Class;

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v18, :cond_3f

    :try_start_1
    const-string v0, "create"

    .line 515
    new-array v1, v11, [Ljava/lang/Class;

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3f
    if-eqz v18, :cond_40

    .line 527
    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_1f

    .line 524
    :cond_40
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    move-object v13, v8

    move-object/from16 v34, v9

    move-object v14, v10

    move-object/from16 p4, v15

    move-object/from16 v35, v29

    move-object v15, v11

    :cond_42
    const/4 v11, 0x0

    :goto_1f
    move-object/from16 v10, v34

    .line 531
    array-length v9, v10

    const/4 v8, 0x0

    :goto_20
    const/4 v7, 0x4

    if-ge v8, v9, :cond_5d

    aget-object v2, v10, v8

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 533
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_44

    :cond_43
    :goto_21
    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v33, v13

    move-object v13, v14

    move-object/from16 v24, v15

    move-object/from16 v15, v35

    const/16 v25, 0x1

    const/16 v26, 0x2

    :goto_22
    const/16 v30, 0x0

    :goto_23
    move-object/from16 v14, p2

    goto/16 :goto_2c

    .line 540
    :cond_44
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 541
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_21

    .line 545
    :cond_45
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_46

    goto :goto_21

    .line 549
    :cond_46
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 551
    array-length v3, v1

    if-eqz v3, :cond_43

    array-length v3, v1

    const/4 v5, 0x2

    if-le v3, v5, :cond_47

    goto :goto_21

    .line 555
    :cond_47
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v23, :cond_48

    .line 556
    array-length v3, v1

    if-ne v3, v5, :cond_48

    aget-object v3, v1, v11

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_48

    const/4 v4, 0x1

    aget-object v3, v1, v4

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_48

    .line 560
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v1, ""

    move-object v0, v7

    move-object/from16 v4, p0

    const/16 v26, 0x2

    move-object/from16 v5, p1

    move-object/from16 v38, v7

    move/from16 v7, v21

    move/from16 v27, v8

    move/from16 v8, v22

    move/from16 v28, v9

    move-object/from16 v9, v23

    move-object/from16 v29, v10

    move-object/from16 v10, v24

    move-object/from16 v24, v15

    const/4 v15, 0x0

    move-object/from16 v11, v25

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_24

    :cond_48
    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v24, v15

    const/4 v15, 0x0

    const/16 v26, 0x2

    .line 565
    array-length v3, v1

    const/4 v11, 0x1

    if-eq v3, v11, :cond_4a

    :cond_49
    :goto_24
    move-object/from16 v33, v13

    move-object v13, v14

    move-object/from16 v15, v35

    :goto_25
    const/16 v25, 0x1

    goto/16 :goto_22

    :cond_4a
    if-nez v23, :cond_4b

    .line 570
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    move-object v9, v3

    goto :goto_26

    :cond_4b
    move-object/from16 v9, v23

    :goto_26
    if-nez v9, :cond_4c

    .line 573
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_4c

    goto :goto_24

    :cond_4c
    if-eqz v9, :cond_4f

    .line 578
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_24

    .line 582
    :cond_4d
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 583
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 584
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 586
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 587
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v15, v7

    move v7, v8

    move v8, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_24

    :cond_4e
    move/from16 v21, v8

    move/from16 v22, v10

    :cond_4f
    if-nez v9, :cond_50

    .line 594
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_24

    :cond_50
    const/4 v3, 0x3

    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 601
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_54

    const/16 v3, 0x200

    if-le v4, v3, :cond_51

    goto :goto_27

    :cond_51
    const/16 v3, 0x5f

    if-ne v4, v3, :cond_52

    .line 610
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_52
    const/16 v3, 0x66

    if-ne v4, v3, :cond_53

    const/4 v3, 0x3

    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_53
    const/4 v3, 0x3

    .line 613
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_49

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_54
    :goto_27
    const/4 v3, 0x3

    .line 604
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_55

    .line 605
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 607
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    move-object/from16 v15, v35

    .line 619
    invoke-static {v12, v0, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_57

    const/4 v11, 0x0

    .line 620
    aget-object v1, v1, v11

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_56

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v12, v1, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_29

    :cond_56
    const/4 v10, 0x1

    goto :goto_29

    :cond_57
    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_29
    if-eqz v3, :cond_5b

    .line 627
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v23, :cond_5a

    .line 630
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_58

    move-object/from16 v33, v13

    move-object v13, v14

    goto/16 :goto_25

    .line 634
    :cond_58
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 635
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 636
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 638
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_59

    .line 639
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 640
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v21, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v39, v5

    move-object/from16 v5, p1

    const/16 v25, 0x1

    move-object/from16 v10, v23

    const/16 v30, 0x0

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-object/from16 v33, v13

    move-object v13, v14

    goto/16 :goto_23

    :cond_59
    const/16 v25, 0x1

    const/16 v30, 0x0

    move-object v11, v14

    goto :goto_2a

    :cond_5a
    const/16 v25, 0x1

    const/16 v30, 0x0

    move-object v11, v14

    move/from16 v7, v21

    move/from16 v8, v22

    :goto_2a
    move-object/from16 v10, v23

    goto :goto_2b

    :cond_5b
    const/16 v25, 0x1

    const/16 v30, 0x0

    move-object v11, v14

    move-object/from16 v10, v16

    move/from16 v7, v21

    move/from16 v8, v22

    :goto_2b
    move-object/from16 v14, p2

    if-eqz v14, :cond_5c

    .line 649
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5c
    move-object v1, v0

    .line 652
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v21, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v40, v5

    move-object/from16 v5, p1

    move-object/from16 v33, v13

    move-object v13, v11

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_2c
    add-int/lit8 v8, v27, 0x1

    move-object v14, v13

    move-object/from16 v35, v15

    move-object/from16 v15, v24

    move/from16 v9, v28

    move-object/from16 v10, v29

    move-object/from16 v13, v33

    const/4 v11, 0x0

    goto/16 :goto_20

    :cond_5d
    move-object v13, v14

    move-object/from16 v24, v15

    move-object/from16 v15, v35

    const/16 v30, 0x0

    move-object/from16 v14, p2

    .line 656
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v11, p1

    .line 657
    invoke-static {v12, v11, v14, v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v9, v10

    const/4 v8, 0x0

    :goto_2d
    if-ge v8, v9, :cond_68

    aget-object v2, v10, v8

    .line 660
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_5f

    :cond_5e
    :goto_2e
    move/from16 v30, v8

    move/from16 v22, v9

    move-object/from16 v16, v10

    const/16 v21, 0x4

    const/16 v27, 0x3

    goto/16 :goto_30

    .line 665
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_2e

    :cond_60
    if-nez v24, :cond_5e

    const-string v1, "get"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 670
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_61

    goto :goto_2e

    .line 674
    :cond_61
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_62

    const-class v1, Ljava/util/Map;

    .line 675
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_62

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 676
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_62

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 677
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_62

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 678
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_5e

    .line 682
    :cond_62
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v16, :cond_63

    .line 683
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_2e

    :cond_63
    if-eqz v16, :cond_64

    .line 687
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_64

    .line 688
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    goto :goto_2f

    .line 690
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v12, v0, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 694
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_65

    .line 695
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_2e

    .line 701
    :cond_65
    :goto_2f
    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    if-eqz v1, :cond_66

    goto/16 :goto_2e

    :cond_66
    if-eqz v14, :cond_67

    .line 707
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_67
    move-object v1, v0

    .line 710
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v0, v5

    move-object/from16 v4, p0

    move-object/from16 v41, v5

    move-object/from16 v5, p1

    const/16 v27, 0x3

    move/from16 v6, v21

    const/16 v21, 0x4

    move/from16 v7, v22

    move/from16 v30, v8

    move/from16 v8, v23

    move/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_30
    add-int/lit8 v8, v30, 0x1

    move-object/from16 v11, p1

    move-object/from16 v10, v16

    move/from16 v9, v22

    const/4 v7, 0x4

    goto/16 :goto_2d

    .line 715
    :cond_68
    new-instance v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v18

    move-object/from16 v7, p4

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    return-object v9
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    .line 719
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v8, v1, v4

    .line 720
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_0

    :goto_1
    move-object/from16 v5, p3

    goto/16 :goto_6

    :cond_0
    and-int/lit8 v5, v5, 0x10

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 726
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 727
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/Collection;

    .line 728
    invoke-virtual {v7, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    .line 729
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 730
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 731
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_3

    goto :goto_1

    .line 738
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 739
    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    goto :goto_1

    .line 750
    :cond_6
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 752
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v15, :cond_9

    .line 755
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    .line 759
    :cond_7
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 760
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 761
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v9

    .line 763
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 764
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    :cond_8
    move v11, v6

    move v12, v7

    move v13, v9

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-eqz v0, :cond_a

    .line 769
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_a
    move-object v6, v5

    .line 772
    new-instance v14, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 887
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 891
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    .line 892
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    .line 899
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object p1

    .line 901
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static getCreatorConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 810
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    const-string v4, "multi-JSONCreator"

    if-ge v2, v0, :cond_2

    aget-object v5, p0, v2

    .line 811
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v6, :cond_1

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_1

    .line 814
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    return-object v3

    .line 825
    :cond_3
    array-length v0, p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_b

    aget-object v5, p0, v2

    .line 826
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 827
    array-length v7, v6

    if-nez v7, :cond_4

    goto :goto_7

    .line 831
    :cond_4
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v8, v7, :cond_8

    aget-object v10, v6, v8

    .line 833
    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 834
    instance-of v13, v13, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz v9, :cond_a

    if-nez v3, :cond_9

    move-object v3, v5

    goto :goto_7

    .line 847
    :cond_9
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    :cond_c
    return-object v3
.end method

.method static getDefaultConstructor(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 784
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 785
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 792
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 794
    array-length v0, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 795
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v5, v5, v2

    .line 796
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 864
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 865
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 869
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 873
    :cond_1
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    .line 876
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 132
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 136
    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
