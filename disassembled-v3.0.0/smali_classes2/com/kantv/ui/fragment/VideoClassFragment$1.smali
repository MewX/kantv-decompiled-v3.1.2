.class Lcom/kantv/ui/fragment/VideoClassFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "VideoClassFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoClassFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 131
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 132
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v2, p1

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***Distance: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " **** itemHeight: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*** position "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*** dx "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " *** dy "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lcom/kantv/common/utils/Utils;->isQuicklyScroll()Z

    move-result p1

    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$000(Lcom/kantv/ui/fragment/VideoClassFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    if-le p3, p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$000(Lcom/kantv/ui/fragment/VideoClassFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;

    move-result-object p1

    invoke-interface {p1}, Lcom/kantv/ui/interfaces/ScrollEffect;->reduce()V

    goto :goto_0

    :cond_0
    if-gtz p3, :cond_1

    .line 160
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$1;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$000(Lcom/kantv/ui/fragment/VideoClassFragment;)Lcom/kantv/ui/interfaces/ScrollEffect;

    move-result-object p1

    invoke-interface {p1}, Lcom/kantv/ui/interfaces/ScrollEffect;->expand()V

    :cond_1
    :goto_0
    return-void
.end method
