.class Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TabTvFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;-><init>(Lcom/kantv/ui/fragment/TabTvFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/fragment/TabTvFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;Lcom/kantv/ui/fragment/TabTvFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;->this$0:Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;->val$target:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabTvFragment_ViewBinding$2;->val$target:Lcom/kantv/ui/fragment/TabTvFragment;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/TabTvFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
