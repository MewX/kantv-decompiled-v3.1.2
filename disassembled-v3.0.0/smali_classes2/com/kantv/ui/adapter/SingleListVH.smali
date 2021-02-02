.class public Lcom/kantv/ui/adapter/SingleListVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SingleListVH.java"


# instance fields
.field mBj:Landroid/widget/RelativeLayout;

.field mDesc:Landroid/widget/TextView;

.field mGenxin:Landroid/widget/TextView;

.field mHeat:Landroid/widget/TextView;

.field mHuore:Landroid/widget/ImageView;

.field mIng:Lcom/kantv/ui/view/ShapedImageView;

.field mName:Landroid/widget/TextView;

.field mNumber1:Landroid/widget/TextView;

.field mNumber2:Landroid/widget/TextView;

.field mQj:Landroid/widget/LinearLayout;

.field mUpdate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09016e

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/view/ShapedImageView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mIng:Lcom/kantv/ui/view/ShapedImageView;

    const v0, 0x7f09016f

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mBj:Landroid/widget/RelativeLayout;

    const v0, 0x7f090171

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mName:Landroid/widget/TextView;

    const v0, 0x7f09016d

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mDesc:Landroid/widget/TextView;

    const v0, 0x7f0901b3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mNumber1:Landroid/widget/TextView;

    const v0, 0x7f0901b4

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mNumber2:Landroid/widget/TextView;

    const v0, 0x7f0901d0

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/adapter/SingleListVH;->mUpdate:Landroid/widget/TextView;

    const v0, 0x7f090170

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/ui/adapter/SingleListVH;->mQj:Landroid/widget/LinearLayout;

    return-void
.end method
