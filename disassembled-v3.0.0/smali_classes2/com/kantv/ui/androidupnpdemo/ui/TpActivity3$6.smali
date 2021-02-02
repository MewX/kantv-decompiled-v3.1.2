.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshDeviceList()V
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

    .line 273
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
