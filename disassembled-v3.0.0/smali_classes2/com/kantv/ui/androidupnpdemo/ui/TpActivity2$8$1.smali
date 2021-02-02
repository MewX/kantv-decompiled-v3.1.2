.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->onDeviceAdded(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;

.field final synthetic val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;

    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    check-cast v1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 500
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded mBrowseRegistryListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->val$device:Lcom/kantv/ui/androidupnpdemo/entity/IDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1000(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
