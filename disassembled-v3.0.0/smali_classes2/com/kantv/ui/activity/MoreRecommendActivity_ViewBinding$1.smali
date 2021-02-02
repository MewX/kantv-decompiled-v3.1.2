.class Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MoreRecommendActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MoreRecommendActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/MoreRecommendActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding;Lcom/kantv/ui/activity/MoreRecommendActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kantv/ui/activity/MoreRecommendActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/MoreRecommendActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
