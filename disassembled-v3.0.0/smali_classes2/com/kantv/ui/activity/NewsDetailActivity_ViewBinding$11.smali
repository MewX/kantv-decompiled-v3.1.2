.class Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NewsDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;->val$target:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;->val$target:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
