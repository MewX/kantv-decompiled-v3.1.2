.class Lcom/kantv/ui/activity/NewsDetailActivity$3;
.super Landroid/webkit/WebViewClient;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->parseDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 468
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f51\u9875\u52a0\u8f7d\u5b8c\u6210..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewsDetailActivity"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 471
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$100(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 451
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u7f51\u9875\u5f00\u59cb\u52a0\u8f7d:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewsDetailActivity"

    invoke-static {p2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 435
    new-instance p1, Lcom/kantv/ui/view/AlertDialog;

    iget-object p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p1, p3}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f009b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/activity/NewsDetailActivity$3$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/activity/NewsDetailActivity$3$2;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$3;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/activity/NewsDetailActivity$3$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/activity/NewsDetailActivity$3$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$3;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "\u53d6\u6d88"

    .line 441
    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
