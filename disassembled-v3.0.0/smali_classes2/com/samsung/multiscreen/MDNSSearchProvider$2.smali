.class final Lcom/samsung/multiscreen/MDNSSearchProvider$2;
.super Ljava/lang/Object;
.source "MDNSSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/multiscreen/Result;Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p3, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/samsung/multiscreen/ProviderThread;

    .line 168
    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$context:Landroid/content/Context;

    const-string v2, "MDNSSearchProvider"

    invoke-static {v1, v2}, Lcom/samsung/multiscreen/util/NetUtil;->acquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    const/4 v3, 0x0

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/multiscreen/util/NetUtil;->getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v4

    .line 174
    invoke-static {v4}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    goto :goto_0

    :catch_0
    move-exception v4

    .line 176
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    new-instance v5, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;

    invoke-direct {v5, p0, v4}, Lcom/samsung/multiscreen/MDNSSearchProvider$2$1;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider$2;Ljava/io/IOException;)V

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_3

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_samsungmsf._tcp.local."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 187
    iget-object v13, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$2;->val$id:Ljava/lang/String;

    const/4 v6, 0x2

    .line 191
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/multiscreen/ProviderThread;->isTerminate()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v3, :cond_0

    add-int/lit8 v14, v6, -0x1

    if-ltz v6, :cond_0

    .line 192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v9, 0x0

    const-wide/16 v10, 0x1388

    move-object v6, v4

    move-object v7, v12

    move-object v8, v13

    .line 193
    invoke-virtual/range {v6 .. v11}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    move v6, v14

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/multiscreen/ProviderThread;->isTerminate()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v3, :cond_1

    .line 198
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider$2$2;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MDNSSearchProvider$2$2;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider$2;)V

    move-object v5, v0

    goto :goto_2

    .line 205
    :cond_1
    invoke-static {v3}, Lcom/samsung/multiscreen/Service;->create(Ljavax/jmdns/ServiceInfo;)Lcom/samsung/multiscreen/Service;

    move-result-object v0

    .line 206
    new-instance v3, Lcom/samsung/multiscreen/MDNSSearchProvider$2$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/multiscreen/MDNSSearchProvider$2$3;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider$2;Lcom/samsung/multiscreen/Service;)V

    move-object v5, v3

    .line 216
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getById error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    :goto_3
    invoke-static {v1}, Lcom/samsung/multiscreen/util/NetUtil;->releaseMulticastLock(Landroid/net/wifi/WifiManager$MulticastLock;)V

    if-eqz v5, :cond_4

    .line 225
    invoke-static {v5}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
