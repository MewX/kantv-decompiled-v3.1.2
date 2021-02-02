.class Lcom/kantv/ui/view/TabPageIndicator$2;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/TabPageIndicator;->addTextTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/TabPageIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/TabPageIndicator;I)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator$2;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator$2;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {p1}, Lcom/kantv/ui/view/TabPageIndicator;->access$200(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator$2;->val$position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
