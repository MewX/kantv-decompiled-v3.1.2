.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshDeviceList()V
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

    .line 305
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
