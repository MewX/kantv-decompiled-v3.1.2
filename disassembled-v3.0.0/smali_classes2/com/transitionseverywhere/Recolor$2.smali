.class final Lcom/transitionseverywhere/Recolor$2;
.super Lcom/transitionseverywhere/utils/IntProperty;
.source "Recolor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Recolor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transitionseverywhere/utils/IntProperty<",
        "Landroid/graphics/drawable/ColorDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/IntProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/ColorDrawable;)Ljava/lang/Integer;
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 68
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Recolor$2;->get(Landroid/graphics/drawable/ColorDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Recolor$2;->get(Landroid/graphics/drawable/ColorDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/ColorDrawable;I)V
    .locals 0

    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 68
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/Recolor$2;->setValue(Landroid/graphics/drawable/ColorDrawable;I)V

    return-void
.end method
