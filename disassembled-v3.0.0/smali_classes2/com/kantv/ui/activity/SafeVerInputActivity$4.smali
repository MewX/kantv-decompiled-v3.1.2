.class Lcom/kantv/ui/activity/SafeVerInputActivity$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SafeVerInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerInputActivity;->verPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$4;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

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

    .line 245
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 246
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$4;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SafeVerInputActivity;->access$100(Lcom/kantv/ui/activity/SafeVerInputActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "msg"

    .line 251
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method
