.class Lcom/kantv/ui/activity/CollectActivity$3;
.super Ljava/lang/Object;
.source "CollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 187
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/CollectActivity;->access$500(Lcom/kantv/ui/activity/CollectActivity;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/CollectActivity;->access$502(Lcom/kantv/ui/activity/CollectActivity;I)I

    .line 189
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/CollectActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$600(Lcom/kantv/ui/activity/CollectActivity;I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/CollectActivity;->access$502(Lcom/kantv/ui/activity/CollectActivity;I)I

    .line 194
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/CollectActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$3;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/CollectActivity;->access$600(Lcom/kantv/ui/activity/CollectActivity;I)V

    :goto_0
    return-void
.end method
