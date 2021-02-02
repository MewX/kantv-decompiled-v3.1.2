.class Lcom/kantv/ui/fragment/VideoDetailFragment$15;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String8Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 5

    .line 1445
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901d5

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 1452
    invoke-virtual {p1}, Lcom/kantv/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1453
    iget-object v1, p2, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1454
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1455
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v1, p2, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 1457
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1458
    :cond_1
    iget-object v1, p2, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1459
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1460
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1462
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0903c8

    .line 1464
    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$15$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment$15;Lcom/kantv/ui/bean/String8Bean;I)V

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1442
    check-cast p2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$15;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V

    return-void
.end method
