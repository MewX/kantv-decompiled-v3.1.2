.class Lcom/kantv/ui/activity/CollectActivity$1$3;
.super Ljava/lang/Object;
.source "CollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/CollectActivity$1;

.field final synthetic val$string15Bean:Lcom/kantv/ui/bean/String15Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$3;->this$1:Lcom/kantv/ui/activity/CollectActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$1$3;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 140
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$1$3;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$1$3;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr7()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$1$3;->this$1:Lcom/kantv/ui/activity/CollectActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/CollectActivity$1;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/CollectActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
