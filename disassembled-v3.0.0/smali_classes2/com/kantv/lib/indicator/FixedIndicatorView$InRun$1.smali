.class Lcom/kantv/lib/indicator/FixedIndicatorView$InRun$1;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun$1;->this$1:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    return v1
.end method
