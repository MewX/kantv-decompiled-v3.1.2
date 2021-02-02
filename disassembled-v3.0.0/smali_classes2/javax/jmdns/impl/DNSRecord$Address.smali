.class public abstract Ljavax/jmdns/impl/DNSRecord$Address;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Address"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field _addr:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0

    .line 269
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 270
    iput-object p6, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 0

    .line 274
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 276
    :try_start_0
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    sget-object p2, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Address() exception "

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p5
.end method

.method getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 311
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 408
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 409
    new-instance v1, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    return-object v1
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 8

    .line 396
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v7
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 3

    .line 331
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 332
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->isUnique()Z

    move-result v1

    const/16 v2, 0xe10

    invoke-virtual {p2, v0, v1, v2}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;ZI)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 334
    invoke-virtual {p0, p2}, Ljavax/jmdns/impl/DNSRecord$Address;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result p2

    if-nez p2, :cond_0

    .line 341
    sget-object p1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string p2, "handleQuery() Ignoring an identical address query"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return p3

    .line 345
    :cond_0
    sget-object p3, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string v0, "handleQuery() Conflicting query detected."

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result p3

    if-eqz p3, :cond_1

    if-lez p2, :cond_1

    .line 349
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 351
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljavax/jmdns/ServiceInfo;

    .line 352
    check-cast p3, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 353
    invoke-virtual {p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return p3
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2

    .line 368
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/HostInfo;->conflictWithRecord(Ljavax/jmdns/impl/DNSRecord$Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    const-string v1, "handleResponse() Denial detected"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 374
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 375
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 376
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSingleValued()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method same(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2

    .line 283
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method sameName(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 1

    .line 290
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2

    .line 295
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Address;

    .line 299
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 302
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 320
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 322
    aget-byte v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 418
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
