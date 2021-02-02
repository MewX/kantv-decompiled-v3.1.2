.class public Ljavax/jmdns/impl/DNSRecord$Text;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field private final _text:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 6

    .line 543
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    if-eqz p5, :cond_0

    .line 544
    array-length p1, p5

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Ljavax/jmdns/impl/DNSRecord$Text;->EMPTY_TXT:[B

    :goto_0
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

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

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 4

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Text;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 622
    move-object v1, v0

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 623
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

    .line 612
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Text;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-object v7
.end method

.method getText()[B
    .locals 1

    .line 551
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSingleValued()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 4

    .line 561
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Text;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 564
    :cond_0
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 565
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    if-nez v0, :cond_1

    iget-object v0, p1, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    if-eqz v0, :cond_1

    return v1

    .line 568
    :cond_1
    iget-object v0, p1, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v0, v0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v3, v2

    if-eq v0, v3, :cond_2

    return v1

    .line 571
    :cond_2
    array-length v0, v2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 572
    iget-object v0, p1, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    aget-byte v0, v0, v2

    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    aget-byte v3, v3, v2

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 632
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " text: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v2, v1

    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3

    .line 556
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    return-void
.end method
