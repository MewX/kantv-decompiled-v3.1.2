.class Lcom/kantv/lib/indicator/FixedIndicatorView$2;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1200(Lcom/kantv/lib/indicator/FixedIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 232
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1300(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1300(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;->onItemClick(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-virtual {v2, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 236
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1400(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1400(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$2;->this$0:Lcom/kantv/lib/indicator/FixedIndicatorView;

    invoke-static {v1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->access$1000(Lcom/kantv/lib/indicator/FixedIndicatorView;)I

    move-result v1

    invoke-interface {v2, p1, v0, v1}, Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
