.class public Lcom/kantv/ui/activity/WebViewActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "WebViewActivity.java"


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

.field mVideoView:Landroid/widget/VideoView;

.field mWebView:Landroid/webkit/WebView;

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
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

    .line 32
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->isFirst:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 44
    iput-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    return-void
.end method

.method private initWebView(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".mp4"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mLin:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mLin:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/kantv/ui/activity/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/WebViewActivity$1;-><init>(Lcom/kantv/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/kantv/ui/activity/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/WebViewActivity$2;-><init>(Lcom/kantv/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_0
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->isFirst:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374,
            0x7f090376
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_1

    const v0, 0x7f090376

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WebViewActivity;->finish()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WebViewActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    .line 49
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/WebViewActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WebViewActivity;->initBase()V

    .line 51
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/kantv/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "url"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/WebViewActivity;->initWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 151
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 152
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 155
    iput-object v1, p0, Lcom/kantv/ui/activity/WebViewActivity;->mVideoView:Landroid/widget/VideoView;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 114
    iget-boolean v1, p0, Lcom/kantv/ui/activity/WebViewActivity;->isFirst:Z

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method
