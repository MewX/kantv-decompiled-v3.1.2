.class Lcom/kantv/ui/fragment/UpdateSubFragment$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "UpdateSubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/UpdateSubFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/String15Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/UpdateSubFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V
    .locals 11

    .line 121
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr2()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09019f

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 122
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0901a0

    invoke-virtual {p1, v2, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 124
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x7f090198

    const v5, 0x7f090199

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    .line 126
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 127
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    const-string v3, ".0"

    .line 129
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 130
    invoke-virtual {p1, v4, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_1
    :goto_0
    const v0, 0x7f090197

    .line 132
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr7()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u6b21\u64ad\u653e"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f090185

    invoke-virtual {p1, v3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f09019e

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr10()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 137
    iget-object v0, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$100(Lcom/kantv/ui/fragment/UpdateSubFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr6()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f090193

    invoke-virtual {p1, v4, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f09014d

    const v5, 0x7f09014a

    const/16 v9, 0x8

    const v10, 0x7f09014b

    if-nez p3, :cond_2

    .line 140
    invoke-virtual {p1, v5}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0600bd

    .line 143
    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 144
    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f06005c

    .line 145
    invoke-virtual {p1, v3, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 146
    invoke-virtual {p1, v4, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901c0

    .line 148
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x82

    invoke-static {v0, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v0

    .line 149
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xba

    invoke-static {v2, v3}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v2

    .line 148
    invoke-virtual {p1, p3, v0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setPosterWidth(III)Lcom/kantv/ui/adapter/ViewHolder;

    .line 150
    invoke-virtual {p1, v1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    iget-object p3, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    iget-object p3, p3, Lcom/kantv/ui/fragment/UpdateSubFragment;->callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

    if-eqz p3, :cond_5

    .line 153
    iget-object p3, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr7()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$302(Lcom/kantv/ui/fragment/UpdateSubFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    iget-object p3, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    iget-object p3, p3, Lcom/kantv/ui/fragment/UpdateSubFragment;->callBackUpdateUI:Lcom/kantv/ui/interfaces/CallBackUpdateUI;

    iget-object v0, p0, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->this$0:Lcom/kantv/ui/fragment/UpdateSubFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/UpdateSubFragment;->access$300(Lcom/kantv/ui/fragment/UpdateSubFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/kantv/ui/interfaces/CallBackUpdateUI;->updateUi(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    if-ne v6, p3, :cond_3

    .line 157
    invoke-virtual {p1, v5}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f080280

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    if-ne v7, p3, :cond_4

    .line 161
    invoke-virtual {p1, v5}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 163
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f080281

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {p1, v5}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p1, v10}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f060046

    .line 168
    invoke-virtual {p1, v1, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 169
    invoke-virtual {p1, v2, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f06005d

    .line 170
    invoke-virtual {p1, v3, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    .line 171
    invoke-virtual {p1, v4, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setTextColorRes(II)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f0901c0

    .line 173
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x58

    invoke-static {v0, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v0

    .line 174
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-static {v2, v3}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v2

    .line 173
    invoke-virtual {p1, p3, v0, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setPosterWidth(III)Lcom/kantv/ui/adapter/ViewHolder;

    .line 175
    invoke-virtual {p1, v1}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    :goto_1
    const p3, 0x7f0901a1

    .line 177
    new-instance v0, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/fragment/UpdateSubFragment$2$1;-><init>(Lcom/kantv/ui/fragment/UpdateSubFragment$2;Lcom/kantv/ui/bean/String15Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 118
    check-cast p2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/UpdateSubFragment$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V

    return-void
.end method
