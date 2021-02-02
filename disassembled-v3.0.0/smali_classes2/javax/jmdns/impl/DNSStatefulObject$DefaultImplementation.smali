.class public Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "DNSStatefulObject.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSStatefulObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImplementation"
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x2d4ed58bef601d03L


# instance fields
.field private final _announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

.field private final _canceling:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

.field private volatile _dns:Ljavax/jmdns/impl/JmDNSImpl;

.field protected volatile _state:Ljavax/jmdns/impl/constants/DNSState;

.field protected volatile _task:Ljavax/jmdns/impl/tasks/DNSTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    const-class v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    .line 123
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    .line 124
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 125
    new-instance v0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    const-string v1, "Announce"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    .line 126
    new-instance v0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    const-string v1, "Cancel"

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    return-void
.end method

.method private willCancel()Z
    .locals 1

    .line 369
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private willClose()Z
    .locals 1

    .line 373
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 3

    .line 219
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_1

    .line 220
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 222
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_0

    .line 223
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to advance state whhen not the owner. owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " perpetrator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1

    .line 146
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_1

    .line 147
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 149
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelState()Z
    .locals 2

    .line 260
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 263
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public closeState()Z
    .locals 2

    .line 281
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 284
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 290
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 134
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public isAnnounced()Z
    .locals 1

    .line 333
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .line 325
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 349
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .line 341
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 365
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 357
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .line 317
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public recoverState()Z
    .locals 1

    .line 302
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 304
    :try_start_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1

    .line 163
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_1

    .line 164
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 166
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public revertState()Z
    .locals 1

    .line 240
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 243
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->revert()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setState(Ljavax/jmdns/impl/constants/DNSState;)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0

    .line 138
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method

.method protected setState(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 0

    .line 197
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 199
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 200
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->signalEvent()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->signalEvent()V

    .line 206
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->signalEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    throw p1
.end method

.method protected setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 0

    .line 189
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, " task: "

    const-string v1, " state: "

    const-string v2, "DNS: "

    const-string v3, "NO DNS"

    .line 422
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForAnnounced(J)Z
    .locals 3

    .line 381
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v0

    const-wide/16 v1, 0xa

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->waitForEvent(J)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result p1

    if-nez p1, :cond_3

    .line 386
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_announcing:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {p1, v1, v2}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->waitForEvent(J)V

    .line 387
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result p1

    if-nez p1, :cond_3

    .line 388
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willCancel()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    sget-object p1, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for announced timed out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_2
    :goto_0
    sget-object p1, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for announced cancelled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 395
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result p1

    return p1
.end method

.method public waitForCanceled(J)Z
    .locals 2

    .line 403
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->waitForEvent(J)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 408
    iget-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_canceling:Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->waitForEvent(J)V

    .line 409
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->willClose()Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    sget-object p1, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for canceled timed out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result p1

    return p1
.end method
