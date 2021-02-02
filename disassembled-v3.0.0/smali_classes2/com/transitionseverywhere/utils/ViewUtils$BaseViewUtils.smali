.class Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewUtils"
.end annotation


# static fields
.field private static final FIELD_LAYOUT_PARAMS:Ljava/lang/reflect/Field;

.field private static final FIELD_VIEW_FLAGS:Ljava/lang/reflect/Field;

.field private static final METHOD_SET_FRAME:Ljava/lang/reflect/Method;

.field private static final VIEW_VISIBILITY_MASK:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    const-class v0, Landroid/view/View;

    const-string v1, "mViewFlags"

    .line 22
    invoke-static {v0, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->FIELD_VIEW_FLAGS:Ljava/lang/reflect/Field;

    .line 24
    const-class v0, Landroid/view/View;

    const-string v1, "mLayoutParams"

    .line 25
    invoke-static {v0, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->FIELD_LAYOUT_PARAMS:Ljava/lang/reflect/Field;

    .line 29
    const-class v0, Landroid/view/View;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "setFrame"

    .line 30
    invoke-static {v0, v2, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->METHOD_SET_FRAME:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGhostView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 55
    sget v0, Lcom/transitionseverywhere/R$id;->transitionName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getWindowId(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLaidOut(Landroid/view/View;Z)Z
    .locals 0

    return p2
.end method

.method public isRtl(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeGhostView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public setLayoutParamsSilently(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->FIELD_LAYOUT_PARAMS:Ljava/lang/reflect/Field;

    invoke-static {p1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 7

    .line 109
    sget-object v2, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->METHOD_SET_FRAME:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/transitionseverywhere/utils/ReflectionUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 51
    sget v0, Lcom/transitionseverywhere/R$id;->transitionName:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->FIELD_VIEW_FLAGS:Ljava/lang/reflect/Field;

    invoke-static {p1, v0, v1}, Lcom/transitionseverywhere/utils/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p2, v0

    .line 105
    sget-object v0, Lcom/transitionseverywhere/utils/ViewUtils$BaseViewUtils;->FIELD_VIEW_FLAGS:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/transitionseverywhere/utils/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method
