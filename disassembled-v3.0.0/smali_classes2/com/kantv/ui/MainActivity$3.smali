.class Lcom/kantv/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/MainActivity;->initFootTabs()V
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

    .line 356
    iput-object p1, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 8

    .line 359
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object v0, v0, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {v0}, Lcom/kantv/ui/view/CustomFragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 360
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 361
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901d9

    .line 362
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0901da

    .line 363
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 364
    iget-object v7, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object v7, v7, Lcom/kantv/ui/MainActivity;->mTabHost:Lcom/kantv/ui/view/CustomFragmentTabHost;

    invoke-virtual {v7}, Lcom/kantv/ui/view/CustomFragmentTabHost;->getCurrentTab()I

    move-result v7

    if-ne v2, v7, :cond_0

    const/4 v7, 0x1

    .line 365
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 366
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 367
    iget-object v5, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v5}, Lcom/kantv/ui/MainActivity;->access$400(Lcom/kantv/ui/MainActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v5, v3}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 369
    :cond_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 370
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 371
    iget-object v5, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {v5}, Lcom/kantv/ui/MainActivity;->access$500(Lcom/kantv/ui/MainActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v5, v3}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/fragment/TabTvFragment;

    iput-object v0, v1, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    .line 377
    iget-object v0, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    iget-object v0, v0, Lcom/kantv/ui/MainActivity;->mTabTvFragment:Lcom/kantv/ui/fragment/TabTvFragment;

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kantv/ui/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/MainActivity$3$1;-><init>(Lcom/kantv/ui/MainActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const-string v0, "news"

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 392
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$600(Lcom/kantv/ui/MainActivity;)V

    .line 393
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_4

    .line 394
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 398
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/MainActivity$3;->this$0:Lcom/kantv/ui/MainActivity;

    invoke-static {p1}, Lcom/kantv/ui/MainActivity;->access$700(Lcom/kantv/ui/MainActivity;)V

    :cond_4
    :goto_2
    return-void
.end method
