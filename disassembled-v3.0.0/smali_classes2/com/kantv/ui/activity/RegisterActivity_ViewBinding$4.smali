.class Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegisterActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;->this$0:Lcom/kantv/ui/activity/RegisterActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;->val$target:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity_ViewBinding$4;->val$target:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/RegisterActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
