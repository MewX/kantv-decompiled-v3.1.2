.class Lcom/kantv/ui/fragment/NewsFragment$8;
.super Lcom/kantv/common/api/CommonCallBack;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsFragment;->initTodayNewsClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;Z)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$8;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 624
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 625
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$8;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/NewsFragment;->access$1700(Lcom/kantv/ui/fragment/NewsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 626
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 627
    iget-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 629
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "200"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
