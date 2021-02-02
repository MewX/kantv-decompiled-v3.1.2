.class Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VideoScoreActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/VideoScoreActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;Lcom/kantv/ui/activity/VideoScoreActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;->this$0:Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
