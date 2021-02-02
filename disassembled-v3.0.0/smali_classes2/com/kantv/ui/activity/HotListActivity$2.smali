.class Lcom/kantv/ui/activity/HotListActivity$2;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "HotListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HotListActivity;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HotListActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HotListActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/kantv/ui/activity/HotListActivity$2;->this$0:Lcom/kantv/ui/activity/HotListActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/activity/HotListActivity$2;->this$0:Lcom/kantv/ui/activity/HotListActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HotListActivity;->access$100(Lcom/kantv/ui/activity/HotListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/kantv/ui/activity/HotListActivity$2;->this$0:Lcom/kantv/ui/activity/HotListActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HotListActivity;->access$100(Lcom/kantv/ui/activity/HotListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/activity/HotListActivity$2;->this$0:Lcom/kantv/ui/activity/HotListActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/HotListActivity;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/String2Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String2Bean;->getText1()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
