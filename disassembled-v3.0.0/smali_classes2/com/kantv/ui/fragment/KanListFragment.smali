.class public Lcom/kantv/ui/fragment/KanListFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "KanListFragment.java"


# instance fields
.field private isFirst:Z

.field mBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903e2
    .end annotation
.end field

.field mLin:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903e1
    .end annotation
.end field

.field mWebView:Landroid/webkit/WebView;

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->isFirst:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/KanListFragment;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/kantv/ui/fragment/KanListFragment;->jumpNewsLink(Ljava/lang/String;)V

    return-void
.end method

.method private initWebView(Ljava/lang/String;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/KanListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mLin:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/kantv/ui/fragment/KanListFragment$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/fragment/KanListFragment$1;-><init>(Lcom/kantv/ui/fragment/KanListFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 106
    iget-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/kantv/ui/fragment/KanListFragment$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/fragment/KanListFragment$2;-><init>(Lcom/kantv/ui/fragment/KanListFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->isFirst:Z

    return-void
.end method

.method private jumpNewsLink(Ljava/lang/String;)V
    .locals 4

    .line 144
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 146
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v2, v0, -0x2

    .line 149
    aget-object v2, p1, v2

    const-string v3, "seo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    .line 150
    aget-object p1, p1, v0

    const-string v0, "tid"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-class p1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p0, v1, p1}, Lcom/kantv/ui/fragment/KanListFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->titleRightLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u4e13\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "watchlist_topic"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://kantv6.com/watchlist"

    .line 67
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/KanListFragment;->initWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/kantv/ui/fragment/KanListFragment;->initWebView(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0063

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mRootView:Landroid/view/View;

    .line 49
    iget-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onResume()V

    .line 124
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->isFirst:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/kantv/ui/fragment/KanListFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method
