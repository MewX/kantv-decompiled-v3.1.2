.class final Lcom/tencent/wxop/stat/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/ak;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/wxop/stat/ak;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wxop/stat/ak;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/ak;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/ak;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/wxop/stat/ak;->b:Landroid/content/Context;

    new-instance v2, Lcom/tencent/wxop/stat/StatAccount;

    invoke-direct {v2, v0}, Lcom/tencent/wxop/stat/StatAccount;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/ak;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v1, v2, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "qq num is null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    return-void
.end method
