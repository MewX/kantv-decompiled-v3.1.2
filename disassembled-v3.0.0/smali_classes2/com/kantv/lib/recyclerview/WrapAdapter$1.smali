.class Lcom/kantv/lib/recyclerview/WrapAdapter$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/recyclerview/WrapAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;

.field final synthetic val$gridManager:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/kantv/lib/recyclerview/WrapAdapter;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;->this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;

    iput-object p2, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;->val$gridManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;->this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;->this$0:Lcom/kantv/lib/recyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/recyclerview/WrapAdapter;->isFooter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/WrapAdapter$1;->val$gridManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
