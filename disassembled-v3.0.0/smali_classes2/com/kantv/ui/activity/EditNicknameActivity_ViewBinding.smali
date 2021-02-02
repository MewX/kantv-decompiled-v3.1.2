.class public Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EditNicknameActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/EditNicknameActivity;

.field private view2131296978:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297173:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/EditNicknameActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/activity/EditNicknameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/EditNicknameActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/EditNicknameActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EditNicknameActivity;

    .line 38
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;Lcom/kantv/ui/activity/EditNicknameActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->mTitle:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightImg:Landroid/widget/ImageView;

    const v0, 0x7f090395

    const-string v1, "field \'titleRightTv\' and method \'onClick\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'titleRightTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightTv:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297173:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;Lcom/kantv/ui/activity/EditNicknameActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09020b

    const-string v2, "field \'nickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    const v0, 0x7f0902d2

    const-string v1, "method \'onClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131296978:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;Lcom/kantv/ui/activity/EditNicknameActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EditNicknameActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->target:Lcom/kantv/ui/activity/EditNicknameActivity;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->mTitle:Landroid/widget/TextView;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->titleRightTv:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/EditNicknameActivity;->nickName:Landroid/widget/EditText;

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297173:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131297173:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131296978:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/kantv/ui/activity/EditNicknameActivity_ViewBinding;->view2131296978:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
