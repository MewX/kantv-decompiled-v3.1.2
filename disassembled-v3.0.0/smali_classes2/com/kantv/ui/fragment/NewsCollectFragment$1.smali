.class Lcom/kantv/ui/fragment/NewsCollectFragment$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "NewsCollectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/NewsCollectFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String12Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/NewsCollectFragment;Landroid/content/Context;ILjava/util/List;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$1;->this$0:Lcom/kantv/ui/fragment/NewsCollectFragment;

    iput p5, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$1;->val$width:I

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V
    .locals 6

    const p3, 0x7f0901b1

    .line 152
    invoke-virtual {p1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 153
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    iget v2, p0, Lcom/kantv/ui/fragment/NewsCollectFragment$1;->val$width:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "1"

    const-string v1, "0"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const v4, 0x7f0901b0

    .line 159
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL3(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v4, 0x7f0901b2

    .line 160
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v4, 0x7f0901af

    .line 161
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 162
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr9()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x7f090273

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr9()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr9()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 164
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    :goto_0
    const v4, 0x7f09025c

    .line 168
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr7()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 169
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr8()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090163

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 183
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f090174

    if-eqz v4, :cond_3

    .line 184
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 188
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr12()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setChecked(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_3

    .line 190
    :cond_5
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String12Bean;->getStr12()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setChecked(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 194
    :cond_6
    :goto_3
    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/fragment/NewsCollectFragment$1$1;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment$1;Lcom/kantv/ui/bean/String12Bean;)V

    invoke-virtual {p1, v5, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 205
    new-instance v0, Lcom/kantv/ui/fragment/NewsCollectFragment$1$2;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/fragment/NewsCollectFragment$1$2;-><init>(Lcom/kantv/ui/fragment/NewsCollectFragment$1;Lcom/kantv/ui/bean/String12Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 147
    check-cast p2, Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/NewsCollectFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V

    return-void
.end method
