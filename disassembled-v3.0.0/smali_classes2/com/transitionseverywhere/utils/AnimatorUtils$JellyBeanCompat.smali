.class Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;
.super Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/AnimatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellyBeanCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p1

    return p1
.end method
