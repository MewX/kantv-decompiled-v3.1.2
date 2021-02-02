.class public Lcom/kantv/ui/activity/SetActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SetActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/SetActivity;

.field private view2131296424:Landroid/view/View;

.field private view2131296462:Landroid/view/View;

.field private view2131296959:Landroid/view/View;

.field private view2131296984:Landroid/view/View;

.field private view2131297056:Landroid/view/View;

.field private view2131297057:Landroid/view/View;

.field private view2131297073:Landroid/view/View;

.field private view2131297140:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/SetActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/kantv/ui/activity/SetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/SetActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/SetActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/SetActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SetActivity;

    .line 48
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->titleTV:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->titleRightImg:Landroid/widget/ImageView;

    const v0, 0x7f090331

    const-string v1, "field \'signOutLayout\' and method \'onClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'signOutLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->signOutLayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297073:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903ea

    const-string v2, "field \'wxHelpTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->wxHelpTv:Landroid/widget/TextView;

    .line 71
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0900e8

    const-string v2, "field \'typeSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0902d8

    .line 72
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296984:Landroid/view/View;

    .line 74
    new-instance v2, Lcom/kantv/ui/activity/SetActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a8

    .line 80
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296424:Landroid/view/View;

    .line 82
    new-instance v2, Lcom/kantv/ui/activity/SetActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ce

    .line 88
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296462:Landroid/view/View;

    .line 90
    new-instance v2, Lcom/kantv/ui/activity/SetActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902bf

    .line 96
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 97
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296959:Landroid/view/View;

    .line 98
    new-instance v2, Lcom/kantv/ui/activity/SetActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090320

    .line 104
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 105
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297056:Landroid/view/View;

    .line 106
    new-instance v2, Lcom/kantv/ui/activity/SetActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090321

    .line 112
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 113
    iput-object p2, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297057:Landroid/view/View;

    .line 114
    new-instance v0, Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/SetActivity_ViewBinding$8;-><init>(Lcom/kantv/ui/activity/SetActivity_ViewBinding;Lcom/kantv/ui/activity/SetActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SetActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 127
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->target:Lcom/kantv/ui/activity/SetActivity;

    .line 129
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 131
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 132
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->titleTV:Landroid/widget/TextView;

    .line 133
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->signOutLayout:Landroid/widget/LinearLayout;

    .line 135
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->wxHelpTv:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/kantv/ui/activity/SetActivity;->typeSwitch:Landroid/widget/Switch;

    .line 138
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297073:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297073:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296984:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296984:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296424:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296424:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296462:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296462:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296959:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131296959:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297056:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297056:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297057:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/kantv/ui/activity/SetActivity_ViewBinding;->view2131297057:Landroid/view/View;

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
