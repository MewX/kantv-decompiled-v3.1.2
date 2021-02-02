.class public Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SafeVerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SafeVerActivity;

.field private view2131297051:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SafeVerActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SafeVerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerActivity;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 46
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090376

    const-string v2, "field \'titleRightLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleTV:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightTxt:Landroid/widget/TextView;

    const v0, 0x7f09031b

    const-string v1, "field \'sendVerBtn\' and method \'onClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'sendVerBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SafeVerActivity;->sendVerBtn:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297051:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;Lcom/kantv/ui/activity/SafeVerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902db

    const-string v2, "field \'safeVerNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/ui/activity/SafeVerActivity;->safeVerNum:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SafeVerActivity;

    .line 69
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 70
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 71
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleTV:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 75
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->titleRightTxt:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->sendVerBtn:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/SafeVerActivity;->safeVerNum:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297051:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iput-object v1, p0, Lcom/kantv/ui/activity/SafeVerActivity_ViewBinding;->view2131297051:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
