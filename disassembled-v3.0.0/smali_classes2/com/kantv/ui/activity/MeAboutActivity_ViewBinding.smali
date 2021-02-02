.class public Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MeAboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/MeAboutActivity;

.field private view2131297140:Landroid/view/View;

.field private view2131297173:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/MeAboutActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/kantv/ui/activity/MeAboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MeAboutActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/MeAboutActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MeAboutActivity;

    .line 36
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;Lcom/kantv/ui/activity/MeAboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->mTitle:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 49
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightImg:Landroid/widget/ImageView;

    const v0, 0x7f090395

    const-string v1, "field \'titleRightTv\' and method \'onClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'titleRightTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightTv:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297173:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;Lcom/kantv/ui/activity/MeAboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090007

    const-string v2, "field \'aboutEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kantv/ui/activity/MeAboutActivity;->aboutEdit:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MeAboutActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MeAboutActivity;

    .line 69
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 70
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 71
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->mTitle:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->titleRightTv:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/MeAboutActivity;->aboutEdit:Landroid/widget/EditText;

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297173:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;->view2131297173:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
