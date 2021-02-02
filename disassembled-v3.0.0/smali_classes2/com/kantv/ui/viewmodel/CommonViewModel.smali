.class public Lcom/kantv/ui/viewmodel/CommonViewModel;
.super Ljava/lang/Object;
.source "CommonViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonViewModel"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UploadLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLocationData hasData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lng"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "gps"

    .line 70
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p0, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string p1, "noncestr"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object p0, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string p1, "timestamp"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p0, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string p1, "sbID"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object p0, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string p1, "sign"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "device"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p1, "os"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p1, "app_ver"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string p1, "interfaceVersion"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/kantv/common/api/ApiService;->locationIndex(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/kantv/ui/viewmodel/CommonViewModel$1;

    invoke-direct {p1}, Lcom/kantv/ui/viewmodel/CommonViewModel$1;-><init>()V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static checkHadBindEmak(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_token"

    .line 109
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "devicetype"

    const-string v2, "0"

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kantv/common/api/ApiService;->uinfo(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v7, Lcom/kantv/ui/viewmodel/CommonViewModel$2;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    move-object v1, v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/viewmodel/CommonViewModel$2;-><init>(Landroid/content/Context;ZLandroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    invoke-interface {v0, v7}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static checkNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-static {p0}, Lcom/kantv/common/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/viewmodel/CommonViewModel$4;

    invoke-direct {p2}, Lcom/kantv/ui/viewmodel/CommonViewModel$4;-><init>()V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/viewmodel/CommonViewModel$3;

    invoke-direct {p2, p0}, Lcom/kantv/ui/viewmodel/CommonViewModel$3;-><init>(Landroid/content/Context;)V

    const-string p0, "\u7acb\u5373\u5f00\u542f"

    .line 166
    invoke-virtual {p1, p0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lcom/kantv/ui/view/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static getAdData()V
    .locals 5

    .line 276
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/config/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v2, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v4, "_token"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "devicetype"

    const-string v2, "0"

    .line 284
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->startup(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/viewmodel/CommonViewModel$8;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/kantv/ui/viewmodel/CommonViewModel$8;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static initAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    .line 256
    invoke-virtual {p0, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/kantv/ui/viewmodel/CommonViewModel$6;

    invoke-direct {p6}, Lcom/kantv/ui/viewmodel/CommonViewModel$6;-><init>()V

    .line 257
    :goto_0
    invoke-virtual {p0, p4, p6}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p5, Lcom/kantv/ui/viewmodel/CommonViewModel$7;

    invoke-direct {p5}, Lcom/kantv/ui/viewmodel/CommonViewModel$7;-><init>()V

    .line 263
    :goto_1
    invoke-virtual {p0, p3, p5}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method public static inputUserBean(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12

    const-string v0, "hometown"

    const-string v1, "city"

    const-string v2, "province"

    const-string v3, "area"

    const-string v4, ""

    .line 311
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 312
    const-class v6, Lcom/kantv/ui/bean/UserInfoBean;

    invoke-virtual {v5, p0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/UserInfoBean;

    .line 314
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mobile"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getMobile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mobile_code"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mail"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getMail()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "sex"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getGender()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Photo"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getPhoto()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "birthday"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getBirthday()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "aboutme"

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getAboutme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "name_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "edit_birth"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/kantv/ui/bean/UserInfoBean;->getModify()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :try_start_1
    invoke-static {p0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 329
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v3, v5}, Lcom/kantv/common/utils/StringUtils;->isJSONKeyAndValueEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "country"

    if-nez v5, :cond_0

    .line 330
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "area_code_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "area_code"

    invoke-static {v7, v8, v5}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "com.imkan.tv"

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/kantv/common/utils/StringUtils;->isJSONKeyAndValueEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 341
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 343
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "contry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 356
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :cond_3
    :goto_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "area_data"

    invoke-static {p0, p1, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 361
    invoke-static {p0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 362
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "json_domain"

    const-string v0, "http://image.suramic.com"

    invoke-static {p0, p1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/area/area.json"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/kantv/common/api/ApiService;->getAreaJson(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/kantv/ui/viewmodel/CommonViewModel$9;

    invoke-direct {p1}, Lcom/kantv/ui/viewmodel/CommonViewModel$9;-><init>()V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 383
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static play_delay(ZLcom/kantv/video/KTVideoPlayer;Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 196
    iget-object v1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getPlay_delay_state()I

    move-result v1

    .line 198
    iget-object v2, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v2}, Lcom/kantv/video/KTVideoPlayer;->getCurrent_play_delay()I

    move-result v2

    .line 199
    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getPlay_delay_state()I

    move-result p1

    .line 200
    sget-object v3, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b9a\u65f6\u9000\u51fa\u5f53\u524d\u6a21\u5f0f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 203
    sget-object p0, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    const-string p1, "\u5b9a\u65f6\u9000\u51fa\u6ca1\u6709\u6d88\u8d39\uff1a\u6ca1\u6709\u5f00\u542f"

    invoke-static {p0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v3, -0x2

    const-string v4, ","

    const-string v5, "\u5b9a\u65f6\u9000\u51fa\u6ca1\u6709\u6d88\u8d39\uff1a\u5f00\u542f\u4e86\uff0c\u4f46\u662f\u6ca1\u5230\u65f6\u95f4 "

    if-ne v1, v3, :cond_1

    if-nez p0, :cond_3

    .line 207
    sget-object p0, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/16 p0, 0x1e

    if-eq v1, p0, :cond_2

    const/16 p0, 0x3c

    if-ne v1, p0, :cond_3

    :cond_2
    if-eq p1, v2, :cond_3

    .line 211
    sget-object p0, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 216
    :cond_3
    :try_start_0
    new-instance p0, Lcom/kantv/ui/viewmodel/CommonViewModel$5;

    invoke-direct {p0, p2}, Lcom/kantv/ui/viewmodel/CommonViewModel$5;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 230
    :cond_4
    sget-object p0, Lcom/kantv/ui/viewmodel/CommonViewModel;->TAG:Ljava/lang/String;

    const-string p1, "\u5b9a\u65f6\u9000\u51fa\u6ca1\u6709\u6d88\u8d39\uff1aplay\uff1anull"

    invoke-static {p0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static startPhotoZoom(Landroid/content/Context;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 8

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 425
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "noFaceDetection"

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt p1, v4, :cond_0

    .line 429
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 431
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "crop"

    const-string v4, "true"

    .line 435
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "aspectX"

    .line 437
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 438
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0xc8

    const-string v4, "outputX"

    .line 440
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "outputY"

    .line 441
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "return-data"

    .line 443
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "outputFormat"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/crop.jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 450
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 451
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 453
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    const-string v6, "output"

    .line 458
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 459
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-object v4
.end method
