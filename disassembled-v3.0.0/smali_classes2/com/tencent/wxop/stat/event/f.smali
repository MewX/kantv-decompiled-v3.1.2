.class public Lcom/tencent/wxop/stat/event/f;
.super Lcom/tencent/wxop/stat/event/e;


# instance fields
.field private a:Lcom/tencent/wxop/stat/StatGameUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatGameUser;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/event/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/wxop/stat/event/f;->a:Lcom/tencent/wxop/stat/StatGameUser;

    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatGameUser;->clone()Lcom/tencent/wxop/stat/StatGameUser;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wxop/stat/event/f;->a:Lcom/tencent/wxop/stat/StatGameUser;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->MTA_GAME_USER:Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/f;->a:Lcom/tencent/wxop/stat/StatGameUser;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatGameUser;->getWorldName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wod"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/f;->a:Lcom/tencent/wxop/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gid"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/f;->a:Lcom/tencent/wxop/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatGameUser;->getLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lev"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
