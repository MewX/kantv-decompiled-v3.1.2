.class Lcom/kantv/ui/activity/StarActivity$5;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "StarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/StarActivity;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/StarActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/StarActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/kantv/ui/activity/StarActivity$5;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$5;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$700(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$5;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$700(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$5;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$700(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/kantv/ui/activity/StarActivity$5;->this$0:Lcom/kantv/ui/activity/StarActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/StarActivity;->access$800(Lcom/kantv/ui/activity/StarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/HotClassBean;->getTid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
