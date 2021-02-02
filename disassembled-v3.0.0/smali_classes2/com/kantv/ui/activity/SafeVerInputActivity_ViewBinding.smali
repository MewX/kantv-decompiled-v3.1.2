.class public Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SafeVerInputActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SafeVerInputActivity;

.field private view2131296366:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297188:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerInputActivity;

    .line 38
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

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

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerInputActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleTV:Landroid/widget/TextView;

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightTxt:Landroid/widget/TextView;

    const v0, 0x7f0903a4

    const-string v1, "field \'verOkBtn\' and method \'onClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'verOkBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->verOkBtn:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297188:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerInputActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902db

    const-string v2, "field \'safeVerNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->safeVerNum:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902dc

    const-string v2, "field \'safeVerTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->safeVerTip:Landroid/widget/TextView;

    .line 64
    const-class v0, Lcom/kantv/lib/verifyedittext/VerifyEditText;

    const v1, 0x7f0903a7

    const-string v2, "field \'verifyEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/verifyedittext/VerifyEditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    const v0, 0x7f09006e

    const-string v1, "field \'bindResendTv\' and method \'onClick\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'bindResendTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131296366:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerInputActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903a5

    const-string v2, "field \'vercodeTimer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/ui/activity/SafeVerInputActivity;->vercodeTimer:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerInputActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 82
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerInputActivity;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleTV:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 90
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->titleRightTxt:Landroid/widget/TextView;

    .line 91
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->verOkBtn:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->safeVerNum:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->safeVerTip:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->verifyEditText:Lcom/kantv/lib/verifyedittext/VerifyEditText;

    .line 95
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->bindResendTv:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerInputActivity;->vercodeTimer:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297188:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131297188:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131296366:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity_ViewBinding;->view2131296366:Landroid/view/View;

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
