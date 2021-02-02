.class Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/StandbyDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitor"
.end annotation


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentBSSID:Ljava/lang/String;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field final synthetic this$0:Lcom/samsung/multiscreen/StandbyDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList;Landroid/content/Context;Lcom/samsung/multiscreen/Search$SearchListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1, p3}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$002(Lcom/samsung/multiscreen/StandbyDeviceList;Lcom/samsung/multiscreen/Search$SearchListener;)Lcom/samsung/multiscreen/Search$SearchListener;

    const-string p1, "connectivity"

    .line 62
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 63
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 64
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "wifi"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mCurrentBSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 69
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mCurrentBSSID:Ljava/lang/String;

    .line 71
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->registerNetworkChangeCallback(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/NetworkInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mCurrentBSSID:Ljava/lang/String;

    return-object p1
.end method

.method private registerNetworkChangeCallback(Landroid/content/Context;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method


# virtual methods
.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mCurrentBSSID:Ljava/lang/String;

    return-object v0
.end method

.method stopNetworkMonitoring()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method
