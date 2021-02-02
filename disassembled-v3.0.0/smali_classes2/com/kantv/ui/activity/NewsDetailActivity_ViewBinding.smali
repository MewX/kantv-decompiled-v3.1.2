.class public Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewsDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/NewsDetailActivity;

.field private view2131296330:Landroid/view/View;

.field private view2131296745:Landroid/view/View;

.field private view2131296846:Landroid/view/View;

.field private view2131296847:Landroid/view/View;

.field private view2131296850:Landroid/view/View;

.field private view2131296851:Landroid/view/View;

.field private view2131296852:Landroid/view/View;

.field private view2131296855:Landroid/view/View;

.field private view2131296862:Landroid/view/View;

.field private view2131296865:Landroid/view/View;

.field private view2131296866:Landroid/view/View;

.field private view2131296867:Landroid/view/View;

.field private view2131296868:Landroid/view/View;

.field private view2131296878:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewsDetailActivity;

    .line 62
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09025b

    const-string v2, "field \'mNewsWeb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsWeb:Landroid/widget/LinearLayout;

    .line 63
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090256

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 64
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f090251

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09025a

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTitle:Landroid/widget/TextView;

    .line 66
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090255

    const-string v2, "field \'newsDetailLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    .line 67
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090258

    const-string v2, "field \'mNewsDetailSource\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsDetailSource:Landroid/widget/TextView;

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090259

    const-string v2, "field \'mTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->mTime:Landroid/widget/TextView;

    .line 69
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ea

    const-string v2, "field \'likeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->likeTv:Landroid/widget/TextView;

    const v0, 0x7f0901e9

    const-string v1, "field \'likeImg\' and method \'onClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'likeImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296745:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090252

    const-string v1, "field \'emptyNewsCommentTip\' and method \'onClick\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'emptyNewsCommentTip\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->emptyNewsCommentTip:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296850:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004a

    const-string v1, "field \'allCommentTv\' and method \'onClick\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'allCommentTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->allCommentTv:Landroid/widget/TextView;

    .line 90
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296330:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090250

    const-string v2, "field \'newsCommentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09026e

    const-string v1, "field \'newsCommentNumTv\' and method \'onClick\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'newsCommentNumTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumTv:Landroid/widget/TextView;

    .line 100
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296878:Landroid/view/View;

    .line 101
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09026d

    const-string v2, "field \'newsCommentNumLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f09024f

    const-string v1, "field \'newsCommentBottomBarIv\' and method \'onClick\'"

    .line 108
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 109
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'newsCommentBottomBarIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentBottomBarIv:Landroid/widget/ImageView;

    .line 110
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296847:Landroid/view/View;

    .line 111
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09025e

    const-string v1, "field \'newsLoadErrorLayout\' and method \'onClick\'"

    .line 117
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 118
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'newsLoadErrorLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsLoadErrorLayout:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296862:Landroid/view/View;

    .line 120
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024e

    const-string v1, "field \'newsCommentEt\' and method \'onClick\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 127
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'newsCommentEt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentEt:Landroid/widget/EditText;

    .line 128
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296846:Landroid/view/View;

    .line 129
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090271

    const-string v2, "field \'newsDetailRateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateLayout:Landroid/widget/LinearLayout;

    .line 136
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090270

    const-string v2, "field \'newsDetailRateImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateImg:Landroid/widget/ImageView;

    .line 137
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090272

    const-string v2, "field \'newsDetailRateTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateTv:Landroid/widget/TextView;

    .line 138
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090277

    const-string v2, "field \'newsPageStartLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/NewsDetailActivity;->newsPageStartLayout:Landroid/widget/LinearLayout;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f090253

    .line 139
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 140
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296851:Landroid/view/View;

    .line 141
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$8;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090254

    .line 147
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 148
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296852:Landroid/view/View;

    .line 149
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$9;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090257

    .line 155
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 156
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296855:Landroid/view/View;

    .line 157
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$10;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090262

    .line 163
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 164
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296866:Landroid/view/View;

    .line 165
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$11;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090263

    .line 171
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 172
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296867:Landroid/view/View;

    .line 173
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$12;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$12;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090264

    .line 179
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 180
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296868:Landroid/view/View;

    .line 181
    new-instance v2, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$13;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$13;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090261

    .line 187
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 188
    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296865:Landroid/view/View;

    .line 189
    new-instance v0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$14;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding$14;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;Lcom/kantv/ui/activity/NewsDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewsDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->target:Lcom/kantv/ui/activity/NewsDetailActivity;

    .line 204
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsWeb:Landroid/widget/LinearLayout;

    .line 205
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 206
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 207
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mTitle:Landroid/widget/TextView;

    .line 208
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailLayout:Landroid/widget/LinearLayout;

    .line 209
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsDetailSource:Landroid/widget/TextView;

    .line 210
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mTime:Landroid/widget/TextView;

    .line 211
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeTv:Landroid/widget/TextView;

    .line 212
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->likeImg:Landroid/widget/ImageView;

    .line 213
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->emptyNewsCommentTip:Landroid/widget/TextView;

    .line 214
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->allCommentTv:Landroid/widget/TextView;

    .line 215
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentLayout:Landroid/widget/LinearLayout;

    .line 216
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumTv:Landroid/widget/TextView;

    .line 217
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentNumLayout:Landroid/widget/FrameLayout;

    .line 218
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentBottomBarIv:Landroid/widget/ImageView;

    .line 219
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsLoadErrorLayout:Landroid/widget/LinearLayout;

    .line 220
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsCommentEt:Landroid/widget/EditText;

    .line 221
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateLayout:Landroid/widget/LinearLayout;

    .line 222
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateImg:Landroid/widget/ImageView;

    .line 223
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsDetailRateTv:Landroid/widget/TextView;

    .line 224
    iput-object v1, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->newsPageStartLayout:Landroid/widget/LinearLayout;

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296745:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296745:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296850:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296850:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296330:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296330:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296878:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296878:Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296847:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296847:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296862:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296862:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296846:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296846:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296851:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296851:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296852:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296852:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296855:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296855:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296866:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296866:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296867:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296867:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296868:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296868:Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296865:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iput-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity_ViewBinding;->view2131296865:Landroid/view/View;

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
