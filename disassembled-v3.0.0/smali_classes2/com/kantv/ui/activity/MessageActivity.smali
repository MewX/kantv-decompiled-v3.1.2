.class public Lcom/kantv/ui/activity/MessageActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "MessageActivity.java"


# instance fields
.field titleLeftImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090375
    .end annotation
.end field

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRelateLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900be
    .end annotation
.end field

.field titleRightImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090377
    .end annotation
.end field

.field titleRightTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090395
    .end annotation
.end field

.field titleTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    return-void
.end method

.method private initTitle()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleLeftImg:Landroid/widget/ImageView;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleTV:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/MessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleTV:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleRightImg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/kantv/ui/activity/MessageActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/MessageActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/MessageActivity$1;-><init>(Lcom/kantv/ui/activity/MessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/kantv/ui/activity/MessageActivity;->initTitle()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090219,
            0x7f09021a
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    const-class p1, Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/MessageActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 75
    :pswitch_1
    const-class p1, Lcom/kantv/ui/activity/ReceiveMsgActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/MessageActivity;->gotoActivity(Ljava/lang/Class;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090219
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 41
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/MessageActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MessageActivity;->initBase()V

    .line 43
    invoke-virtual {p0}, Lcom/kantv/ui/activity/MessageActivity;->initStatusBar()V

    .line 44
    invoke-direct {p0}, Lcom/kantv/ui/activity/MessageActivity;->initView()V

    return-void
.end method
