.class Lcom/kantv/ui/activity/StarActivity$1;
.super Lcom/kantv/ui/activity/AppBarStateChangeListener;
.source "StarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/StarActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/StarActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/StarActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity$1;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-direct {p0}, Lcom/kantv/ui/activity/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/kantv/ui/activity/AppBarStateChangeListener$State;)V
    .locals 1

    .line 200
    invoke-virtual {p2}, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object p1, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->EXPANDED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$1;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/StarActivity;->starExitImg:Landroid/widget/ImageView;

    const p2, 0x7f0801dc

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$1;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/StarActivity;->mShareBt:Landroid/widget/ImageView;

    const p2, 0x7f08024e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 207
    :cond_0
    sget-object p1, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->COLLAPSED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    if-ne p2, p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$1;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/StarActivity;->starExitImg:Landroid/widget/ImageView;

    const p2, 0x7f08007a

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object p1, p0, Lcom/kantv/ui/activity/StarActivity$1;->this$0:Lcom/kantv/ui/activity/StarActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/StarActivity;->mShareBt:Landroid/widget/ImageView;

    const p2, 0x7f0801b6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
