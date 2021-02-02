.class Lcom/samsung/multiscreen/MSFDSearchProvider$1;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MSFDSearchProvider;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/multiscreen/MSFDSearchProvider$1;Ljava/lang/String;J)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->updateAlive(Ljava/lang/String;J)V

    return-void
.end method

.method private declared-synchronized reapServices()V
    .locals 7

    monitor-enter p0

    .line 226
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 227
    iget-object v2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v2}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    iget-object v4, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v4}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 230
    iget-object v4, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-virtual {v4, v3}, Lcom/samsung/multiscreen/MSFDSearchProvider;->getServiceById(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v5}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 233
    iget-object v3, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-virtual {v3, v4}, Lcom/samsung/multiscreen/MSFDSearchProvider;->removeServiceAndNotify(Lcom/samsung/multiscreen/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized updateAlive(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 240
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 242
    iget-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {p2}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "MSFDSearchProvider"

    const/16 v1, 0x400

    .line 110
    :try_start_0
    new-array v1, v1, [B

    .line 111
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 113
    :catch_0
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$000(Lcom/samsung/multiscreen/MSFDSearchProvider;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 115
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->reapServices()V

    .line 118
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 119
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 129
    invoke-static {v1}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 138
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "discover"

    const-string v4, "type"

    .line 139
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "sid"

    .line 143
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 146
    iget-object v5, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-virtual {v5, v3}, Lcom/samsung/multiscreen/MSFDSearchProvider;->getServiceById(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object v5

    const-string v6, "alive"

    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "up"

    .line 149
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_0

    const-string v1, "down"

    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-virtual {v1, v5}, Lcom/samsung/multiscreen/MSFDSearchProvider;->removeServiceAndNotify(Lcom/samsung/multiscreen/Service;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v4, "ttl"

    .line 151
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-nez v5, :cond_5

    .line 153
    iget-object v4, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    .line 154
    invoke-static {v4}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$200(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 162
    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->updateAlive(Ljava/lang/String;J)V

    const-string v4, "data"

    .line 165
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v4, "v2"

    .line 167
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v4, "uri"

    .line 169
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v4, 0x7d0

    .line 173
    new-instance v5, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;

    invoke-direct {v5, p0, v3, v6, v7}, Lcom/samsung/multiscreen/MSFDSearchProvider$1$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider$1;Ljava/lang/String;J)V

    invoke-static {v1, v4, v5}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V

    goto/16 :goto_0

    .line 193
    :cond_5
    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->updateAlive(Ljava/lang/String;J)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 131
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 213
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveHandler exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    .line 211
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 217
    :catch_4
    :cond_6
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 217
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 218
    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 222
    :cond_8
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
