.class public Lcom/kantv/ui/adapter/HistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final EMPTY_VIEW:I

.field private final PROGRESS_VIEW:I

.field private clickListener:Lcom/kantv/ui/adapter/CallbackInterface;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteListener:Lcom/kantv/ui/adapter/CallbackInterface;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kantv/ui/adapter/CallbackInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String15Bean;",
            ">;",
            "Lcom/kantv/ui/adapter/CallbackInterface;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->EMPTY_VIEW:I

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->PROGRESS_VIEW:I

    .line 32
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->clickListener:Lcom/kantv/ui/adapter/CallbackInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/adapter/HistoryAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/adapter/HistoryAdapter;)Lcom/kantv/ui/adapter/CallbackInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->clickListener:Lcom/kantv/ui/adapter/CallbackInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/adapter/HistoryAdapter;)Lcom/kantv/ui/adapter/CallbackInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->mDeleteListener:Lcom/kantv/ui/adapter/CallbackInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 47
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 65
    instance-of v0, p1, Lcom/kantv/ui/adapter/TitleVH;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/kantv/ui/adapter/TitleVH;

    iget-object p1, p1, Lcom/kantv/ui/adapter/TitleVH;->mText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/kantv/ui/adapter/HistoryVH;

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr6()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/kantv/ui/adapter/HistoryVH;

    iget-object v2, v1, Lcom/kantv/ui/adapter/HistoryVH;->mMovie:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/kantv/ui/utils/GlideUtils;->loadimage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String15Bean;->getStr9()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String15Bean;->getStr2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v2, v1, Lcom/kantv/ui/adapter/HistoryVH;->mTag:Landroid/widget/TextView;

    const-string v3, "part"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v1, Lcom/kantv/ui/adapter/HistoryVH;->mActor:Landroid/widget/TextView;

    const-string v3, "time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr11()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr12()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    :goto_1
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mCheck:Landroid/widget/CheckBox;

    new-instance v2, Lcom/kantv/ui/adapter/HistoryAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/kantv/ui/adapter/HistoryAdapter$1;-><init>(Lcom/kantv/ui/adapter/HistoryAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v0, v1, Lcom/kantv/ui/adapter/HistoryVH;->mQj:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kantv/ui/adapter/HistoryAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/kantv/ui/adapter/HistoryAdapter$2;-><init>(Lcom/kantv/ui/adapter/HistoryAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, v1, Lcom/kantv/ui/adapter/HistoryVH;->mDelete:Landroid/widget/TextView;

    new-instance v0, Lcom/kantv/ui/adapter/HistoryAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/kantv/ui/adapter/HistoryAdapter$3;-><init>(Lcom/kantv/ui/adapter/HistoryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0072

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/kantv/ui/adapter/TitleVH;

    invoke-direct {p2, p1}, Lcom/kantv/ui/adapter/TitleVH;-><init>(Landroid/view/View;)V

    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007f

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/kantv/ui/adapter/HistoryVH;

    invoke-direct {p2, p1}, Lcom/kantv/ui/adapter/HistoryVH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setDeleteListener(Lcom/kantv/ui/adapter/CallbackInterface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/adapter/HistoryAdapter;->mDeleteListener:Lcom/kantv/ui/adapter/CallbackInterface;

    return-void
.end method
