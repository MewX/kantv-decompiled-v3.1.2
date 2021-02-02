.class Lcom/kantv/ui/activity/HistoryActivity$4;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$600(Lcom/kantv/ui/activity/HistoryActivity;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$602(Lcom/kantv/ui/activity/HistoryActivity;I)I

    .line 161
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/HistoryActivity;->watchEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$700(Lcom/kantv/ui/activity/HistoryActivity;I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/HistoryActivity;->access$602(Lcom/kantv/ui/activity/HistoryActivity;I)I

    .line 167
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/HistoryActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/HistoryActivity;->watchEditLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$4;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$700(Lcom/kantv/ui/activity/HistoryActivity;I)V

    :goto_0
    return-void
.end method
