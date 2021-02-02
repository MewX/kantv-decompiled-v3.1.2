.class Lcom/kantv/ui/activity/AreaActivity$2$1;
.super Ljava/lang/Object;
.source "AreaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AreaActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/StateBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/AreaActivity$2;

.field final synthetic val$stateBean:Lcom/kantv/ui/bean/StateBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AreaActivity$2;Lcom/kantv/ui/bean/StateBean;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->this$1:Lcom/kantv/ui/activity/AreaActivity$2;

    iput-object p2, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->val$stateBean:Lcom/kantv/ui/bean/StateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->val$stateBean:Lcom/kantv/ui/bean/StateBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/StateBean;->getIsoCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->val$stateBean:Lcom/kantv/ui/bean/StateBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/StateBean;->getIsoCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso_code"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->val$stateBean:Lcom/kantv/ui/bean/StateBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/StateBean;->getArea()Ljava/lang/String;

    move-result-object v0

    const-string v1, "area_country"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->val$stateBean:Lcom/kantv/ui/bean/StateBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/StateBean;->getArea()Ljava/lang/String;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->this$1:Lcom/kantv/ui/activity/AreaActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/AreaActivity$2;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/kantv/ui/activity/AreaActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$2$1;->this$1:Lcom/kantv/ui/activity/AreaActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/AreaActivity$2;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/AreaActivity;->finish()V

    return-void
.end method
