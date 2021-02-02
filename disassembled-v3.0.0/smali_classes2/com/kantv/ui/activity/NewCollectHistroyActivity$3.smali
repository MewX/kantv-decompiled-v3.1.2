.class Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;
.super Ljava/lang/Object;
.source "NewCollectHistroyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 258
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$200(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    move-result-object p1

    instance-of p1, p1, Lcom/kantv/ui/fragment/NewsCollectFragment;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->allCollectChoice:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$300(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1, v2}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$302(Lcom/kantv/ui/activity/NewCollectHistroyActivity;I)I

    .line 266
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$200(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;->initFor(I)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1, v1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$302(Lcom/kantv/ui/activity/NewCollectHistroyActivity;I)I

    .line 272
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->titleRightTv:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$3;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$200(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;->initFor(I)V

    :goto_1
    return-void
.end method
