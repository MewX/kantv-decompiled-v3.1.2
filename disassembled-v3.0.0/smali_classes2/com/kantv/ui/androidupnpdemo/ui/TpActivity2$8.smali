.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$2;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$2;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
