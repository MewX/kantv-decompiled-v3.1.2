.class public Lcom/avos/avoscloud/AVObjectReferenceCount;
.super Ljava/lang/Object;
.source "AVObjectReferenceCount.java"


# instance fields
.field count:Ljava/util/concurrent/atomic/AtomicInteger;

.field value:Lcom/avos/avoscloud/AVObject;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->value:Lcom/avos/avoscloud/AVObject;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public desc()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/avos/avoscloud/AVObject;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->value:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public increment()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/avos/avoscloud/AVObjectReferenceCount;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
