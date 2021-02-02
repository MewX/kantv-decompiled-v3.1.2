.class public Lcom/kantv/lib/recyclerview/LoadingMoreFooter;
.super Landroid/widget/LinearLayout;
.source "LoadingMoreFooter.java"


# static fields
.field public static final STATE_COMPLETE:I = 0x1

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_NOMORE:I = 0x2


# instance fields
.field private mFoot:Landroid/widget/LinearLayout;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 3

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/kantv/lib/R$layout;->yun_refresh_footer:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget p1, Lcom/kantv/lib/R$id;->msg:I

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    .line 41
    sget p1, Lcom/kantv/lib/R$id;->footer_bj:I

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mFoot:Landroid/widget/LinearLayout;

    .line 42
    sget p1, Lcom/kantv/lib/R$id;->shangla:I

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    .line 44
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/kantv/lib/R$drawable;->loading:I

    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 46
    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :goto_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public reSet()V
    .locals 1

    const/16 v0, 0x8

    .line 85
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setVisibility(I)V

    return-void
.end method

.method public setState(I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "1111"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "3333"

    .line 76
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/kantv/lib/R$string;->nomore_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/kantv/lib/R$string;->listview_loading:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "22222"

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 70
    invoke-virtual {p0, p1}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/kantv/lib/R$string;->listview_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {v1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, v0}, Lcom/kantv/lib/recyclerview/LoadingMoreFooter;->setVisibility(I)V

    :goto_0
    return-void
.end method
