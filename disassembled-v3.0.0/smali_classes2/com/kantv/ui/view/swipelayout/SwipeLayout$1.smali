.class Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/swipelayout/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 139
    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$200(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    neg-int p1, p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$200(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    neg-int p1, p1

    :goto_0
    move p2, p1

    goto :goto_1

    .line 142
    :cond_1
    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_3

    .line 143
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    if-le p2, p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$400(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p3

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$400(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_3
    :goto_1
    return p2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$200(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 160
    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_0

    .line 162
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr p1, p4

    .line 163
    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-virtual {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p4}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$400(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object p5, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-virtual {p5}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getBottom()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 166
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p3}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p3

    sub-int p3, p2, p3

    iget-object p4, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p4}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    .line 167
    invoke-static {p5}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    .line 166
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/view/View;->layout(IIII)V

    .line 171
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$400(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    neg-int p2, p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$500(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$600(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 172
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$700(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$502(Lcom/kantv/ui/view/swipelayout/SwipeLayout;I)I

    .line 175
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->setOpenInstance(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$500(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$700(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 178
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$600(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$502(Lcom/kantv/ui/view/swipelayout/SwipeLayout;I)I

    .line 179
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->closeOpenInstance()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$200(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 188
    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p2, p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-virtual {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->openDeleteMenu()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-virtual {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->closeDeleteMenu()V

    :goto_0
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 121
    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;->this$0:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    invoke-static {p2}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
