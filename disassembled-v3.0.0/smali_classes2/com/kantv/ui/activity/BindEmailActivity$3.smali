.class Lcom/kantv/ui/activity/BindEmailActivity$3;
.super Lcom/kantv/common/api/CommonCallBack;
.source "BindEmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BindEmailActivity;->bindEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BindEmailActivity;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BindEmailActivity;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->this$0:Lcom/kantv/ui/activity/BindEmailActivity;

    iput-object p4, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->val$email:Ljava/lang/String;

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

    .line 181
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 182
    iget-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->this$0:Lcom/kantv/ui/activity/BindEmailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/BindEmailActivity;->access$100(Lcom/kantv/ui/activity/BindEmailActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 186
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 187
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->val$email:Ljava/lang/String;

    const-string v1, "ACCOUNTID"

    invoke-static {p2, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "emailbind"

    .line 189
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->val$email:Ljava/lang/String;

    const-string v1, "email"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/kantv/ui/activity/BindEmailActivity$3;->this$0:Lcom/kantv/ui/activity/BindEmailActivity;

    const-class v1, Lcom/kantv/ui/activity/SendEmailResultActivity;

    invoke-virtual {v0, p2, v1}, Lcom/kantv/ui/activity/BindEmailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_2
    const-string p2, "msg"

    .line 193
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
