.class Lcom/kantv/ui/activity/CollectActivity$1;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "CollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->initView()V
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
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$1;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V
    .locals 6

    .line 96
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr2()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090176

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setImageURL(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 97
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090179

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090178

    invoke-virtual {p1, v1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 111
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "1"

    const v5, 0x7f090174

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setVisible(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p1, v5, v3}, Lcom/kantv/ui/adapter/ViewHolder;->setChecked(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1, v5, v2}, Lcom/kantv/ui/adapter/ViewHolder;->setChecked(IZ)Lcom/kantv/ui/adapter/ViewHolder;

    :cond_3
    :goto_1
    const v0, 0x7f090172

    .line 121
    new-instance v1, Lcom/kantv/ui/activity/CollectActivity$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/kantv/ui/activity/CollectActivity$1$1;-><init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;I)V

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    .line 127
    new-instance p3, Lcom/kantv/ui/activity/CollectActivity$1$2;

    invoke-direct {p3, p0, p2}, Lcom/kantv/ui/activity/CollectActivity$1$2;-><init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;)V

    invoke-virtual {p1, v5, p3}, Lcom/kantv/ui/adapter/ViewHolder;->setOnCheckedChangeListener(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f090177

    .line 137
    new-instance v0, Lcom/kantv/ui/activity/CollectActivity$1$3;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/activity/CollectActivity$1$3;-><init>(Lcom/kantv/ui/activity/CollectActivity$1;Lcom/kantv/ui/bean/String15Bean;)V

    invoke-virtual {p1, p3, v0}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    const p3, 0x7f090173

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bfc\u6f14: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr9()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u6f14\u5458: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr10()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 93
    check-cast p2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/CollectActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String15Bean;I)V

    return-void
.end method
