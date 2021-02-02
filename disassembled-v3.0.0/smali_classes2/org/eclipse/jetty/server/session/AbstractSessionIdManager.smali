.class public abstract Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/eclipse/jetty/server/SessionIdManager;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.eclipse.jetty.server.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _reseed:J

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const-wide/32 v0, 0x186a0

    .line 40
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    const-wide/32 v0, 0x186a0

    .line 40
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->initRandom()V

    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getReseed()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    return-wide v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 5

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 206
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Could not generate SecureRandom for session-id randomness"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v1, v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    :goto_0
    return-void
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 8

    .line 119
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 124
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 129
    monitor-exit p0

    return-object p2

    :cond_0
    const-string p2, "org.eclipse.jetty.server.newSessionId"

    .line 133
    invoke-interface {p1, p2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 135
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "org.eclipse.jetty.server.newSessionId"

    .line 176
    invoke-interface {p1, p3, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    monitor-exit p0

    return-object p2

    .line 142
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    const/16 p3, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    int-to-long v2, p2

    xor-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v2, p2

    shl-long/2addr v2, p3

    xor-long/2addr v0, v2

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gez p2, :cond_6

    neg-long v0, v0

    .line 149
    :cond_6
    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    cmp-long p2, v4, v2

    if-lez p2, :cond_8

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    rem-long v4, v0, v4

    const-wide/16 v6, 0x1

    cmp-long p2, v4, v6

    if-nez p2, :cond_8

    .line 151
    sget-object p2, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Reseeding {}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-interface {p2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    instance-of p2, p2, Ljava/security/SecureRandom;

    if-eqz p2, :cond_7

    .line 154
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    check-cast p2, Ljava/security/SecureRandom;

    const/16 v4, 0x8

    .line 155
    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_3

    .line 159
    :cond_7
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    int-to-long v6, v6

    xor-long/2addr v4, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 163
    :cond_8
    :goto_3
    iget-boolean p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v4, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    xor-long/2addr v4, v6

    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    int-to-long v6, p2

    xor-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v6, p2

    shl-long p2, v6, p3

    xor-long/2addr p2, v4

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    :goto_4
    cmp-long v4, p2, v2

    if-gez v4, :cond_a

    neg-long p2, p2

    .line 168
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 172
    iget-object p3, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 178
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public declared-synchronized setRandom(Ljava/util/Random;)V
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReseed(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "."

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name cannot contain \'.\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
