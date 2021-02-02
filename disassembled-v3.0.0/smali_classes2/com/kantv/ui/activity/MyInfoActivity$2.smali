.class Lcom/kantv/ui/activity/MyInfoActivity$2;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->showHomePickerDialog()V
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
.field final synthetic this$0:Lcom/kantv/ui/activity/MyInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$2;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

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

    .line 395
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const p1, 0x7f0f0077

    const/4 p2, 0x0

    .line 396
    invoke-static {p1, p2}, Lcom/kantv/ui/utils/ToastUtils;->show(II)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    if-eqz p2, :cond_0

    .line 383
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "area_data"

    invoke-static {p2, v0, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    iget-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity$2;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p2, p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$100(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const p1, 0x7f0f0077

    const/4 p2, 0x0

    .line 390
    invoke-static {p1, p2}, Lcom/kantv/ui/utils/ToastUtils;->show(II)V

    :cond_0
    :goto_0
    return-void
.end method
