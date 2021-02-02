.class Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private final zzjc:Landroid/graphics/Paint;

.field private zzjd:F

.field private final zzjh:Landroid/graphics/Rect;

.field private final zzkc:Landroid/graphics/Paint;

.field private final zzkd:I

.field private final zzke:I

.field private zzkf:F

.field private zzkg:F

.field private zzkh:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkf:F

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    sget v0, Lcom/google/android/gms/cast/framework/R$dimen;->cast_libraries_material_featurehighlight_inner_radius:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkd:I

    .line 9
    sget v0, Lcom/google/android/gms/cast/framework/R$integer;->cast_libraries_material_featurehighlight_pulse_base_alpha:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzke:I

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 20
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkh:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 21
    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjd:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkg:F

    mul-float v1, v1, v2

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzke:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjd:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkf:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPulseAlpha(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 39
    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkh:F

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPulseScale(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 36
    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkg:F

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 33
    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkf:F

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public final zza(Landroid/graphics/Rect;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerX:F

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->centerY:F

    .line 45
    iget p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzkd:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjh:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->zzjd:F

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->invalidateSelf()V

    return-void
.end method

.method public final zzav()Landroid/animation/Animator;
    .locals 7

    const/4 v0, 0x1

    .line 49
    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v4, "scale"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 50
    new-array v4, v0, [I

    aput v3, v4, v3

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 51
    new-array v5, v0, [F

    aput v2, v5, v3

    const-string v6, "pulseScale"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 52
    new-array v6, v0, [F

    aput v2, v6, v3

    const-string v2, "pulseAlpha"

    invoke-static {v2, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v6, 0x4

    .line 53
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v3

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    .line 54
    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzes;->zzdx()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
