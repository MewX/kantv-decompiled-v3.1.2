.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->initListeners()V
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

    .line 225
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

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

    .line 228
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "position"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "   "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {p4}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/ArrayAdapter;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "name"

    .line 234
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    const/16 p3, 0x3ef

    invoke-virtual {p2, p3, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setResult(ILandroid/content/Intent;)V

    .line 236
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->finish()V

    return-void
.end method
