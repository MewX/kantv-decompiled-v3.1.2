.class public Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SafeCenterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SafeCenterActivity;

.field private view2131296985:Landroid/view/View;

.field private view2131296986:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SafeCenterActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SafeCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SafeCenterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SafeCenterActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeCenterActivity;

    .line 37
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;Lcom/kantv/ui/activity/SafeCenterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 48
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleTV:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 51
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightTxt:Landroid/widget/TextView;

    const v0, 0x7f0902da

    const-string v1, "field \'safecenter_phone\' and method \'onClick\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'safecenter_phone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->safecenter_phone:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296986:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;Lcom/kantv/ui/activity/SafeCenterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090074

    const-string v2, "field \'bindPhoneTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->bindPhoneTv:Landroid/widget/TextView;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090072

    const-string v2, "field \'bindEmailTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeCenterActivity;->bindEmailTv:Landroid/widget/TextView;

    const v0, 0x7f0902d9

    const-string v1, "method \'onClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 64
    iput-object p2, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296985:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;Lcom/kantv/ui/activity/SafeCenterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeCenterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeCenterActivity;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleTV:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->titleRightTxt:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->safecenter_phone:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->bindPhoneTv:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeCenterActivity;->bindEmailTv:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296986:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296986:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296985:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeCenterActivity_ViewBinding;->view2131296985:Landroid/view/View;

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
