.class Lcom/kantv/ui/activity/SoareListActivity$2;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SoareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SoareListActivity;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SoareListActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SoareListActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/kantv/ui/activity/SoareListActivity$2;->this$0:Lcom/kantv/ui/activity/SoareListActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity$2;->this$0:Lcom/kantv/ui/activity/SoareListActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SoareListActivity;->access$100(Lcom/kantv/ui/activity/SoareListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity$2;->this$0:Lcom/kantv/ui/activity/SoareListActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SoareListActivity;->access$100(Lcom/kantv/ui/activity/SoareListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity$2;->this$0:Lcom/kantv/ui/activity/SoareListActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/SoareListActivity;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String2Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String2Bean;->getText1()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
