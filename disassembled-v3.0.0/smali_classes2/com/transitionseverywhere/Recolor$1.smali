.class final Lcom/transitionseverywhere/Recolor$1;
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
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/IntProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 55
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Recolor$1;->get(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Recolor$1;->get(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/widget/TextView;I)V
    .locals 0

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 55
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/Recolor$1;->setValue(Landroid/widget/TextView;I)V

    return-void
.end method
