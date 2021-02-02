.class Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TabNewsFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;-><init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/fragment/TabNewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;Lcom/kantv/ui/fragment/TabNewsFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;->val$target:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment_ViewBinding$1;->val$target:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/TabNewsFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
