.class Lcom/kantv/ui/activity/AccountLoginActivity$7;
.super Lcom/kantv/common/api/CommonCallBack;
.source "AccountLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AccountLoginActivity;->accountLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    iput-object p4, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->val$mobile:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/kantv/common/api/CommonCallBack;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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

    .line 338
    invoke-super {p0, p1, p2}, Lcom/kantv/common/api/CommonCallBack;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 339
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->access$300(Lcom/kantv/ui/activity/AccountLoginActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 341
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->json:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "msg"

    .line 343
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    const-string p2, "status"

    .line 344
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "data"

    .line 345
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "userInfo"

    .line 347
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 349
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Login_State"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->val$mobile:Ljava/lang/String;

    const-string v4, "ACCOUNTID"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "token"

    .line 352
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ldebug/KanApplication;->token:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "photo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Photo"

    invoke-static {v1, v3, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "num"

    const-string v3, "1"

    .line 358
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-static {p1, p2}, Lcom/kantv/ui/viewmodel/CommonViewModel;->inputUserBean(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    :goto_0
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v0, "\u767b\u5f55_\u6210\u529f"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 372
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isfirst"

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 374
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    const-class p2, Lcom/kantv/ui/MainActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/activity/AccountLoginActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 375
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->finish()V

    goto :goto_1

    .line 377
    :cond_4
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$7;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->finish()V

    .line 379
    :goto_1
    invoke-static {}, Ldebug/KanApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object p1

    const-class p2, Lcom/kantv/ui/activity/LoginActivity;

    invoke-virtual {p1, p2}, Lcom/kantv/common/base/BaseApplication;->finishActivity(Ljava/lang/Class;)V

    :cond_5
    return-void
.end method
