.class Lcom/kantv/ui/fragment/VideoClassFragment$3$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "VideoClassFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/HotClassBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/HotClassBean;I)V
    .locals 2

    const v0, 0x7f090192

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    const-string p2, "\u5168\u90e8"

    .line 264
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 265
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0800e7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 267
    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p3, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0600a5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object p2, p2, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/fragment/VideoClassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0800f7

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance p2, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$1;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$1;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3$1;)V

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void

    .line 296
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 297
    new-instance p3, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;-><init>(Lcom/kantv/ui/fragment/VideoClassFragment$3$1;Lcom/kantv/ui/bean/HotClassBean;)V

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 260
    check-cast p2, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/HotClassBean;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
