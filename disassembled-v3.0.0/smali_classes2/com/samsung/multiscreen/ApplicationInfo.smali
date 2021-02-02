.class public Lcom/samsung/multiscreen/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# static fields
.field private static final PROPERTY_ID:Ljava/lang/String; = "id"

.field private static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field private static final PROPERTY_STATE:Ljava/lang/String; = "running"

.field private static final PROPERTY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final id:Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final running:Z

.field private final version:Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/samsung/multiscreen/ApplicationInfo;->id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/multiscreen/ApplicationInfo;->running:Z

    iput-object p3, p0, Lcom/samsung/multiscreen/ApplicationInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/multiscreen/ApplicationInfo;->version:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "version"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static create(Ljava/util/Map;)Lcom/samsung/multiscreen/ApplicationInfo;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/ApplicationInfo;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "id"

    .line 78
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "running"

    .line 79
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "name"

    .line 80
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "version"

    .line 81
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 82
    new-instance v3, Lcom/samsung/multiscreen/ApplicationInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/samsung/multiscreen/ApplicationInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "info"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    instance-of p1, p1, Lcom/samsung/multiscreen/ApplicationInfo;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/ApplicationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/ApplicationInfo;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/ApplicationInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ApplicationInfo;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->isRunning()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ApplicationInfo;->isRunning()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ApplicationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ApplicationInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_8

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/samsung/multiscreen/ApplicationInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/multiscreen/ApplicationInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/samsung/multiscreen/ApplicationInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x4f

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/samsung/multiscreen/ApplicationInfo;->running:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->isRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/ApplicationInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
