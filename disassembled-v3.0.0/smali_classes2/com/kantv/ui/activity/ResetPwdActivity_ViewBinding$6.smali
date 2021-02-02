.class Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ResetPwdActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/ResetPwdActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/ResetPwdActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;->val$target:Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/kantv/ui/activity/ResetPwdActivity_ViewBinding$6;->val$target:Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/ResetPwdActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
