.class Lcom/kantv/ui/activity/CollectActivity$1$1;
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

.field final synthetic val$position:I

.field final synthetic val$string15Bean:Lcom/kantv/ui/bean/String15Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->this$1:Lcom/kantv/ui/activity/CollectActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    iput p3, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->this$1:Lcom/kantv/ui/activity/CollectActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/CollectActivity$1;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->val$string15Bean:Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kantv/ui/activity/CollectActivity$1$1;->val$position:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$000(Lcom/kantv/ui/activity/CollectActivity;Ljava/lang/String;I)V

    return-void
.end method
