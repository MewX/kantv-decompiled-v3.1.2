.class public final Lcom/google/android/gms/internal/cast/zzam;
.super Landroid/view/View;


# instance fields
.field private zzdi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqk:I

.field private zzql:I

.field private zzqm:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzql:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getContext()Landroid/content/Context;

    move-result-object p1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    if-nez p1, :cond_0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 8
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqk:I

    return-void
.end method


# virtual methods
.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzdi:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzam;->zzdi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzam;->zzdi:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->getPlaybackPositionInMs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 27
    iget v5, p0, Lcom/google/android/gms/internal/cast/zzam;->zzql:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    long-to-double v3, v3

    int-to-double v5, v1

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/cast/zzam;->zzql:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 29
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    int-to-float v4, v0

    .line 30
    iget v5, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqk:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqm:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 32
    :cond_2
    monitor-exit p0

    return-void

    .line 21
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized zzb(Ljava/util/List;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzdi:Ljava/util/List;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqm:Landroid/graphics/Paint;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqm:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzqm:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzam;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj(I)V
    .locals 0

    monitor-enter p0

    .line 11
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzam;->zzql:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
