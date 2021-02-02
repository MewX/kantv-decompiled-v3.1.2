.class Lcom/kantv/ui/activity/AccountLoginActivity$8;
.super Lcom/kantv/common/api/CommonCallBack;
.source "AccountLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AccountLoginActivity;->accountDefaultLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

.field final synthetic val$mail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    iput-object p4, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->val$mail:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
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

    .line 402
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 403
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->access$400(Lcom/kantv/ui/activity/AccountLoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 405
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "msg"

    .line 407
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    const-string p2, "status"

    .line 408
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "data"

    .line 409
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "userInfo"

    .line 411
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 413
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Login_State"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->val$mail:Ljava/lang/String;

    const-string v4, "ACCOUNTID"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 416
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ldebug/KanApplication;->token:Ljava/lang/String;

    .line 417
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "photo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Photo"

    invoke-static {v1, v5, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "num"

    const-string v5, "1"

    .line 422
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-static {p1, p2}, Lcom/kantv/ui/viewmodel/CommonViewModel;->inputUserBean(Ljava/lang/String;Landroid/content/Context;)V

    .line 426
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u767b\u5f55_\u6210\u529f"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 427
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "isfirst"

    invoke-static {p1, v1, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 429
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    const-class p2, Lcom/kantv/ui/MainActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 430
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->finish()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 432
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    const v0, 0x7f0f006c

    invoke-virtual {p2, v0}, Lcom/kantv/ui/activity/AccountLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 433
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    const-class p2, Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 435
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$8;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->finish()V

    .line 437
    :goto_0
    invoke-static {}, Ldebug/KanApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object p1

    const-class p2, Lcom/kantv/ui/activity/LoginActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/common/base/BaseApplication;->finishActivity(Ljava/lang/Class;)V

    :cond_6
    return-void
.end method
