.class Lcom/kantv/ui/activity/SoareListActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SoareListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SoareListActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SoareListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SoareListActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/SoareListActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SoareListActivity_ViewBinding;Lcom/kantv/ui/activity/SoareListActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kantv/ui/activity/SoareListActivity_ViewBinding$2;->this$0:Lcom/kantv/ui/activity/SoareListActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/SoareListActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/SoareListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/activity/SoareListActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/SoareListActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/SoareListActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
