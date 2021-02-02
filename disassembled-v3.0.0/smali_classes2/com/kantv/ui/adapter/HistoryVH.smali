.class public Lcom/kantv/ui/adapter/HistoryVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HistoryVH.java"


# instance fields
.field mActor:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090187
    .end annotation
.end field

.field mCheck:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field mDelete:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090186
    .end annotation
.end field

.field mMovie:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field mQj:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field mTag:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
