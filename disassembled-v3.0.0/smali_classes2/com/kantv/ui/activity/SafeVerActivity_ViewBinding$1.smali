.class Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SafeVerActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/SafeVerActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/SafeVerActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
