.class public Lcom/kantv/ui/activity/MessageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MessageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/MessageActivity;

.field private view2131296793:Landroid/view/View;

.field private view2131296794:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/MessageActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/kantv/ui/activity/MessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MessageActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/MessageActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MessageActivity;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleRightTv:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MessageActivity;->titleTV:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f090219

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296793:Landroid/view/View;

    .line 43
    new-instance v2, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/MessageActivity_ViewBinding;Lcom/kantv/ui/activity/MessageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09021a

    .line 49
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296794:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MessageActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/MessageActivity_ViewBinding;Lcom/kantv/ui/activity/MessageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MessageActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MessageActivity;

    .line 66
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 69
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleRightTv:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/kantv/ui/activity/MessageActivity;->titleTV:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296793:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296793:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296794:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/kantv/ui/activity/MessageActivity_ViewBinding;->view2131296794:Landroid/view/View;

    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
