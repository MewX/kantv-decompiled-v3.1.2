.class public Ldebug/KanApplication;
.super Lcom/kantv/common/base/BaseApplication;
.source "KanApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static sAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private static sTracker:Lcom/google/android/gms/analytics/Tracker;

.field public static token:Ljava/lang/String;


# instance fields
.field private proxy:Lcom/danikula/videocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/kantv/common/base/BaseApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 55
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 55
    sget-object v0, Ldebug/KanApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static clearLogin()V
    .locals 2

    .line 200
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "uid"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "Login_State"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "Photo"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "area_data"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "birthday"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "area"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "aboutme"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "sex"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "background"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "edit_birth"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "area_code"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "contry"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "province"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    .line 221
    sput-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    return-void
.end method

.method public static clearTvDefaultIndexJson()V
    .locals 2

    .line 226
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "nav_json"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "nav_time"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "news_nav_json"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "news_nav_time"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "index_json"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    const-string v1, "index_time"

    invoke-static {v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static exitLogin()V
    .locals 4

    .line 160
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_token"

    .line 168
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "devicetype"

    const-string v2, "0"

    .line 169
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_ver"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u9000\u51fa\u767b\u5f55\u53c2\u6570"

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->exitLogin(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Ldebug/KanApplication$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ldebug/KanApplication$2;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 3

    const-class v0, Ldebug/KanApplication;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Ldebug/KanApplication;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Ldebug/KanApplication;->sAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    const-string v2, "UA-124410289-1"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    sput-object v1, Ldebug/KanApplication;->sTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 155
    :cond_0
    sget-object v1, Ldebug/KanApplication;->sTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 134
    sget-object v0, Ldebug/KanApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Ldebug/KanApplication;

    .line 119
    iget-object v0, p0, Ldebug/KanApplication;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldebug/KanApplication;->newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object v0

    iput-object v0, p0, Ldebug/KanApplication;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    :cond_0
    return-object v0
.end method

.method private newProxy()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    .line 123
    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/kantv/common/base/BaseApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 68
    invoke-super {p0}, Lcom/kantv/common/base/BaseApplication;->onCreate()V

    .line 69
    invoke-virtual {p0}, Ldebug/KanApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    .line 70
    sget-object v0, Ldebug/KanApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kantv/common/utils/Utils;->init(Landroid/content/Context;)V

    const-string v0, "npz3myH1q8EAeEy6F6mP9lI6-gzGzoHsz"

    const-string v1, "6z25gwYpqIQMIGF3M0l8obTB"

    .line 76
    invoke-static {p0, v0, v1}, Lcom/avos/avoscloud/AVOSCloud;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 84
    new-array v1, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v2, Lcom/crashlytics/android/Crashlytics$Builder;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/Crashlytics$Builder;->disabled(Z)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v2

    new-instance v4, Ldebug/KanApplication$1;

    invoke-direct {v4, p0}, Ldebug/KanApplication$1;-><init>(Ldebug/KanApplication;)V

    invoke-virtual {v2, v4}, Lcom/crashlytics/android/Crashlytics$Builder;->listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/Crashlytics$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics$Builder;->build()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    aput-object v2, v1, v3

    .line 84
    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 91
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    sput-object v1, Ldebug/KanApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 92
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    sput-object v1, Ldebug/KanApplication;->sAnalytics:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 99
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const/4 v2, 0x4

    const-string v3, "enable-accurate-seek"

    invoke-direct {v1, v2, v3, v0}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v2, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;

    const-string v3, "analyzemaxduration"

    const/16 v4, 0x64

    invoke-direct {v2, v0, v3, v4}, Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;-><init>(ILjava/lang/String;I)V

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
