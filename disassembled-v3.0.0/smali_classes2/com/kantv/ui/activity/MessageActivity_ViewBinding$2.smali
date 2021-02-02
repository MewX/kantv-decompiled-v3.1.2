.class Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MessageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MessageActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MessageActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MessageActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/MessageActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MessageActivity_ViewBinding;Lcom/kantv/ui/activity/MessageActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;->this$0:Lcom/kantv/ui/activity/MessageActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/MessageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/MessageActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/MessageActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
