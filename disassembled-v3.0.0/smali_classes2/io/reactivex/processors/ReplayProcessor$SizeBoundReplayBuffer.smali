.class final Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field private static final serialVersionUID:J = 0x2a0555e4356f36aeL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 737
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    .line 738
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    .line 739
    new-instance p1, Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 740
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 741
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 754
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 755
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 757
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 758
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 759
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 761
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 3

    .line 766
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 767
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 768
    iget-object p1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 770
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 771
    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 772
    invoke-virtual {p1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 774
    iput-boolean v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v1, 0x0

    move-object v2, v1

    .line 784
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/processors/ReplayProcessor$Node;

    if-nez v3, :cond_3

    .line 792
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-object v1

    .line 796
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

    .line 797
    :cond_2
    :goto_1
    iget-object v0, v2, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

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

    .line 806
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 807
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 810
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 811
    aput-object v2, p1, v3

    goto :goto_1

    .line 814
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 815
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

    .line 820
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 821
    iget-object v4, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 826
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 836
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 841
    :cond_0
    iget-object v0, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 843
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 845
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    :cond_1
    const/4 v3, 0x1

    .line 850
    :cond_2
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 854
    :goto_0
    iget-boolean v10, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    .line 855
    iput-object v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    return-void

    .line 859
    :cond_3
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/processors/ReplayProcessor$Node;

    if-nez v10, :cond_4

    goto :goto_2

    .line 865
    :cond_4
    iget-object v12, v10, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    .line 867
    iget-boolean v13, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    if-eqz v13, :cond_6

    .line 868
    invoke-virtual {v10}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    .line 870
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 871
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    .line 873
    :cond_5
    invoke-static {v12}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 875
    :goto_1
    iput-object v11, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 876
    iput-boolean v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    return-void

    :cond_6
    cmp-long v11, v4, v6

    if-nez v11, :cond_8

    .line 882
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v4, v8

    cmp-long v11, v4, v6

    if-nez v11, :cond_8

    :goto_2
    cmp-long v4, v8, v6

    if-eqz v4, :cond_7

    .line 896
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 897
    iget-object v4, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 901
    :cond_7
    iput-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    neg-int v3, v3

    .line 903
    invoke-virtual {p1, v3}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 888
    :cond_8
    invoke-interface {v0, v12}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    sub-long/2addr v4, v11

    sub-long/2addr v8, v11

    move-object v1, v10

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .line 913
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 915
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    if-nez v2, :cond_1

    .line 917
    iget-object v0, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    .line 918
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
    .locals 2

    .line 745
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 746
    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 747
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 748
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/processors/ReplayProcessor$Node;

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    :cond_0
    return-void
.end method
