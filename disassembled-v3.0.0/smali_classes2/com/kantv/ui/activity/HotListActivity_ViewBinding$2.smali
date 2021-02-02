.class Lcom/kantv/ui/activity/HotListActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HotListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HotListActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/HotListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HotListActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/HotListActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HotListActivity_ViewBinding;Lcom/kantv/ui/activity/HotListActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kantv/ui/activity/HotListActivity_ViewBinding$2;->this$0:Lcom/kantv/ui/activity/HotListActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/HotListActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/HotListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/activity/HotListActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/HotListActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/HotListActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
