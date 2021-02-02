.class Lcom/kantv/ui/activity/NewsDetailActivity$3$2;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$3;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$3;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$3;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3$2;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$3;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 439
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$3$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
