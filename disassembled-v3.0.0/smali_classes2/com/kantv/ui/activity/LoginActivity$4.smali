.class Lcom/kantv/ui/activity/LoginActivity$4;
.super Lcom/kantv/common/api/CommonCallBack;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/LoginActivity;->emailIsExistHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/LoginActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

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

    .line 268
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 269
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/LoginActivity;->access$300(Lcom/kantv/ui/activity/LoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 271
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "status"

    .line 273
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 274
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/LoginActivity;->mLoginPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCOUNTID"

    invoke-static {p2, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "data"

    .line 275
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 276
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "type"

    const-string v0, "email"

    .line 277
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    const-class v0, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p2, p1, v0}, Lcom/kantv/ui/activity/LoginActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 279
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/kantv/ui/activity/LoginActivity;->statusUserExit:Z

    goto :goto_0

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    const-class p2, Lcom/kantv/ui/activity/EmailRegisterActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/activity/LoginActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 282
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$4;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/kantv/ui/activity/LoginActivity;->statusUserExit:Z

    :cond_3
    :goto_0
    return-void
.end method
