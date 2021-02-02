.class Lcom/kantv/ui/activity/NewsDetailActivity$1$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$1;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$1;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$1;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
