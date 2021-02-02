.class Lcom/kantv/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initDefaultFootTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/MainActivity;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$5;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    .line 437
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$5;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object p1, p1, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {p1}, Lcom/kantv/ui/view/CustomFragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 438
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 439
    invoke-virtual {p1, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901d9

    .line 440
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0901da

    .line 441
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 442
    iget-object v6, p0, Lcom/kantv/ui/MainActivity$5;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object v6, v6, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {v6}, Lcom/kantv/ui/view/CustomFragmentTabHost;->getCurrentTab()I

    move-result v6

    if-ne v1, v6, :cond_0

    const/4 v6, 0x1

    .line 443
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 444
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 445
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kantv/ui/MainActivity$5;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v3}, Lcom/kantv/ui/MainActivity;->access$800(Lcom/kantv/ui/MainActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 448
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 449
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kantv/ui/MainActivity$5;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v3}, Lcom/kantv/ui/MainActivity;->access$800(Lcom/kantv/ui/MainActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
