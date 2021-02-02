.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 465
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 468
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "position"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "   "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p4}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/ArrayAdapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p3, -0x1

    .line 470
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 475
    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 479
    :cond_1
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    .line 481
    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    .line 482
    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 486
    :cond_2
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    const p3, 0x7f0f00ba

    invoke-virtual {p2, p3}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectedDeviceName"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
