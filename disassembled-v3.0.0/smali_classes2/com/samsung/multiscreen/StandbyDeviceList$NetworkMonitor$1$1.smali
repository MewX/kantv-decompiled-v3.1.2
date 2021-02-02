.class Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "StandbyDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-static {v0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$300(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$202(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 97
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$200(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$200(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 99
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$402(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$500(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$600(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$000(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/Service;

    invoke-interface {v1, v2}, Lcom/samsung/multiscreen/Search$SearchListener;->onFound(Lcom/samsung/multiscreen/Service;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$402(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 115
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {p1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$600(Lcom/samsung/multiscreen/StandbyDeviceList;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    iget-object v1, v1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->this$0:Lcom/samsung/multiscreen/StandbyDeviceList;

    invoke-static {v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->access$000(Lcom/samsung/multiscreen/StandbyDeviceList;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/multiscreen/Service;

    invoke-interface {v1, v2}, Lcom/samsung/multiscreen/Search$SearchListener;->onLost(Lcom/samsung/multiscreen/Service;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1$1;->this$2:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;

    iget-object p1, p1, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor$1;->this$1:Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;->access$402(Lcom/samsung/multiscreen/StandbyDeviceList$NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
