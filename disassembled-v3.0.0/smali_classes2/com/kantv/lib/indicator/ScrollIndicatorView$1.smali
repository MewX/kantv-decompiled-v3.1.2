.class Lcom/kantv/lib/indicator/ScrollIndicatorView$1;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/kantv/lib/indicator/Indicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/ScrollIndicatorView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$300(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$300(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$402(Lcom/kantv/lib/indicator/ScrollIndicatorView;F)F

    .line 149
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$500(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    .line 150
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$600(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$500(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$1;->this$0:Lcom/kantv/lib/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$500(Lcom/kantv/lib/indicator/ScrollIndicatorView;)Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->access$702(Lcom/kantv/lib/indicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
