.class Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/MeFragment_ViewBinding;-><init>(Lcom/kantv/ui/fragment/MeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/MeFragment_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/fragment/MeFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/MeFragment_ViewBinding;Lcom/kantv/ui/fragment/MeFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;->this$0:Lcom/kantv/ui/fragment/MeFragment_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;->val$target:Lcom/kantv/ui/fragment/MeFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/fragment/MeFragment_ViewBinding$3;->val$target:Lcom/kantv/ui/fragment/MeFragment;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/fragment/MeFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
