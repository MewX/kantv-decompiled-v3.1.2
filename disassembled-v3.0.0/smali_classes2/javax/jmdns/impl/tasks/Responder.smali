.class public Ljavax/jmdns/impl/tasks/Responder;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "Responder.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _addr:Ljava/net/InetAddress;

.field private final _in:Ljavax/jmdns/impl/DNSIncoming;

.field private final _port:I

.field private final _unicast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Ljavax/jmdns/impl/tasks/Responder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 46
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    .line 47
    iput-object p3, p0, Ljavax/jmdns/impl/tasks/Responder;->_addr:Ljava/net/InetAddress;

    .line 48
    iput p4, p0, Ljavax/jmdns/impl/tasks/Responder;->_port:I

    .line 49
    sget p1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-eq p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 8

    .line 107
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->respondToQuery(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 116
    :try_start_0
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 117
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "run() JmDNS responding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-boolean v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-eqz v4, :cond_1

    .line 123
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 132
    invoke-virtual {v5, v2, v3}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    sget-object v5, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    sget-object v5, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 142
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "run() JmDNS responding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 145
    :cond_5
    new-instance v2, Ljavax/jmdns/impl/DNSOutgoing;

    const v3, 0x8400

    iget-boolean v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 146
    iget-boolean v3, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    if-eqz v3, :cond_7

    .line 147
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_addr:Ljava/net/InetAddress;

    iget v5, p0, Ljavax/jmdns/impl/tasks/Responder;->_port:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing;->setDestination(Ljava/net/InetSocketAddress;)V

    .line 149
    :cond_7
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    if-eqz v3, :cond_8

    .line 152
    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/tasks/Responder;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v2

    goto :goto_3

    .line 155
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v1, :cond_a

    .line 157
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0, v2, v3, v1}, Ljavax/jmdns/impl/tasks/Responder;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    .line 161
    :cond_b
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "run() exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->close()V

    :cond_c
    :goto_5
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .locals 5

    .line 84
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSQuestion;

    .line 85
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    sget-object v2, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start() question="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSQuestion;->iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->elapseSinceArrival()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 97
    :goto_1
    sget-object v1, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    sget-object v1, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "start() Responder chosen delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 100
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_6

    int-to-long v0, v0

    .line 101
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
