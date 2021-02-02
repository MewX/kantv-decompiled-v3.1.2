.class public Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "FilePathSetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/FilePathSetActivity;

.field private view2131296443:Landroid/view/View;

.field private view2131296918:Landroid/view/View;

.field private view2131297015:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/FilePathSetActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/FilePathSetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/FilePathSetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/FilePathSetActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilePathSetActivity;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901bc

    const-string v2, "field \'phonesd_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->phonesd_tv:Landroid/widget/TextView;

    const v0, 0x7f0902f7

    const-string v1, "field \'sdLayout\' and method \'onClick\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'sdLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->sdLayout:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131297015:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;Lcom/kantv/ui/activity/FilePathSetActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902f5

    const-string v2, "field \'sddescribe_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->sddescribe_tv:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0901ba

    const-string v2, "field \'checkBox_phone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    .line 49
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0902f4

    const-string v2, "field \'checkBox_sd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901bb

    const-string v2, "field \'sdp_iv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902f6

    const-string v2, "field \'sd_iv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f090296

    .line 52
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296918:Landroid/view/View;

    .line 54
    new-instance v2, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;Lcom/kantv/ui/activity/FilePathSetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900bb

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296443:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;Lcom/kantv/ui/activity/FilePathSetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilePathSetActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/FilePathSetActivity;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->phonesd_tv:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdLayout:Landroid/widget/RelativeLayout;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->sddescribe_tv:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131297015:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131297015:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296918:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296918:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296443:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/kantv/ui/activity/FilePathSetActivity_ViewBinding;->view2131296443:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
