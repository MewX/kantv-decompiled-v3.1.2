.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->initView()V
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

    .line 192
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->onRefresh()V

    return-void
.end method
