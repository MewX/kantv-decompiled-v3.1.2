.class Lcom/kantv/ui/activity/FilterActivity$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity;->initView()V
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
.field final synthetic this$0:Lcom/kantv/ui/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$2;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 5

    .line 227
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090171

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 228
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f09016d

    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const/4 p3, 0x1

    .line 229
    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 230
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr4()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09016e

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 232
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x7f0901b3

    const v3, 0x7f0901b4

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 p3, 0x2

    .line 234
    invoke-virtual {v0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p3, :cond_1

    const-string p3, ".0"

    .line 237
    invoke-virtual {p1, v3, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 238
    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_1
    :goto_0
    const p3, 0x7f0901d0

    .line 240
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f09016f

    .line 241
    new-instance v0, Lcom/kantv/ui/activity/FilterActivity$2$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/FilterActivity$2$1;-><init>(Lcom/kantv/ui/activity/FilterActivity$2;Lcom/kantv/ui/bean/String8Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 224
    check-cast p2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/FilterActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V

    return-void
.end method
