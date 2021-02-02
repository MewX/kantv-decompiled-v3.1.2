.class public Lcom/samsung/multiscreen/Clients;
.super Ljava/lang/Object;
.source "Clients.java"


# instance fields
.field private final channel:Lcom/samsung/multiscreen/Channel;

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/multiscreen/Client;",
            ">;"
        }
    .end annotation
.end field

.field private host:Lcom/samsung/multiscreen/Client;

.field private me:Lcom/samsung/multiscreen/Client;

.field private myClientId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/samsung/multiscreen/Channel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/samsung/multiscreen/Clients;->channel:Lcom/samsung/multiscreen/Channel;

    return-void
.end method


# virtual methods
.method protected add(Lcom/samsung/multiscreen/Client;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Client;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/multiscreen/Client;

    .line 144
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Clients;->add(Lcom/samsung/multiscreen/Client;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/multiscreen/Client;

    return-object p1
.end method

.method public getChannel()Lcom/samsung/multiscreen/Channel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->channel:Lcom/samsung/multiscreen/Channel;

    return-object v0
.end method

.method public getHost()Lcom/samsung/multiscreen/Client;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->host:Lcom/samsung/multiscreen/Client;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/Client;

    .line 77
    invoke-virtual {v1}, Lcom/samsung/multiscreen/Client;->isHost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iput-object v1, p0, Lcom/samsung/multiscreen/Clients;->host:Lcom/samsung/multiscreen/Client;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->host:Lcom/samsung/multiscreen/Client;

    return-object v0
.end method

.method public isMe(Lcom/samsung/multiscreen/Client;)Z
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/multiscreen/Client;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public me()Lcom/samsung/multiscreen/Client;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/samsung/multiscreen/Clients;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/samsung/multiscreen/Clients;->me:Lcom/samsung/multiscreen/Client;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/Client;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iput-object v0, p0, Lcom/samsung/multiscreen/Clients;->me:Lcom/samsung/multiscreen/Client;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->me:Lcom/samsung/multiscreen/Client;

    return-object v0
.end method

.method protected remove(Lcom/samsung/multiscreen/Client;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Client;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected setMyClientId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Clients;->get(Ljava/lang/String;)Lcom/samsung/multiscreen/Client;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/samsung/multiscreen/Clients;->me:Lcom/samsung/multiscreen/Client;

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clients(clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Clients;->clients:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/multiscreen/Clients;->myClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Clients;->getHost()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
