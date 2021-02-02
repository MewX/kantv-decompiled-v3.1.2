.class Lcom/kantv/ui/adapter/SingleListAdatper$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SingleListAdatper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/SingleListAdatper;->ifGridLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

.field final synthetic val$layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/SingleListAdatper;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$2;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    iput-object p2, p0, Lcom/kantv/ui/adapter/SingleListAdatper$2;->val$layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper$2;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {v0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$200(Lcom/kantv/ui/adapter/SingleListAdatper;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/adapter/SingleListAdatper$2;->this$0:Lcom/kantv/ui/adapter/SingleListAdatper;

    invoke-static {v0, p1}, Lcom/kantv/ui/adapter/SingleListAdatper;->access$300(Lcom/kantv/ui/adapter/SingleListAdatper;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/adapter/SingleListAdatper$2;->val$layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 229
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
