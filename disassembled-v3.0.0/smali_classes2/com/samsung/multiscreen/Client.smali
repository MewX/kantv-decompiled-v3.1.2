.class public Lcom/samsung/multiscreen/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static final ATTRIBUTES_KEY:Ljava/lang/String; = "attributes"

.field private static final CONNECT_TIME_KEY:Ljava/lang/String; = "connectTime"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IS_HOST_KEY:Ljava/lang/String; = "isHost"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Lcom/samsung/multiscreen/Channel;

.field private final connectTime:J

.field private final host:Z

.field private final id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Channel;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/multiscreen/Client;->channel:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Client;->id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/multiscreen/Client;->host:Z

    iput-wide p4, p0, Lcom/samsung/multiscreen/Client;->connectTime:J

    iput-object p6, p0, Lcom/samsung/multiscreen/Client;->attributes:Ljava/util/Map;

    return-void
.end method

.method protected static create(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;)Lcom/samsung/multiscreen/Client;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/multiscreen/Channel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Client;"
        }
    .end annotation

    const-string v0, "id"

    .line 80
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "isHost"

    .line 81
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "connectTime"

    .line 82
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v2, "attributes"

    .line 83
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 85
    new-instance p1, Lcom/samsung/multiscreen/Client;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/multiscreen/Client;-><init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;ZJLjava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    instance-of p1, p1, Lcom/samsung/multiscreen/Client;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/Client;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/Client;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/Client;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/multiscreen/Client;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getChannel()Lcom/samsung/multiscreen/Channel;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/multiscreen/Client;->channel:Lcom/samsung/multiscreen/Channel;

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/samsung/multiscreen/Client;->connectTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/multiscreen/Client;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isHost()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/samsung/multiscreen/Client;->host:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->getConnectTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Client;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
