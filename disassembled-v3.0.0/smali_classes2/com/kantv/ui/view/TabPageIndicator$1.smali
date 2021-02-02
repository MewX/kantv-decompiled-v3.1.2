.class Lcom/kantv/ui/view/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/TabPageIndicator;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/TabPageIndicator;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator$1;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$1;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {v0}, Lcom/kantv/ui/view/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$1;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {v0}, Lcom/kantv/ui/view/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$1;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$200(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->access$102(Lcom/kantv/ui/view/TabPageIndicator;I)I

    .line 279
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$1;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$100(Lcom/kantv/ui/view/TabPageIndicator;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->access$300(Lcom/kantv/ui/view/TabPageIndicator;II)V

    return-void
.end method
