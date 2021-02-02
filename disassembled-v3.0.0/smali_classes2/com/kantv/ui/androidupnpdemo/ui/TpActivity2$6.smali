.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->initView()V
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

    .line 447
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 450
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1000(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->onRefresh()V

    return-void
.end method
