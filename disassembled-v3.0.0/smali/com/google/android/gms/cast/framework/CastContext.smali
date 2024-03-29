.class public Lcom/google/android/gms/cast/framework/CastContext;
.super Ljava/lang/Object;


# static fields
.field public static final OPTIONS_PROVIDER_CLASS_NAME_KEY:Ljava/lang/String; = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdg;

.field private static zzgs:Lcom/google/android/gms/cast/framework/CastContext;


# instance fields
.field private final zzgt:Landroid/content/Context;

.field private final zzgu:Lcom/google/android/gms/cast/framework/zzj;

.field private final zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

.field private final zzgw:Lcom/google/android/gms/cast/framework/zze;

.field private final zzgx:Lcom/google/android/gms/cast/framework/PrecacheManager;

.field private final zzgy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

.field private final zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private zzha:Lcom/google/android/gms/internal/cast/zzw;

.field private zzhb:Lcom/google/android/gms/internal/cast/zzf;

.field private final zzhc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 185
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/SessionProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Unable to call %s on %s."

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/cast/zzw;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/cast/zzw;-><init>(Landroid/support/v7/media/MediaRouter;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzha:Lcom/google/android/gms/internal/cast/zzw;

    .line 33
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhc:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzp()V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzo()Ljava/util/Map;

    move-result-object p1

    .line 36
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzha:Lcom/google/android/gms/internal/cast/zzw;

    .line 37
    invoke-static {p3, p2, v1, p1}, Lcom/google/android/gms/internal/cast/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzj;Ljava/util/Map;)Lcom/google/android/gms/cast/framework/zzj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 v1, 0x0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v2}, Lcom/google/android/gms/cast/framework/zzj;->zzx()Lcom/google/android/gms/cast/framework/zzp;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 42
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array v4, p3, [Ljava/lang/Object;

    const-string v5, "getDiscoveryManagerImpl"

    aput-object v5, v4, p2

    const-class v5, Lcom/google/android/gms/cast/framework/zzj;

    .line 43
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    .line 44
    invoke-virtual {v3, v2, v0, v4}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 46
    :cond_0
    new-instance v3, Lcom/google/android/gms/cast/framework/zze;

    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/framework/zze;-><init>(Lcom/google/android/gms/cast/framework/zzp;)V

    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgw:Lcom/google/android/gms/cast/framework/zze;

    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v2}, Lcom/google/android/gms/cast/framework/zzj;->zzw()Lcom/google/android/gms/cast/framework/zzv;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 51
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v4, "getSessionManagerImpl"

    aput-object v4, p3, p2

    const-class p2, Lcom/google/android/gms/cast/framework/zzj;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 53
    invoke-virtual {v3, v2, v0, p3}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v1

    :goto_2
    if-nez p1, :cond_1

    move-object p2, v1

    goto :goto_3

    .line 55
    :cond_1
    new-instance p2, Lcom/google/android/gms/cast/framework/SessionManager;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/cast/framework/SessionManager;-><init>(Lcom/google/android/gms/cast/framework/zzv;Landroid/content/Context;)V

    :goto_3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 56
    new-instance p1, Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/framework/MediaNotificationManager;-><init>(Lcom/google/android/gms/cast/framework/SessionManager;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    if-nez p1, :cond_2

    goto :goto_4

    .line 60
    :cond_2
    new-instance v1, Lcom/google/android/gms/cast/framework/PrecacheManager;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/cast/zzch;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/cast/zzch;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-direct {v1, p2, p1, v0}, Lcom/google/android/gms/cast/framework/PrecacheManager;-><init>(Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/SessionManager;Lcom/google/android/gms/internal/cast/zzch;)V

    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgx:Lcom/google/android/gms/cast/framework/PrecacheManager;

    return-void
.end method

.method public static getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzgs:Lcom/google/android/gms/cast/framework/CastContext;

    return-object v0
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzgs:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/CastContext;->zzc(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/cast/framework/CastContext;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getCastOptions(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V

    sput-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzgs:Lcom/google/android/gms/cast/framework/CastContext;

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgs:Lcom/google/android/gms/cast/framework/CastContext;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastSession;->getVolume()D

    move-result-wide v1

    add-double/2addr v1, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v1, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v1

    .line 180
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/CastSession;->setVolume(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 183
    :goto_1
    sget-object p1, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const-string p0, "Unable to call CastSession.setVolume(double)."

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return v0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzc(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/OptionsProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 18
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 20
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v2, "Bundle is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 25
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/framework/OptionsProvider;

    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    .line 28
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to initialize CastContext."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzo()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhb:Lcom/google/android/gms/internal/cast/zzf;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhb:Lcom/google/android/gms/internal/cast/zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->zzaj()Landroid/os/IBinder;

    move-result-object v2

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhc:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/SessionProvider;

    const-string v3, "Additional SessionProvider must not be null."

    .line 71
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Category for SessionProvider must not be null or empty string."

    .line 74
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v6, "SessionProvider for category %s already added"

    .line 77
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionProvider;->zzaj()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzp()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/cast/zzf;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzha:Lcom/google/android/gms/internal/cast/zzw;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhb:Lcom/google/android/gms/internal/cast/zzf;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzhb:Lcom/google/android/gms/internal/cast/zzf;

    return-void
.end method


# virtual methods
.method public addAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    new-instance v1, Lcom/google/android/gms/cast/framework/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zza;-><init>(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzj;->zza(Lcom/google/android/gms/cast/framework/zzf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "addVisibilityChangeListener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzj;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 124
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    return-object v0
.end method

.method public getCastState()I
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCastState()I

    move-result v0

    return v0
.end method

.method public getMediaNotificationManager()Lcom/google/android/gms/cast/framework/MediaNotificationManager;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgy:Lcom/google/android/gms/cast/framework/MediaNotificationManager;

    return-object v0
.end method

.method public getMergedSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzj;->zzv()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getMergedSelectorAsBundle"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/gms/cast/framework/zzj;

    .line 94
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 95
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrecacheManager()Lcom/google/android/gms/cast/framework/PrecacheManager;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgx:Lcom/google/android/gms/cast/framework/PrecacheManager;

    return-object v0
.end method

.method public getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    return-object v0
.end method

.method public isAppVisible()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzj;->isAppVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "isApplicationVisible"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzj;

    .line 105
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Unable to call %s on %s."

    .line 106
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public onDispatchVolumeKeyEventBeforeJellyBean(Landroid/view/KeyEvent;)Z
    .locals 7

    const-string v0, "Must be called from the main thread."

    .line 162
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastOptions;->getVolumeDeltaBeforeIceCreamSandwich()D

    move-result-wide v2

    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 170
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v6, 0x18

    if-eq p1, v6, :cond_4

    const/16 v6, 0x19

    if-eq p1, v6, :cond_3

    return v1

    :cond_3
    neg-double v1, v2

    .line 173
    invoke-static {v0, v1, v2, v4}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    return v5

    .line 171
    :cond_4
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/cast/framework/CastContext;->zza(Lcom/google/android/gms/cast/framework/CastSession;DZ)Z

    return v5

    :cond_5
    :goto_1
    return v1
.end method

.method public removeAppVisibilityListener(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    new-instance v1, Lcom/google/android/gms/cast/framework/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/zza;-><init>(Lcom/google/android/gms/cast/framework/AppVisibilityListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/framework/zzj;->zzb(Lcom/google/android/gms/cast/framework/zzf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "addVisibilityChangeListener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzj;

    .line 133
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 134
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/SessionManager;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    return-void
.end method

.method public setReceiverApplicationId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Must be called from the main thread."

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/CastOptions;->setReceiverApplicationId(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzp()V

    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/CastContext;->zzo()Ljava/util/Map;

    move-result-object v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/cast/framework/zzj;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setReceiverApplicationId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/gms/cast/framework/zzj;

    .line 155
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 156
    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgt:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->zza(Landroid/content/Context;)V

    return-void
.end method

.method public final zzq()Z
    .locals 6

    const-string v0, "Must be called from the main thread."

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgu:Lcom/google/android/gms/cast/framework/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/zzj;->zzq()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "hasActivityInRecents"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gms/cast/framework/zzj;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Unable to call %s on %s."

    .line 113
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final zzr()Lcom/google/android/gms/cast/framework/zze;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastContext;->zzgw:Lcom/google/android/gms/cast/framework/zze;

    return-object v0
.end method
