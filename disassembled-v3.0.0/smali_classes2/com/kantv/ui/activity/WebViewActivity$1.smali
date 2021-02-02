.class Lcom/kantv/ui/activity/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
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

    .line 70
    iput-object p1, p0, Lcom/kantv/ui/activity/WebViewActivity$1;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 73
    new-instance p1, Lcom/kantv/ui/view/AlertDialog;

    iget-object p3, p0, Lcom/kantv/ui/activity/WebViewActivity$1;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {p1, p3}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/WebViewActivity$1;->this$0:Lcom/kantv/ui/activity/WebViewActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f009b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/activity/WebViewActivity$1$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/activity/WebViewActivity$1$2;-><init>(Lcom/kantv/ui/activity/WebViewActivity$1;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/activity/WebViewActivity$1$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/activity/WebViewActivity$1$1;-><init>(Lcom/kantv/ui/activity/WebViewActivity$1;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "\u53d6\u6d88"

    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 89
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
