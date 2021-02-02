.class public Lorg/fourthline/cling/model/action/MethodActionExecutor;
.super Lorg/fourthline/cling/model/action/AbstractActionExecutor;
.source "MethodActionExecutor.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lorg/fourthline/cling/model/action/MethodActionExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;-><init>(Ljava/util/Map;)V

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected createInputArgumentValues(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/reflect/Method;)[Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 131
    invoke-virtual/range {p1 .. p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/LocalService;

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v5, :cond_4

    aget-object v11, v4, v7

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v8

    .line 139
    invoke-virtual {v0, v11}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v13

    .line 142
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primitive action method argument \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v11}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' requires input value, can\'t be null or empty string"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    if-nez v13, :cond_2

    add-int/lit8 v10, v8, 0x1

    .line 150
    invoke-interface {v3, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v10

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 155
    :cond_2
    invoke-virtual {v13}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    invoke-virtual {v2, v12}, Lorg/fourthline/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-nez v14, :cond_3

    .line 159
    :try_start_0
    new-array v13, v10, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 160
    sget-object v14, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new input argument value instance with String.class constructor of type: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 161
    new-array v6, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v6, v12

    invoke-virtual {v13, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v8, 0x1

    .line 162
    invoke-interface {v3, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    goto :goto_2

    :catch_0
    move-exception v0

    .line 164
    sget-object v2, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error preparing action method call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert input argument string to desired type of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\': "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v11}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v12, 0x0

    add-int/lit8 v6, v8, 0x1

    .line 172
    invoke-virtual {v13}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v6

    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 176
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_6

    const-class v2, Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    .line 177
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v10

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    instance-of v2, v0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    .line 179
    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 180
    sget-object v2, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Providing remote client info as last action method input argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 184
    :cond_5
    invoke-interface {v3, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 188
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected execute(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->createInputArgumentValues(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Action;->hasOutputArguments()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    sget-object p1, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling local service method with no output arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, v0}, Lorg/seamless/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    sget-object v2, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling local service method with output arguments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v4, "Action method is void, calling declared accessors(s) on service instance to retrieve ouput argument(s)"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v1, p2, v0}, Lorg/seamless/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->readOutputArgumentValues(Lorg/fourthline/cling/model/meta/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    move-object v0, p2

    const/4 p2, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->isUseOutputArgumentAccessors(Lorg/fourthline/cling/model/action/ActionInvocation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget-object v1, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v4, "Action method is not void, calling declared accessor(s) on returned instance to retrieve ouput argument(s)"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v1, p2, v0}, Lorg/seamless/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 91
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->readOutputArgumentValues(Lorg/fourthline/cling/model/meta/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 95
    :cond_2
    sget-object v1, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v4, "Action method is not void, using returned value as (single) output argument"

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v1, p2, v0}, Lorg/seamless/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    const/4 p2, 0x0

    .line 100
    :goto_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    if-eqz p2, :cond_3

    .line 102
    instance-of p2, v0, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 103
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 104
    sget-object p2, Lorg/fourthline/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accessors returned Object[], setting output argument values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    :goto_2
    array-length p2, v1

    if-ge v2, p2, :cond_4

    .line 106
    aget-object p2, v1, v2

    aget-object v3, v0, v2

    invoke-virtual {p0, p1, p2, v3}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->setOutputArgumentValue(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :cond_3
    array-length p2, v1

    if-ne p2, v3, :cond_5

    .line 109
    aget-object p2, v1, v2

    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->setOutputArgumentValue(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 111
    :cond_5
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method return does not match required number of output arguments: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected isUseOutputArgumentAccessors(Lorg/fourthline/cling/model/action/ActionInvocation;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/model/action/MethodActionExecutor;->getOutputArgumentAccessors()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
