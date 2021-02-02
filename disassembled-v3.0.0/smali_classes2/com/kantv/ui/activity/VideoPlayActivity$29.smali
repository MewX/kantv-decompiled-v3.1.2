.class Lcom/kantv/ui/activity/VideoPlayActivity$29;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initVideoDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field private final titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 1974
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x2

    .line 1976
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\u8be6\u60c5"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "\u8bc4\u8bba"

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

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

    .line 1985
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$4900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$29;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
