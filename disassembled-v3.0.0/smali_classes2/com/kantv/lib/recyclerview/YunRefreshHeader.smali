.class public Lcom/kantv/lib/recyclerview/YunRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "YunRefreshHeader.java"

# interfaces
.implements Lcom/kantv/lib/recyclerview/BaseRefreshHeader;


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mMeasuredHeight:I

.field private mState:I

.field private msg:Landroid/widget/TextView;

.field private todayUpdateNum:I

.field private updateType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    .line 28
    iput p2, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    const-string p2, ""

    .line 29
    iput-object p2, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->updateType:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->initView()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/kantv/lib/R$layout;->kaws_refresh_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget v0, Lcom/kantv/lib/R$id;->msg:I

    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    const/4 v0, -0x2

    .line 49
    invoke-virtual {p0, v0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->measure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mMeasuredHeight:I

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setGravity(I)V

    .line 52
    sget v1, Lcom/kantv/lib/R$id;->container:I

    invoke-virtual {p0, v1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContainer:Landroid/widget/FrameLayout;

    .line 53
    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 3

    const/4 v0, 0x2

    .line 176
    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 178
    new-instance v0, Lcom/kantv/lib/recyclerview/YunRefreshHeader$2;

    invoke-direct {v0, p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader$2;-><init>(Lcom/kantv/lib/recyclerview/YunRefreshHeader;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    return v0
.end method

.method public getVisiableHeight()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public onMove(F)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    float-to-int p1, p1

    .line 61
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setVisiableHeight(I)V

    .line 62
    iget p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result p1

    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mMeasuredHeight:I

    if-le p1, v1, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshComplate()V
    .locals 4

    const/4 v0, 0x3

    .line 161
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kantv/lib/recyclerview/YunRefreshHeader$1;

    invoke-direct {v1, p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader$1;-><init>(Lcom/kantv/lib/recyclerview/YunRefreshHeader;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public releaseAction()Z
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mMeasuredHeight:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    if-ge v0, v3, :cond_0

    .line 142
    invoke-virtual {p0, v3}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mMeasuredHeight:I

    .line 151
    :cond_1
    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    if-ne v1, v3, :cond_2

    .line 152
    iget v2, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mMeasuredHeight:I

    .line 154
    :cond_2
    invoke-direct {p0, v2}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->smoothScrollTo(I)V

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->smoothScrollTo(I)V

    .line 171
    iget v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->setState(I)V

    return-void
.end method

.method public setState(I)V
    .locals 7

    .line 74
    iget v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 127
    :cond_1
    iget v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_2
    if-eq v0, v4, :cond_4

    .line 88
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->updateType:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "liveshow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "documentary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "anime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :sswitch_5
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "tvdrama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_tv:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_liveshow:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_documentary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_child:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_show:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_anime:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_movie:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 93
    :pswitch_7
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_tvdrama:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :pswitch_8
    iget-object v0, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/kantv/lib/R$string;->today_update_news:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_4
    :goto_2
    iput p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mState:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x389ad2db -> :sswitch_8
        0x30f4df -> :sswitch_7
        0x338ad3 -> :sswitch_6
        0x35dafd -> :sswitch_5
        0x58a8074 -> :sswitch_4
        0x5a3f51c -> :sswitch_3
        0x6343f30 -> :sswitch_2
        0x1e334f6d -> :sswitch_1
        0x548e35e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTodayUpdate(ILjava/lang/String;)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->todayUpdateNum:I

    .line 207
    iput-object p2, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->updateType:Ljava/lang/String;

    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 191
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 193
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/YunRefreshHeader;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
