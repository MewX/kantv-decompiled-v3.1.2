.class final Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x113e76ff643634bbL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1

    .line 950
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    .line 951
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    const-string p1, "maxAge"

    .line 952
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    const-string p1, "unit is null"

    .line 953
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    .line 954
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Scheduler;

    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 955
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 956
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 957
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1010
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1011
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1013
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1014
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1015
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1017
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 3

    .line 1022
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 1023
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1024
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1026
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1027
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1028
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->set(Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1031
    iput-boolean v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1041
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v3, :cond_3

    .line 1049
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object v1

    .line 1053
    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 1054
    :cond_2
    :goto_1
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    return-object v0

    :cond_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1064
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1067
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 1068
    aput-object v2, p1, v3

    goto :goto_1

    .line 1071
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 1072
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1077
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1078
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 1083
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1093
    invoke-virtual/range {p1 .. p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1098
    :cond_0
    iget-object v2, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 1100
    iget-object v3, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 1102
    iget-object v3, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 1103
    iget-boolean v5, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    if-nez v5, :cond_2

    .line 1105
    iget-object v5, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v6, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v7, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v5, v7

    .line 1106
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_0
    if-eqz v7, :cond_2

    .line 1108
    iget-wide v8, v7, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v10, v8, v5

    if-lez v10, :cond_1

    goto :goto_1

    .line 1113
    :cond_1
    invoke-virtual {v7}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    move-object/from16 v16, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 1120
    :cond_3
    iget-object v6, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 1124
    :goto_2
    iget-boolean v12, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    .line 1125
    iput-object v13, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    return-void

    .line 1129
    :cond_4
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v12, :cond_5

    goto :goto_4

    .line 1135
    :cond_5
    iget-object v14, v12, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1137
    iget-boolean v15, v0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v15, :cond_7

    .line 1138
    invoke-virtual {v12}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 1140
    invoke-static {v14}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1141
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_3

    .line 1143
    :cond_6
    invoke-static {v14}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 1145
    :goto_3
    iput-object v13, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 1146
    iput-boolean v4, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    return-void

    :cond_7
    cmp-long v13, v6, v8

    if-nez v13, :cond_9

    .line 1152
    iget-object v6, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v6, v10

    cmp-long v13, v6, v8

    if-nez v13, :cond_9

    :goto_4
    cmp-long v6, v10, v8

    if-eqz v6, :cond_8

    .line 1166
    iget-object v6, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v12, v6, v8

    if-eqz v12, :cond_8

    .line 1167
    iget-object v6, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1171
    :cond_8
    iput-object v3, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    neg-int v5, v5

    .line 1173
    invoke-virtual {v1, v5}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_3

    return-void

    .line 1158
    :cond_9
    invoke-interface {v2, v14}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    sub-long/2addr v6, v13

    sub-long/2addr v10, v13

    move-object v3, v12

    goto :goto_2
.end method

.method public size()I
    .locals 3

    .line 1183
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1185
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v2, :cond_1

    .line 1187
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;->value:Ljava/lang/Object;

    .line 1188
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method trim()V
    .locals 7

    .line 961
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 962
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->size:I

    .line 963
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 964
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 966
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 968
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 971
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    if-nez v3, :cond_1

    .line 973
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 977
    :cond_1
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 978
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method trimFinal()V
    .locals 7

    .line 988
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 990
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 993
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;

    .line 994
    invoke-virtual {v3}, Lio/reactivex/processors/ReplayProcessor$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 995
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    goto :goto_1

    .line 999
    :cond_0
    iget-wide v4, v3, Lio/reactivex/processors/ReplayProcessor$TimedNode;->time:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 1000
    iput-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$TimedNode;

    :goto_1
    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method
