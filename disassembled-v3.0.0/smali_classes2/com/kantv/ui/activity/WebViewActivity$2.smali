.class Lcom/kantv/ui/activity/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WebViewActivity;->initWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WebViewActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity$2;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity$2;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WebViewActivity;->mBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity$2;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WebViewActivity;->mBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity$2;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/WebViewActivity;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
