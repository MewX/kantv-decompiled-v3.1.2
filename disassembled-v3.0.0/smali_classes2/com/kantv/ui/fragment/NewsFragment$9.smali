.class Lcom/kantv/ui/fragment/NewsFragment$9;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsFragment;->getContentDetail(Lcom/kantv/ui/bean/String8Bean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsFragment;

.field final synthetic val$data:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsFragment;Lcom/kantv/ui/bean/String8Bean;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$9;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    iput-object p2, p0, Lcom/kantv/ui/fragment/NewsFragment$9;->val$data:Lcom/kantv/ui/bean/String8Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    if-eqz p2, :cond_2

    .line 657
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 659
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 662
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    .line 667
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "data"

    .line 668
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 670
    :cond_1
    new-instance p2, Lcom/kantv/ui/utils/SharedData;

    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$9;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "new_cache"

    invoke-direct {p2, v0, v1}, Lcom/kantv/ui/utils/SharedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/kantv/ui/fragment/NewsFragment$9;->val$data:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kantv/ui/utils/SharedData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object p2, p0, Lcom/kantv/ui/fragment/NewsFragment$9;->val$data:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/bean/String8Bean;->setStr6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
