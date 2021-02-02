.class Lcom/kantv/ui/fragment/NewsFragment$3;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsFragment;->initView()V
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
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsFragment$3;->this$0:Lcom/kantv/ui/fragment/NewsFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
    .locals 4

    if-eqz p2, :cond_2

    const p3, 0x7f0901b0

    .line 337
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL3(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901b2

    .line 338
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901af

    .line 339
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 340
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr5()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f090273

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr5()Ljava/lang/String;

    move-result-object p3

    const-string v3, "0"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr5()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 342
    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    :goto_0
    const p3, 0x7f09025c

    .line 346
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr7()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 347
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object p3

    const v2, 0x7f090163

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String8Bean;->getStr8()Ljava/lang/String;

    move-result-object p3

    const-string v3, "1"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 348
    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_2
    :goto_1
    const p3, 0x7f0901b1

    .line 353
    new-instance v0, Lcom/kantv/ui/fragment/NewsFragment$3$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/fragment/NewsFragment$3$1;-><init>(Lcom/kantv/ui/fragment/NewsFragment$3;Lcom/kantv/ui/bean/String8Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 333
    check-cast p2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/NewsFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V

    return-void
.end method
