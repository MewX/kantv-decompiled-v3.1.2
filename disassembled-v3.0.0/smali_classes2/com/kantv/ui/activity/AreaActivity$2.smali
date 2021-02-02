.class Lcom/kantv/ui/activity/AreaActivity$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "AreaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AreaActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/StateBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AreaActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AreaActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/kantv/ui/activity/AreaActivity$2;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/StateBean;I)V
    .locals 2

    .line 133
    invoke-virtual {p2}, Lcom/kantv/ui/bean/StateBean;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f0901cb

    if-nez p3, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/kantv/ui/bean/StateBean;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 136
    :cond_0
    iget-object p3, p0, Lcom/kantv/ui/activity/AreaActivity$2;->this$0:Lcom/kantv/ui/activity/AreaActivity;

    invoke-virtual {p3}, Lcom/kantv/ui/activity/AreaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p2}, Lcom/kantv/ui/bean/StateBean;->getImg()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/kantv/ui/adapter/ViewHolder;

    :goto_0
    const p3, 0x7f0901cd

    .line 138
    invoke-virtual {p2}, Lcom/kantv/ui/bean/StateBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901ca

    .line 139
    invoke-virtual {p2}, Lcom/kantv/ui/bean/StateBean;->getArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901cc

    .line 140
    new-instance v0, Lcom/kantv/ui/activity/AreaActivity$2$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/AreaActivity$2$1;-><init>(Lcom/kantv/ui/activity/AreaActivity$2;Lcom/kantv/ui/bean/StateBean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 130
    check-cast p2, Lcom/kantv/ui/bean/StateBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/AreaActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/StateBean;I)V

    return-void
.end method
