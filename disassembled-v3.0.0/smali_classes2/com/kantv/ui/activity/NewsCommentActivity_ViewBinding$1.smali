.class Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NewsCommentActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/NewsCommentActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/NewsCommentActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding;Lcom/kantv/ui/activity/NewsCommentActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsCommentActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/NewsCommentActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/NewsCommentActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
