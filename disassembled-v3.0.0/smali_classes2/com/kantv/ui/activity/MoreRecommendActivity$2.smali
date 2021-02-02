.class Lcom/kantv/ui/activity/MoreRecommendActivity$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "MoreRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MoreRecommendActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/MovieBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MoreRecommendActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/kantv/ui/activity/MoreRecommendActivity$2;->this$0:Lcom/kantv/ui/activity/MoreRecommendActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/MovieBean;I)V
    .locals 4

    .line 156
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getPhoto()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f09016e

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL4(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 157
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f090171

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 158
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getDescript()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f09016d

    invoke-virtual {p1, v0, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 159
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getScore()Ljava/lang/String;

    move-result-object p3

    .line 160
    invoke-static {p3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const v2, 0x7f0901b3

    const v3, 0x7f0901b4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 162
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, ".0"

    .line 165
    invoke-virtual {p1, v3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 166
    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_1
    :goto_0
    const p3, 0x7f0901d0

    .line 169
    invoke-virtual {p2}, Lcom/kantv/ui/bean/MovieBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f090170

    .line 170
    new-instance v0, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/MoreRecommendActivity$2$1;-><init>(Lcom/kantv/ui/activity/MoreRecommendActivity$2;Lcom/kantv/ui/bean/MovieBean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 153
    check-cast p2, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/MoreRecommendActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/MovieBean;I)V

    return-void
.end method
