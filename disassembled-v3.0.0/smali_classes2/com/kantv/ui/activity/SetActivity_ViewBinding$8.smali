.class Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SetActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SetActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SetActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SetActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/SetActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;->this$0:Lcom/kantv/ui/activity/SetActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;->val$target:Lcom/kantv/ui/activity/SetActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;->val$target:Lcom/kantv/ui/activity/SetActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/SetActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
