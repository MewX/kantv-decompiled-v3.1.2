.class public Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "VideoDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field private view2131296264:Landroid/view/View;

.field private view2131296329:Landroid/view/View;

.field private view2131296430:Landroid/view/View;

.field private view2131296490:Landroid/view/View;

.field private view2131297048:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoDetailFragment;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903bb

    const-string v2, "field \'mVideoName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoName:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0903b9

    const-string v2, "field \'mPlayListRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 40
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0903c7

    const-string v2, "field \'aboutLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090006

    const-string v2, "field \'mVideoAbout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090122

    const-string v2, "field \'mUpdatanum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mUpdatanum:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903ba

    const-string v2, "field \'videoDetailScore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailScore:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090123

    const-string v2, "field \'mStarTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarTxt:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f090121

    const-string v2, "field \'mStarList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    .line 46
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0900b5

    const-string v2, "field \'commentRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b8

    const-string v2, "field \'commentTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentTxt:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900db

    const-string v2, "field \'detailCommentLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090049

    const-string v1, "field \'allCommentTv\' and method \'onClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'allCommentTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->allCommentTv:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296329:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f090120

    const-string v2, "field \'mRecommendList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f090008

    const-string v1, "field \'aboutExtendTV\' and method \'onClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'aboutExtendTV\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutExtendTV:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296264:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$2;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ae

    const-string v1, "field \'collectImg\' and method \'onClick\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'collectImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296430:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$3;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Lcom/kantv/ui/view/ShapedImageView;

    const v1, 0x7f0903c2

    const-string v2, "field \'videoDetailAdImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/ShapedImageView;

    iput-object v0, p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0900ea

    .line 78
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296490:Landroid/view/View;

    .line 80
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$4;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090318

    .line 86
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131297048:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding$5;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->target:Lcom/kantv/ui/fragment/VideoDetailFragment;

    .line 103
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoName:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 105
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    .line 106
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mUpdatanum:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailScore:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarTxt:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentTxt:Landroid/widget/TextView;

    .line 113
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->detailCommentLayout:Landroid/widget/LinearLayout;

    .line 114
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->allCommentTv:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    .line 116
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutExtendTV:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    .line 118
    iput-object v1, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296329:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296329:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296264:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296264:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296430:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296430:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296490:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131296490:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131297048:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment_ViewBinding;->view2131297048:Landroid/view/View;

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
