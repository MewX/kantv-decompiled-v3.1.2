.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 520
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 523
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;)V

    invoke-virtual {p1, p2, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setMute(ZLcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method
