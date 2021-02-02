.class public Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VideoPlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/VideoPlayActivity;

.field private view2131296306:Landroid/view/View;

.field private view2131296308:Landroid/view/View;

.field private view2131296316:Landroid/view/View;

.field private view2131296320:Landroid/view/View;

.field private view2131296325:Landroid/view/View;

.field private view2131296362:Landroid/view/View;

.field private view2131296418:Landroid/view/View;

.field private view2131296513:Landroid/view/View;

.field private view2131296768:Landroid/view/View;

.field private view2131296773:Landroid/view/View;

.field private view2131296774:Landroid/view/View;

.field private view2131296787:Landroid/view/View;

.field private view2131296917:Landroid/view/View;

.field private view2131296937:Landroid/view/View;

.field private view2131296993:Landroid/view/View;

.field private view2131297063:Landroid/view/View;

.field private view2131297064:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoPlayActivity;

    .line 72
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0903cc

    const-string v2, "field \'mVideoPlayerRl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    .line 73
    const-class v0, Lcom/kantv/video/KTVideoPlayer;

    const v1, 0x7f0901de

    const-string v2, "field \'mKTVideoPlayer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/video/KTVideoPlayer;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    .line 74
    const-class v0, Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0903c6

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 75
    const-class v0, Lcom/kantv/ui/view/TabPageIndicator;

    const v1, 0x7f09035f

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/TabPageIndicator;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 76
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090388

    const-string v2, "field \'tpView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->tpView:Landroid/widget/RelativeLayout;

    .line 77
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f0902a3

    const-string v2, "field \'progressBarSb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    .line 78
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090385

    const-string v2, "field \'totalTimeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->totalTimeTv:Landroid/widget/TextView;

    .line 79
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900e6

    const-string v2, "field \'diviseTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->diviseTv:Landroid/widget/TextView;

    .line 80
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090354

    const-string v2, "field \'startIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    .line 81
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090356

    const-string v2, "field \'stateTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    .line 82
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900cc

    const-string v2, "field \'currentTimeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTimeTv:Landroid/widget/TextView;

    const v0, 0x7f090295

    const-string v1, "field \'pauseTv\' and method \'onClick\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 84
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'pauseTv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    .line 85
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296917:Landroid/view/View;

    .line 86
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903cb

    const-string v2, "field \'mErrorText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mErrorText:Landroid/widget/TextView;

    .line 93
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09032a

    const-string v2, "field \'shareUnlockLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090328

    const-string v1, "field \'shareImg\' and method \'onClick\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 95
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'shareImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->shareImg:Landroid/widget/ImageView;

    .line 96
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297064:Landroid/view/View;

    .line 97
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090207

    const-string v2, "field \'loginRegUnlockLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0902e1

    const-string v1, "field \'scoreTV\' and method \'onClick\'"

    .line 104
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 105
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'scoreTV\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    .line 106
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296993:Landroid/view/View;

    .line 107
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$3;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09003c

    const-string v1, "field \'adLayout\' and method \'onClick\'"

    .line 113
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 114
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'adLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    .line 115
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296316:Landroid/view/View;

    .line 116
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$4;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const-class v0, Landroid/widget/VideoView;

    const v1, 0x7f0903b0

    const-string v2, "field \'videoAd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    .line 123
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090036

    const-string v2, "field \'adExitLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitLayout:Landroid/widget/FrameLayout;

    .line 124
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090033

    const-string v2, "field \'adExitTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitTv:Landroid/widget/TextView;

    .line 125
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903af

    const-string v2, "field \'videoDetailLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090040

    const-string v1, "field \'adSoundImg\' and method \'onClick\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 127
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'adSoundImg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    .line 128
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296320:Landroid/view/View;

    .line 129
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$5;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0903e0

    const-string v2, "field \'mWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f090200

    const-string v1, "field \'loadErrorLayout\' and method \'onClick\'"

    .line 136
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 137
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'loadErrorLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->loadErrorLayout:Landroid/widget/LinearLayout;

    .line 138
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296768:Landroid/view/View;

    .line 139
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$6;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903c3

    const-string v2, "field \'videoDetailChildLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailChildLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090101

    const-string v1, "field \'feedBack\' and method \'onClick\'"

    .line 146
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 147
    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->feedBack:Landroid/view/View;

    .line 148
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296513:Landroid/view/View;

    .line 149
    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$7;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006a

    const-string v1, "field \'bindEmail\' and method \'onClick\'"

    .line 155
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 156
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'bindEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmail:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296362:Landroid/view/View;

    .line 158
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$8;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09006b

    const-string v2, "field \'bindEmailContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmailContent:Landroid/widget/LinearLayout;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f090045

    .line 165
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 166
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296325:Landroid/view/View;

    .line 167
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$9;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902a9

    .line 173
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 174
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296937:Landroid/view/View;

    .line 175
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$10;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a2

    .line 181
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 182
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296418:Landroid/view/View;

    .line 183
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$11;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090213

    .line 189
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 190
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296787:Landroid/view/View;

    .line 191
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$12;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$12;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090327

    .line 197
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 198
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297063:Landroid/view/View;

    .line 199
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$13;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$13;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090205

    .line 205
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 206
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296773:Landroid/view/View;

    .line 207
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$14;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$14;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090206

    .line 213
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 214
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296774:Landroid/view/View;

    .line 215
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$15;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$15;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090032

    .line 221
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 222
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296306:Landroid/view/View;

    .line 223
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$16;

    invoke-direct {v2, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$16;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090034

    .line 229
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 230
    iput-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296308:Landroid/view/View;

    .line 231
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$17;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding$17;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoPlayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 244
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->target:Lcom/kantv/ui/activity/VideoPlayActivity;

    .line 246
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    .line 247
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    .line 248
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 249
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    .line 250
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpView:Landroid/widget/RelativeLayout;

    .line 251
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    .line 252
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->totalTimeTv:Landroid/widget/TextView;

    .line 253
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->diviseTv:Landroid/widget/TextView;

    .line 254
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->startIv:Landroid/widget/ImageView;

    .line 255
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    .line 256
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTimeTv:Landroid/widget/TextView;

    .line 257
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    .line 258
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mErrorText:Landroid/widget/TextView;

    .line 259
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    .line 260
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareImg:Landroid/widget/ImageView;

    .line 261
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    .line 262
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->scoreTV:Landroid/widget/TextView;

    .line 263
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    .line 264
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    .line 265
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitLayout:Landroid/widget/FrameLayout;

    .line 266
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitTv:Landroid/widget/TextView;

    .line 267
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    .line 268
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    .line 269
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    .line 270
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->loadErrorLayout:Landroid/widget/LinearLayout;

    .line 271
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailChildLayout:Landroid/widget/LinearLayout;

    .line 272
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->feedBack:Landroid/view/View;

    .line 273
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmail:Landroid/widget/TextView;

    .line 274
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmailContent:Landroid/widget/LinearLayout;

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296917:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296917:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297064:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297064:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296993:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296993:Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296316:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296316:Landroid/view/View;

    .line 284
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296320:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296320:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296768:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296768:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296513:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296513:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296362:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296362:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296325:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296325:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296937:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296937:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296418:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296418:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296787:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296787:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297063:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131297063:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296773:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296773:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296774:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296774:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296306:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296306:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296308:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity_ViewBinding;->view2131296308:Landroid/view/View;

    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
