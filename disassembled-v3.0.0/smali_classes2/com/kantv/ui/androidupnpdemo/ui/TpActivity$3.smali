.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->initListeners()V
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

    .line 244
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

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

    .line 247
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "position"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "   "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {p4}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/kantv/ui/samsung/TVListAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kantv/ui/samsung/TVListAdapter;->getCount()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/kantv/ui/samsung/TVListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/TVListAdapter;->getCount()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "name"

    .line 253
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    const/16 p3, 0x3ee

    invoke-virtual {p2, p3, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setResult(ILandroid/content/Intent;)V

    .line 255
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->finish()V

    return-void
.end method
