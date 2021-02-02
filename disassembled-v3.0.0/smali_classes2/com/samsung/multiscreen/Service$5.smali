.class final Lcom/samsung/multiscreen/Service$5;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->WakeOnWirelessLan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$magicPacket:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$5;->val$magicPacket:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 416
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 417
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 418
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v2, 0x7de

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 420
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/samsung/multiscreen/Service$5;->val$magicPacket:[B

    iget-object v4, p0, Lcom/samsung/multiscreen/Service$5;->val$magicPacket:[B

    array-length v4, v4

    invoke-direct {v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string v3, "255.255.255.255"

    .line 422
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 423
    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 425
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 428
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 431
    :goto_1
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 432
    :cond_1
    throw v0
.end method
