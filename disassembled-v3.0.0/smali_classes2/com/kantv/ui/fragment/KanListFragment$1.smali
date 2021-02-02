.class Lcom/kantv/ui/fragment/KanListFragment$1;
.super Landroid/webkit/WebViewClient;
.source "KanListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/KanListFragment;->initWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/KanListFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/KanListFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment$1;->this$0:Lcom/kantv/ui/fragment/KanListFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 81
    new-instance p1, Lcom/kantv/ui/view/AlertDialog;

    iget-object p3, p0, Lcom/kantv/ui/fragment/KanListFragment$1;->this$0:Lcom/kantv/ui/fragment/KanListFragment;

    invoke-virtual {p3}, Lcom/kantv/ui/fragment/KanListFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/fragment/KanListFragment$1;->this$0:Lcom/kantv/ui/fragment/KanListFragment;

    invoke-virtual {p3}, Lcom/kantv/ui/fragment/KanListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0f009b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/fragment/KanListFragment$1$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/KanListFragment$1$2;-><init>(Lcom/kantv/ui/fragment/KanListFragment$1;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p3, Lcom/kantv/ui/fragment/KanListFragment$1$1;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/KanListFragment$1$1;-><init>(Lcom/kantv/ui/fragment/KanListFragment$1;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "\u53d6\u6d88"

    .line 87
    invoke-virtual {p1, p2, p3}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string v1, "redirect"

    .line 97
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "movie"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/KanListFragment$1;->this$0:Lcom/kantv/ui/fragment/KanListFragment;

    invoke-static {p1, p2}, Lcom/kantv/ui/fragment/KanListFragment;->access$000(Lcom/kantv/ui/fragment/KanListFragment;Ljava/lang/String;)V

    return v0

    .line 101
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method
