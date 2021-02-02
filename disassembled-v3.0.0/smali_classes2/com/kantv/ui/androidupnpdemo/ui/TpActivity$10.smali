.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;
.super Ljava/util/TimerTask;
.source "TpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
