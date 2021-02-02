.class Lcom/kantv/ui/activity/NewsDetailActivity$24$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$24;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

.field final synthetic val$infoJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$24;Lorg/json/JSONObject;)V
    .locals 0

    .line 1726
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->val$infoJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1729
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->val$infoJson:Lorg/json/JSONObject;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mNewsDetailSource:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->val$infoJson:Lorg/json/JSONObject;

    const-string v2, "sourcename"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->val$infoJson:Lorg/json/JSONObject;

    const-string v2, "posttime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/kantv/ui/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/RawReader;->readRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 1734
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->val$infoJson:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{\u65b0\u95fb\u5185\u5bb9}"

    .line 1735
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1736
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$000(Lcom/kantv/ui/activity/NewsDetailActivity;)Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 1738
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v3, v0, Lcom/kantv/ui/activity/NewsDetailActivity;->mWeb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$24$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$24;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$24;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$100(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    return-void
.end method
