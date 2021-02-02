.class Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;
.super Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;
.source "ViewGroupUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellyBeanMr2ViewGroupUtils"
.end annotation


# static fields
.field private static final METHOD_suppressLayout:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    const-class v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "suppressLayout"

    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;->METHOD_suppressLayout:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewGroupUtils$BaseViewGroupUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 93
    sget-object v0, Lcom/transitionseverywhere/utils/ViewGroupUtils$JellyBeanMr2ViewGroupUtils;->METHOD_suppressLayout:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
