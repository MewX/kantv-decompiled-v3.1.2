.class public Lcom/tencent/wxop/stat/event/i;
.super Lcom/tencent/wxop/stat/event/e;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/event/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/wxop/stat/event/i;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wxop/stat/event/i;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/wxop/stat/a;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/wxop/stat/event/i;->m:Ljava/lang/String;

    sget-object p2, Lcom/tencent/wxop/stat/event/i;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/wxop/stat/event/i;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_MONITOR:Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/event/i;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/event/i;->a:Ljava/lang/String;

    const-string v1, "op"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/i;->m:Ljava/lang/String;

    const-string v1, "cn"

    invoke-static {p1, v1, v0}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/i;->n:Ljava/lang/String;

    const-string v1, "sp"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method