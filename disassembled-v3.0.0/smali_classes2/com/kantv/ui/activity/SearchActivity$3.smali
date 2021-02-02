.class Lcom/kantv/ui/activity/SearchActivity$3;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String4Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V
    .locals 3

    add-int/lit8 v0, p3, -0x1

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09019c

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 148
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String4Bean;->getText1()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f09019d

    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const/4 v0, 0x5

    if-ge p3, v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p3, p0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0801b4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 156
    :cond_1
    iget-object p3, p0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0801b2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 153
    :cond_2
    iget-object p3, p0, Lcom/kantv/ui/activity/SearchActivity$3;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0801b3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_3
    :goto_0
    const p3, 0x7f0901c7

    .line 163
    new-instance v0, Lcom/kantv/ui/activity/SearchActivity$3$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/SearchActivity$3$1;-><init>(Lcom/kantv/ui/activity/SearchActivity$3;Lcom/kantv/ui/bean/String4Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 144
    check-cast p2, Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/SearchActivity$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String4Bean;I)V

    return-void
.end method
