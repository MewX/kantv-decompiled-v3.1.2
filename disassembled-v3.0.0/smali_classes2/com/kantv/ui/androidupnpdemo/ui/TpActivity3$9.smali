.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;
.super Ljava/util/TimerTask;
.source "TpActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
