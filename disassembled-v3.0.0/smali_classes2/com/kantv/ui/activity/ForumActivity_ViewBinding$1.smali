.class Lcom/kantv/ui/activity/ForumActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ForumActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/ForumActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/ForumActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/ForumActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/ForumActivity_ViewBinding;Lcom/kantv/ui/activity/ForumActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/kantv/ui/activity/ForumActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/ForumActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/ForumActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/ForumActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kantv/ui/activity/ForumActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/ForumActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/ForumActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
