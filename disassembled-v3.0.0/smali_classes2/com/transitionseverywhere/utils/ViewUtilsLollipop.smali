.class Lcom/transitionseverywhere/utils/ViewUtilsLollipop;
.super Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsKitKat;
.source "ViewUtilsLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CLASS_GhostView:Ljava/lang/Class;

.field private static final METHOD_addGhost:Ljava/lang/reflect/Method;

.field private static final METHOD_removeGhost:Ljava/lang/reflect/Method;

.field private static final METHOD_setAnimationMatrix:Ljava/lang/reflect/Method;

.field private static final METHOD_transformMatrixToGlobal:Ljava/lang/reflect/Method;

.field private static final METHOD_transformMatrixToLocal:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.view.GhostView"

    .line 17
    invoke-static {v0}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->CLASS_GhostView:Ljava/lang/Class;

    .line 18
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->CLASS_GhostView:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Landroid/graphics/Matrix;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "addGhost"

    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_addGhost:Ljava/lang/reflect/Method;

    .line 20
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->CLASS_GhostView:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v1, v3

    const-string v2, "removeGhost"

    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_removeGhost:Ljava/lang/reflect/Method;

    .line 22
    const-class v0, Landroid/view/View;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Matrix;

    aput-object v2, v1, v3

    const-string v2, "transformMatrixToGlobal"

    .line 23
    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_transformMatrixToGlobal:Ljava/lang/reflect/Method;

    .line 24
    const-class v0, Landroid/view/View;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Matrix;

    aput-object v2, v1, v3

    const-string v2, "transformMatrixToLocal"

    .line 25
    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_transformMatrixToLocal:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/view/View;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/Matrix;

    aput-object v2, v1, v3

    const-string v2, "setAnimationMatrix"

    .line 27
    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_setAnimationMatrix:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/ViewUtils$ViewUtilsKitKat;-><init>()V

    return-void
.end method


# virtual methods
.method public addGhostView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/View;
    .locals 6

    .line 46
    sget-object v2, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_addGhost:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    return p1
.end method

.method public removeGhostView(Landroid/view/View;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_removeGhost:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_setAnimationMatrix:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_transformMatrixToGlobal:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtilsLollipop;->METHOD_transformMatrixToLocal:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
