.class Lcom/kantv/ui/activity/NewCollectHistroyActivity$2;
.super Ljava/lang/Object;
.source "NewCollectHistroyActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewCollectHistroyActivity;->initTopNavi()V
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

    .line 218
    iput-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$2;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity$2;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$000(Lcom/kantv/ui/activity/NewCollectHistroyActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    invoke-static {v0, p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->access$202(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;)Lcom/kantv/ui/activity/NewCollectHistroyActivity$IEdit;

    return-void
.end method
