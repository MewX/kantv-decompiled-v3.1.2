.class Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FeedBackActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/FeedBackActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding;Lcom/kantv/ui/activity/FeedBackActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding$3;->this$0:Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kantv/ui/activity/FeedBackActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/FeedBackActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
