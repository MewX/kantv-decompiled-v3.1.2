.class Lcom/kantv/ui/activity/SafeVerActivity$1;
.super Lcom/kantv/common/api/CommonCallBack;
.source "SafeVerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerActivity;->verPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity$1;->this$0:Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
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

    .line 126
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 127
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity$1;->this$0:Lcom/kantv/ui/activity/SafeVerActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SafeVerActivity;->access$000(Lcom/kantv/ui/activity/SafeVerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/SafeVerActivity$1;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 131
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity$1;->this$0:Lcom/kantv/ui/activity/SafeVerActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/SafeVerActivity;->verPhoneNum:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerActivity$1;->this$0:Lcom/kantv/ui/activity/SafeVerActivity;

    const-class v1, Lcom/kantv/ui/activity/SafeVerInputActivity;

    invoke-virtual {v0, p2, v1}, Lcom/kantv/ui/activity/SafeVerActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    const-string p2, "msg"

    .line 135
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method
