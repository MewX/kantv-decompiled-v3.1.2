.class public Lorg/fourthline/cling/model/meta/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final arguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

.field private final inputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

.field private final name:Ljava/lang/String;

.field private final outputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

.field private service:Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/fourthline/cling/model/meta/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V
    .locals 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Action;->name:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    array-length v2, p2

    :goto_0
    if-ge p1, v2, :cond_2

    aget-object v3, p2, p1

    .line 51
    invoke-virtual {v3, p0}, Lorg/fourthline/cling/model/meta/ActionArgument;->setAction(Lorg/fourthline/cling/model/meta/Action;)V

    .line 52
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v4

    sget-object v5, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v4

    sget-object v5, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Action;->arguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Action;->inputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Action;->outputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    goto :goto_1

    .line 62
    :cond_3
    new-array p2, p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Action;->arguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 63
    new-array p2, p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Action;->inputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    .line 64
    new-array p1, p1, [Lorg/fourthline/cling/model/meta/ActionArgument;

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Action;->outputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    :goto_1
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/fourthline/cling/model/meta/Action;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/ActionArgument;

    const/4 v1, 0x0

    .line 203
    :goto_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v2

    aget-object v2, v2, v1

    .line 205
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ActionArgument;->deepCopy()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/meta/Action;

    .line 209
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/fourthline/cling/model/meta/ActionArgument;)V

    return-object v1
.end method

.method public getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->arguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getFirstInputArgument()Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->hasInputArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No input arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstOutputArgument()Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->hasOutputArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No output arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    invoke-virtual {v3, p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->isNameOrAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->inputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->outputArguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    return-object v0
.end method

.method public getService()Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->service:Lorg/fourthline/cling/model/meta/Service;

    return-object v0
.end method

.method public hasArguments()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInputArguments()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getInputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputArguments()Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getOutputArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setService(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Action;->service:Lorg/fourthline/cling/model/meta/Service;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Action;->service:Lorg/fourthline/cling/model/meta/Service;

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Final value has been set already, model is immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "NO ARGS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPnP specification violation of: "

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    sget-object v1, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 149
    sget-object v1, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action without name of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-direct {v1, v3, v5, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    .line 155
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v7

    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/fourthline/cling/model/meta/Service;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v7

    if-nez v7, :cond_3

    .line 156
    new-instance v7, Lorg/fourthline/cling/model/ValidationError;

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Action argument references an unknown state variable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "arguments"

    invoke-direct {v7, v8, v9, v6}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v5, v3

    move-object v6, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v1, v5, :cond_8

    aget-object v9, v3, v1

    .line 169
    invoke-virtual {v9}, Lorg/fourthline/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 170
    invoke-virtual {v9}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v10

    sget-object v11, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    if-ne v10, v11, :cond_5

    .line 171
    sget-object v9, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UPnP specification violation of :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v11

    invoke-virtual {v11}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 172
    sget-object v9, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    const-string v10, "Input argument can not have <retval/>"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    .line 175
    sget-object v6, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v10

    invoke-virtual {v10}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 176
    sget-object v6, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only one argument of action \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' can be <retval/>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    move v8, v7

    move-object v6, v9

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_a

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v8, :cond_a

    .line 186
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getArguments()[Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v3

    aget-object v3, v3, v1

    .line 187
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->getDirection()Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v3

    sget-object v5, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    if-ne v3, v5, :cond_9

    .line 188
    sget-object v3, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 189
    sget-object v3, Lorg/fourthline/cling/model/meta/Action;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Argument \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' of action \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is <retval/> but not the first OUT argument"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 194
    :cond_a
    iget-object v1, p0, Lorg/fourthline/cling/model/meta/Action;->arguments:[Lorg/fourthline/cling/model/meta/ActionArgument;

    array-length v2, v1

    :goto_6
    if-ge v4, v2, :cond_b

    aget-object v3, v1, v4

    .line 195
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ActionArgument;->validate()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    return-object v0
.end method
