.class public Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/MyInfoActivity;

.field private view2131296602:Landroid/view/View;

.field private view2131296603:Landroid/view/View;

.field private view2131296604:Landroid/view/View;

.field private view2131296605:Landroid/view/View;

.field private view2131296606:Landroid/view/View;

.field private view2131296607:Landroid/view/View;

.field private view2131296608:Landroid/view/View;

.field private view2131296609:Landroid/view/View;

.field private view2131297140:Landroid/view/View;

.field private view2131297142:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MyInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MyInfoActivity;

    .line 52
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090161

    const-string v1, "field \'sexInfoLayout\' and method \'onClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'sexInfoLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->sexInfoLayout:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296609:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090374

    const-string v1, "field \'titleLeftLayout\' and method \'onClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleLeftLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 72
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090376

    const-string v1, "field \'titleRightLayout\' and method \'onClick\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'titleRightLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 83
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightTv:Landroid/widget/TextView;

    .line 84
    const-class v0, Lcom/kantv/ui/view/CircleImageView;

    const v1, 0x7f09005b

    const-string v2, "field \'mAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/CircleImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    .line 85
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090325

    const-string v2, "field \'sexTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    .line 86
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09027a

    const-string v2, "field \'nickNameTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    .line 87
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090077

    const-string v2, "field \'birthTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->birthTv:Landroid/widget/TextView;

    .line 88
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090067

    const-string v2, "field \'bgImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->bgImg:Landroid/widget/ImageView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090055

    const-string v2, "field \'areaTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->areaTv:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09000a

    const-string v2, "field \'aboutTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090147

    const-string v2, "field \'homeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->homeTv:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09013d

    const-string v2, "field \'headTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->headTip:Landroid/widget/TextView;

    .line 93
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090279

    const-string v2, "field \'nichengTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->nichengTip:Landroid/widget/TextView;

    .line 94
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09032c

    const-string v2, "field \'shengriTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->shengriTip:Landroid/widget/TextView;

    .line 95
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090324

    const-string v2, "field \'sexTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->sexTip:Landroid/widget/TextView;

    .line 96
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090146

    const-string v2, "field \'homeTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/MyInfoActivity;->homeTip:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f09015c

    .line 97
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 98
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296604:Landroid/view/View;

    .line 99
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090160

    .line 105
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 106
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296608:Landroid/view/View;

    .line 107
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015b

    .line 113
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 114
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296603:Landroid/view/View;

    .line 115
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015e

    .line 121
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296606:Landroid/view/View;

    .line 123
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015d

    .line 129
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 130
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296605:Landroid/view/View;

    .line 131
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$8;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015a

    .line 137
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 138
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296602:Landroid/view/View;

    .line 139
    new-instance v2, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$9;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015f

    .line 145
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296607:Landroid/view/View;

    .line 147
    new-instance v0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding$10;-><init>(Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;Lcom/kantv/ui/activity/MyInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MyInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->target:Lcom/kantv/ui/activity/MyInfoActivity;

    .line 162
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 163
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->sexInfoLayout:Landroid/widget/RelativeLayout;

    .line 164
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 165
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 166
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->mTitle:Landroid/widget/TextView;

    .line 167
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    .line 168
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 169
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->titleRightTv:Landroid/widget/TextView;

    .line 170
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->mAvatar:Lcom/kantv/ui/view/CircleImageView;

    .line 171
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    .line 172
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->nickNameTv:Landroid/widget/TextView;

    .line 173
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->birthTv:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->bgImg:Landroid/widget/ImageView;

    .line 175
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->areaTv:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->aboutTv:Landroid/widget/TextView;

    .line 177
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->homeTv:Landroid/widget/TextView;

    .line 178
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->headTip:Landroid/widget/TextView;

    .line 179
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->nichengTip:Landroid/widget/TextView;

    .line 180
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->shengriTip:Landroid/widget/TextView;

    .line 181
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->sexTip:Landroid/widget/TextView;

    .line 182
    iput-object v1, v0, Lcom/kantv/ui/activity/MyInfoActivity;->homeTip:Landroid/widget/TextView;

    .line 184
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296609:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296609:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297140:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131297142:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296604:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296604:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296608:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296608:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296603:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296603:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296606:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296606:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296605:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296605:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296602:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296602:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296607:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iput-object v1, p0, Lcom/kantv/ui/activity/MyInfoActivity_ViewBinding;->view2131296607:Landroid/view/View;

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
