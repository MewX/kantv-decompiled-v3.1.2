.class Lcom/tencent/open/utils/i$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/utils/i$1;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Lcom/tencent/open/utils/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/tencent/open/utils/i;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    new-instance v1, Lcom/tencent/open/utils/i$a$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/open/utils/i$a$1;-><init>(Lcom/tencent/open/utils/i$a;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/tencent/open/utils/i$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
