.class Lcom/samsung/multiscreen/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player;->getDMPStatus(Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/util/HttpUtil$ResultCreator<",
        "Lcom/samsung/multiscreen/Player$DMPStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Player;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$1;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Player$DMPStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Player$DMPStatus;"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/samsung/multiscreen/Player$DMPStatus;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$1;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-direct {v0, v1}, Lcom/samsung/multiscreen/Player$DMPStatus;-><init>(Lcom/samsung/multiscreen/Player;)V

    if-eqz p1, :cond_4

    const-string v1, "id"

    .line 333
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "appName"

    .line 334
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    :cond_0
    const-string v2, "visible"

    .line 337
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/samsung/multiscreen/Player$DMPStatus;->mVisible:Ljava/lang/Boolean;

    :cond_1
    const-string v2, "media_player"

    .line 340
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    :cond_2
    const-string v2, "running"

    .line 343
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    :cond_3
    if-eqz v1, :cond_4

    const-string p1, "3201412000694"

    .line 346
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createResult(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$1;->createResult(Ljava/util/Map;)Lcom/samsung/multiscreen/Player$DMPStatus;

    move-result-object p1

    return-object p1
.end method
