.class Lcom/kantv/ui/activity/NewsDetailActivity$4;
.super Lcom/kantv/common/api/GetCallBack;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->initRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$4;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/GetCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 504
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/GetCallBack;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 505
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$4;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$500(Lcom/kantv/ui/activity/NewsDetailActivity;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 497
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/GetCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 498
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$4;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$300(Lcom/kantv/ui/activity/NewsDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$4;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$4;->json:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$400(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;)V

    return-void
.end method
