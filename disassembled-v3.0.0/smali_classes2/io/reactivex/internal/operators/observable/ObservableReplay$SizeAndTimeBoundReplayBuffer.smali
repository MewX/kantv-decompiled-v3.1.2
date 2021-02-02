.class final Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
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
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAge:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 886
    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;-><init>()V

    .line 887
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 888
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 889
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 890
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 895
    new-instance v0, Lio/reactivex/schedulers/Timed;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 900
    check-cast p1, Lio/reactivex/schedulers/Timed;

    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method truncate()V
    .locals 9

    .line 905
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 907
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 908
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    const/4 v4, 0x0

    :goto_0
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    if-eqz v2, :cond_1

    .line 913
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 915
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 917
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    goto :goto_0

    .line 919
    :cond_0
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 920
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 922
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 924
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 934
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    :cond_2
    return-void
.end method

.method truncateFinal()V
    .locals 10

    .line 939
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 941
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 942
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 946
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 947
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 948
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 950
    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 952
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 961
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    :cond_1
    return-void
.end method
