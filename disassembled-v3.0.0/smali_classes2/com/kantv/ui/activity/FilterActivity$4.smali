.class Lcom/kantv/ui/activity/FilterActivity$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 284
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 285
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 286
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    mul-int p2, p2, p3

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***Distance: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " **** itemHeight: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    mul-int/lit8 p3, p3, 0x5

    const/4 p1, 0x0

    if-lt p2, p3, :cond_0

    .line 292
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-boolean v0, v0, Lcom/kantv/ui/activity/FilterActivity;->isExpand:Z

    if-nez v0, :cond_0

    const-string p2, "*** reduce"

    .line 293
    invoke-static {p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 294
    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/FilterActivity;->access$500(Lcom/kantv/ui/activity/FilterActivity;)V

    .line 295
    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/FilterActivity;->filterToolBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/kantv/ui/activity/FilterActivity;->isExpand:Z

    goto :goto_0

    .line 299
    :cond_0
    div-int/lit8 p3, p3, 0x4

    if-ge p2, p3, :cond_1

    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-boolean p2, p2, Lcom/kantv/ui/activity/FilterActivity;->isExpand:Z

    if-eqz p2, :cond_1

    const-string p2, "*** expand"

    .line 300
    invoke-static {p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 301
    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/FilterActivity;->filterToolBarLayout:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p2}, Lcom/kantv/ui/activity/FilterActivity;->access$600(Lcom/kantv/ui/activity/FilterActivity;)V

    .line 303
    iget-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$4;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iput-boolean p1, p2, Lcom/kantv/ui/activity/FilterActivity;->isExpand:Z

    :cond_1
    :goto_0
    return-void
.end method
