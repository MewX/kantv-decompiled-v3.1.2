.class public Lcom/transitionseverywhere/utils/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;,
        Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLayoutTransition(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 117
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;->cancelLayoutTransition(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method public static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 109
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils;->IMPL:Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method
