.class public Lcom/kantv/ui/utils/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/utils/LocationUtils$ILocation;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "LocationUtils"

.field private static volatile uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;


# instance fields
.field iLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/utils/LocationUtils$ILocation;",
            ">;"
        }
    .end annotation
.end field

.field private location:Landroid/location/Location;

.field locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private locationProvider:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/kantv/common/view/MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/kantv/ui/utils/LocationUtils$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/utils/LocationUtils$1;-><init>(Lcom/kantv/ui/utils/LocationUtils;)V

    iput-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationListener:Landroid/location/LocationListener;

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/kantv/ui/utils/LocationUtils;->getLocation()V

    .line 39
    new-instance v0, Lcom/kantv/common/view/MyHandler;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/kantv/common/view/MyHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->mHandler:Lcom/kantv/common/view/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/utils/LocationUtils;Landroid/location/Location;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/kantv/ui/utils/LocationUtils;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kantv/ui/utils/LocationUtils;
    .locals 2

    .line 44
    sget-object v0, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/kantv/ui/utils/LocationUtils;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/kantv/ui/utils/LocationUtils;

    invoke-direct {v1, p0}, Lcom/kantv/ui/utils/LocationUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    .line 48
    sget-object p0, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    monitor-exit v0

    return-object p0

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_1
    :goto_0
    sget-object p0, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    iget-object p0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 54
    sget-object p0, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    invoke-direct {p0}, Lcom/kantv/ui/utils/LocationUtils;->getLocation()V

    .line 57
    :cond_2
    sget-object p0, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    return-object p0
.end method

.method private getLocation()V
    .locals 7

    const-string v0, "gps"

    const-string v1, "network"

    .line 64
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 65
    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 66
    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v2, Lcom/kantv/ui/utils/LocationUtils;->TAG:Ljava/lang/String;

    const-string v3, "getLocation"

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->locationManager:Landroid/location/LocationManager;

    .line 73
    iget-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->locationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    sget-object v0, Lcom/kantv/ui/utils/LocationUtils;->TAG:Ljava/lang/String;

    const-string v2, "\u7f51\u7edc\u5b9a\u4f4d"

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    sget-object v1, Lcom/kantv/ui/utils/LocationUtils;->TAG:Ljava/lang/String;

    const-string v2, "GPS\u5b9a\u4f4d"

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lcom/kantv/ui/utils/LocationUtils;->setLocation(Landroid/location/Location;)V

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kantv/ui/utils/LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    .line 83
    :cond_3
    sget-object v0, Lcom/kantv/ui/utils/LocationUtils;->TAG:Ljava/lang/String;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684\u4f4d\u7f6e\u63d0\u4f9b\u5668"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->mHandler:Lcom/kantv/common/view/MyHandler;

    new-instance v1, Lcom/kantv/ui/utils/-$$Lambda$LocationUtils$sKJCJpvrKuF1iRgm3L8vK4gmZ5s;

    invoke-direct {v1, p0}, Lcom/kantv/ui/utils/-$$Lambda$LocationUtils$sKJCJpvrKuF1iRgm3L8vK4gmZ5s;-><init>(Lcom/kantv/ui/utils/LocationUtils;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/kantv/common/view/MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/kantv/ui/utils/LocationUtils;->location:Landroid/location/Location;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7eac\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\u7ecf\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/utils/LocationUtils$ILocation;

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v2, p1}, Lcom/kantv/ui/utils/LocationUtils$ILocation;->onLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 121
    :cond_3
    sget-object p1, Lcom/kantv/ui/utils/LocationUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getLocation$0$LocationUtils()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/kantv/ui/utils/LocationUtils;->getLocation()V

    return-void
.end method

.method public removeLocationUpdatesListener()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->mHandler:Lcom/kantv/common/view/MyHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, v1}, Lcom/kantv/common/view/MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 162
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 163
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 167
    sput-object v1, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    .line 168
    iget-object v1, p0, Lcom/kantv/ui/utils/LocationUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_3
    return-void
.end method

.method public showLocation()Landroid/location/Location;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->location:Landroid/location/Location;

    return-object v0
.end method

.method public showLocationAsyn(Lcom/kantv/ui/utils/LocationUtils$ILocation;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->location:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1, v0}, Lcom/kantv/ui/utils/LocationUtils$ILocation;->onLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/utils/LocationUtils;->iLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object p1, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    iget-object p1, p1, Lcom/kantv/ui/utils/LocationUtils;->locationProvider:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 145
    sget-object p1, Lcom/kantv/ui/utils/LocationUtils;->uniqueInstance:Lcom/kantv/ui/utils/LocationUtils;

    invoke-direct {p1}, Lcom/kantv/ui/utils/LocationUtils;->getLocation()V

    :cond_1
    :goto_0
    return-void
.end method
