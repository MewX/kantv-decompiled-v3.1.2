.class Lcom/kantv/ui/activity/FilterActivity$1$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/FilterBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/FilterActivity$1;

.field final synthetic val$filterBeanList:Ljava/util/List;

.field final synthetic val$positionwb:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity$1;Landroid/content/Context;ILjava/util/List;ILjava/util/List;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iput p5, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$positionwb:I

    iput-object p6, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$filterBeanList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/FilterBean;I)V
    .locals 3

    .line 156
    invoke-virtual {p2}, Lcom/kantv/ui/bean/FilterBean;->getValue()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0901c6

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 157
    invoke-virtual {p2}, Lcom/kantv/ui/bean/FilterBean;->getType()Ljava/lang/String;

    move-result-object p3

    const-string v1, "1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 158
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f06005e

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 159
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0801af

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 161
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget v0, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$positionwb:I

    if-le p3, v0, :cond_0

    .line 162
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p3

    iget v0, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->val$positionwb:I

    invoke-virtual {p2}, Lcom/kantv/ui/bean/FilterBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {p3}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/kantv/ui/bean/FilterBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p3, 0x0

    const-string v0, ""

    .line 169
    :goto_1
    iget-object v1, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object v1, v1, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/FilterActivity;->access$000(Lcom/kantv/ui/activity/FilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity;->filterTV:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {p2}, Lcom/kantv/ui/bean/FilterBean;->getType()Ljava/lang/String;

    move-result-object p3

    const-string v1, "0"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 177
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f060046

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColor(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 178
    iget-object p3, p0, Lcom/kantv/ui/activity/FilterActivity$1$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$1;

    iget-object p3, p3, Lcom/kantv/ui/activity/FilterActivity$1;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/FilterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0801ae

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setBackgroundRes(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_3
    :goto_2
    const p3, 0x7f090184

    .line 180
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/FilterActivity$1$1$1;-><init>(Lcom/kantv/ui/activity/FilterActivity$1$1;Lcom/kantv/ui/bean/FilterBean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 153
    check-cast p2, Lcom/kantv/ui/bean/FilterBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/FilterActivity$1$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/FilterBean;I)V

    return-void
.end method
