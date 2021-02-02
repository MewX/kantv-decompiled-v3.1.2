.class Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;
.super Ljava/lang/Object;
.source "StandbyDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->registerNetworkChangeCallback(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/content/Context;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iput-object p2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    new-instance v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;-><init>(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;)V

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$102(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 125
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$300(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-static {v2}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$100(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
