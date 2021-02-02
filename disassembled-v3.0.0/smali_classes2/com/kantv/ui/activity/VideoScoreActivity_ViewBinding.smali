.class public Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VideoScoreActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/VideoScoreActivity;

.field private view2131296994:Landroid/view/View;

.field private view2131296997:Landroid/view/View;

.field private view2131296999:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/VideoScoreActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoScoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/VideoScoreActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoScoreActivity;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902e3

    const-string v2, "field \'mScoreHeadBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->mScoreHeadBg:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0902ea

    const-string v2, "field \'mFilmHead\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmHead:Landroid/widget/ImageView;

    const v0, 0x7f0902e7

    const-string v1, "field \'mScoreShareImg\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mScoreShareImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->mScoreShareImg:Landroid/widget/ImageView;

    .line 41
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296999:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;Lcom/kantv/ui/activity/VideoScoreActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902e2

    const-string v1, "field \'scoreExitImg\' and method \'onClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'scoreExitImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreExitImg:Landroid/widget/ImageView;

    .line 50
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296994:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;Lcom/kantv/ui/activity/VideoScoreActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902e8

    const-string v2, "field \'scoreTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreTitle:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/RatingBar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mRatingBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902e4

    const-string v2, "field \'socoreMsgTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    const v0, 0x7f0902e5

    const-string v1, "field \'scoreOk\' and method \'onClick\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'scoreOk\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreOk:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296997:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;Lcom/kantv/ui/activity/VideoScoreActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900b3

    const-string v2, "field \'commentEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/kantv/ui/activity/VideoScoreActivity;->commentEdit:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoScoreActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoScoreActivity;

    .line 79
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScoreHeadBg:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->mFilmHead:Landroid/widget/ImageView;

    .line 81
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->mScoreShareImg:Landroid/widget/ImageView;

    .line 82
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreExitImg:Landroid/widget/ImageView;

    .line 83
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreTitle:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->mRatingBar:Landroid/widget/RatingBar;

    .line 85
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->socoreMsgTv:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->scoreOk:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoScoreActivity;->commentEdit:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296999:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296999:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296994:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296994:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296997:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoScoreActivity_ViewBinding;->view2131296997:Landroid/view/View;

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
