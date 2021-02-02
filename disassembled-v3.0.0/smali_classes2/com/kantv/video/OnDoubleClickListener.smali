.class public Lcom/kantv/video/OnDoubleClickListener;
.super Ljava/lang/Object;
.source "OnDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private count:I

.field private firClick:J

.field private final interval:I

.field private mCallback:Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;

.field private secClick:J


# direct methods
.method public constructor <init>(Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/video/OnDoubleClickListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->firClick:J

    .line 13
    iput-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->secClick:J

    const/16 v0, 0x1f4

    .line 17
    iput v0, p0, Lcom/kantv/video/OnDoubleClickListener;->interval:I

    .line 27
    iput-object p1, p0, Lcom/kantv/video/OnDoubleClickListener;->mCallback:Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    .line 33
    iget p1, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    .line 34
    iget p1, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    if-ne p2, p1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->firClick:J

    .line 36
    iget-object p1, p0, Lcom/kantv/video/OnDoubleClickListener;->mCallback:Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;

    invoke-interface {p1}, Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;->onSingleClick()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_3

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->secClick:J

    .line 39
    iget-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->secClick:J

    iget-wide v2, p0, Lcom/kantv/video/OnDoubleClickListener;->firClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/kantv/video/OnDoubleClickListener;->mCallback:Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;

    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;->onDoubleClick()V

    :cond_1
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    .line 44
    iput-wide v6, p0, Lcom/kantv/video/OnDoubleClickListener;->firClick:J

    goto :goto_0

    .line 46
    :cond_2
    iput-wide v0, p0, Lcom/kantv/video/OnDoubleClickListener;->firClick:J

    .line 47
    iput p2, p0, Lcom/kantv/video/OnDoubleClickListener;->count:I

    .line 49
    :goto_0
    iput-wide v6, p0, Lcom/kantv/video/OnDoubleClickListener;->secClick:J

    :cond_3
    :goto_1
    return p2
.end method
