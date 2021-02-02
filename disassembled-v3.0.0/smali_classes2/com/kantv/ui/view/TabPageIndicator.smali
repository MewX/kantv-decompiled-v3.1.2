.class public Lcom/kantv/ui/view/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/TabPageIndicator$SavedState;,
        Lcom/kantv/ui/view/TabPageIndicator$PageListener;,
        Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private checkedTabWidths:Z

.field private currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

.field private currentPosition:I

.field private currentPositionOffset:F

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private indicatorColor:I

.field private indicatorHeight:I

.field private indicatorPaddingLeft:I

.field private indicatorPaddingRight:I

.field private isExpand:Z

.field private isExpandSameLine:Z

.field private isSameLine:Z

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private mContext:Landroid/content/Context;

.field private final pageListener:Lcom/kantv/ui/view/TabPageIndicator$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextColorSelected:I

.field private tabTextSize:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I

.field private weightTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private widths:[I

.field private wrapTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kantv/ui/view/TabPageIndicator;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/ui/view/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p3, Lcom/kantv/ui/view/TabPageIndicator$PageListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/kantv/ui/view/TabPageIndicator$PageListener;-><init>(Lcom/kantv/ui/view/TabPageIndicator;Lcom/kantv/ui/view/TabPageIndicator$1;)V

    iput-object p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->pageListener:Lcom/kantv/ui/view/TabPageIndicator$PageListener;

    const/4 p3, 0x0

    .line 57
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPositionOffset:F

    .line 63
    iput-boolean p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->checkedTabWidths:Z

    const-string v0, "#ffffff"

    .line 65
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    const v1, -0x232324

    .line 66
    iput v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    .line 67
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    const/16 v1, 0xa

    .line 75
    iput v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    const/4 v2, 0x2

    .line 76
    iput v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    .line 77
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    .line 78
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    .line 80
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerWidth:I

    .line 82
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingLeft:I

    .line 83
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingRight:I

    const/16 v3, 0x10

    .line 85
    iput v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    const v3, -0x99999a

    .line 86
    iput v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    .line 87
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColorSelected:I

    .line 89
    iput p3, p0, Lcom/kantv/ui/view/TabPageIndicator;->lastScrollX:I

    .line 118
    sget-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    iput-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 133
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setFillViewport(Z)V

    .line 135
    invoke-virtual {p0, p3}, Lcom/kantv/ui/view/TabPageIndicator;->setWillNotDraw(Z)V

    .line 137
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    .line 138
    iget-object v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    iget-object v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/kantv/ui/view/TabPageIndicator;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 145
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    .line 146
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    .line 147
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    .line 148
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    .line 149
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    .line 150
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerWidth:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerWidth:I

    .line 151
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    int-to-float v5, v5

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    .line 155
    sget-object v3, Lcom/kantv/ui/view/TabPageIndicator;->ATTRS:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 157
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    invoke-virtual {v3, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    .line 158
    iget v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    .line 160
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    sget-object v3, Lcom/kantv/ui/R$styleable;->PagerSlidingTab:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 166
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    .line 167
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    .line 168
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    .line 169
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    .line 170
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    .line 171
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    .line 172
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    .line 173
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabBackgroundResId:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabBackgroundResId:I

    .line 175
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    .line 176
    iget-boolean p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->textAllCaps:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->textAllCaps:Z

    .line 178
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    .line 181
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    .line 185
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->wrapTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->weightTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->locale:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->locale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/view/TabPageIndicator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/kantv/ui/view/TabPageIndicator;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->pager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/view/TabPageIndicator;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/view/TabPageIndicator;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/kantv/ui/view/TabPageIndicator;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/widget/LinearLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/view/TabPageIndicator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/view/TabPageIndicator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColorSelected:I

    return p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/view/TabPageIndicator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    return p0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 5

    .line 286
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 289
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    const/16 p2, 0x11

    .line 290
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 292
    new-instance p2, Lcom/kantv/ui/view/TabPageIndicator$2;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/view/TabPageIndicator$2;-><init>(Lcom/kantv/ui/view/TabPageIndicator;I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-boolean p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    if-nez p2, :cond_0

    .line 299
    iget p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->wrapTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    invoke-virtual {p2, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 302
    iget-object p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->weightTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    invoke-virtual {p2, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 304
    :goto_0
    iget-object p2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->wrapTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/view/TabPageIndicator;->weightTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {p2, v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 372
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 379
    :cond_1
    iget p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 382
    :cond_2
    iget p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 383
    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->lastScrollX:I

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/kantv/ui/view/TabPageIndicator;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    .line 309
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->widths:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 310
    :goto_0
    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-ge v1, v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 314
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 316
    check-cast v2, Landroid/widget/TextView;

    .line 317
    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-nez v1, :cond_0

    .line 318
    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColorSelected:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->textAllCaps:Z

    if-eqz v3, :cond_2

    .line 321
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    .line 322
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2

    .line 324
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kantv/ui/view/TabPageIndicator;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getDividerColor()I
    .locals 1

    .line 556
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    return v0
.end method

.method public getIndicatorPaddingLeft()I
    .locals 1

    .line 650
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingLeft:I

    return v0
.end method

.method public getIndicatorPaddingRight()I
    .locals 1

    .line 658
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingRight:I

    return v0
.end method

.method public getSameLine()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 542
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 596
    iget-boolean v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    :goto_0
    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-ge v1, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->addTextTab(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    .line 263
    iput-boolean v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->checkedTabWidths:Z

    .line 265
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/view/TabPageIndicator$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/view/TabPageIndicator$1;-><init>(Lcom/kantv/ui/view/TabPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 391
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/view/TabPageIndicator;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 396
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/view/TabPageIndicator;->getHeight()I

    move-result v1

    .line 402
    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 406
    iget-boolean v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v5, v0, Lcom/kantv/ui/view/TabPageIndicator;->widths:[I

    iget v6, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    aget v5, v5, v6

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 412
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 413
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    .line 416
    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPositionOffset:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    iget v6, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_3

    .line 417
    iget-object v6, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 419
    iget-boolean v6, v0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    if-eqz v6, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/kantv/ui/view/TabPageIndicator;->widths:[I

    iget v7, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 424
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 425
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    .line 427
    iget v4, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentPositionOffset:F

    mul-float v6, v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v4

    mul-float v8, v8, v5

    add-float v5, v6, v8

    mul-float v3, v3, v4

    sub-float/2addr v7, v4

    mul-float v7, v7, v2

    add-float v2, v3, v7

    :cond_3
    move v9, v2

    move v7, v5

    .line 430
    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    sget-object v3, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    if-ne v2, v3, :cond_4

    .line 431
    iget v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    int-to-float v3, v2

    sub-float v11, v7, v3

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    sub-int v3, v1, v3

    int-to-float v12, v3

    int-to-float v2, v2

    add-float v13, v9, v2

    int-to-float v14, v1

    iget-object v15, v0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 433
    :cond_4
    iget v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    sub-int v2, v1, v2

    int-to-float v8, v2

    int-to-float v10, v1

    iget-object v11, v0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 447
    :goto_2
    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    .line 448
    iget v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    sub-int v2, v1, v2

    int-to-float v6, v2

    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v7, v2

    int-to-float v8, v1

    iget-object v9, v0, Lcom/kantv/ui/view/TabPageIndicator;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 453
    iget-object v2, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 454
    :goto_3
    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    .line 455
    iget-object v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 456
    iget-boolean v4, v0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    if-nez v4, :cond_5

    .line 457
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v6, v4

    iget v4, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    int-to-float v7, v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v8, v3

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    sub-int v3, v1, v3

    int-to-float v9, v3

    iget-object v10, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 459
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    add-int/2addr v4, v5

    int-to-float v6, v4

    iget v4, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    int-to-float v7, v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    add-int/2addr v3, v4

    int-to-float v8, v3

    iget v3, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    sub-int v3, v1, v3

    int-to-float v9, v3

    iget-object v10, v0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 333
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 334
    iget-boolean p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    if-eqz p1, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 341
    :goto_0
    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-ge v0, v2, :cond_2

    .line 342
    iget-object v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 343
    iget-object v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->widths:[I

    aget v3, v2, v0

    if-nez v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    aput v3, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    sget-object v2, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    if-ne v0, v2, :cond_3

    sub-int v0, p1, v1

    .line 348
    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    mul-int v2, v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorPaddingRight(I)V

    .line 349
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingLeft:I

    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingRight:I

    invoke-virtual {v0, v2, p2, v3, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    sget-object v2, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_NOWEIGHT_NOEXPAND_NOSAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    if-ne v0, v2, :cond_4

    sub-int v0, p1, v1

    .line 352
    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    mul-int v2, v2, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorPaddingRight(I)V

    .line 353
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingLeft:I

    iget v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingRight:I

    invoke-virtual {v0, v2, p2, v3, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 355
    :cond_4
    iget-boolean v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->checkedTabWidths:Z

    if-nez v0, :cond_7

    if-lez v1, :cond_7

    if-lez p1, :cond_7

    if-gt v1, p1, :cond_5

    .line 358
    :goto_1
    iget p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-ge p2, p1, :cond_6

    .line 359
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->weightTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 362
    :cond_5
    :goto_2
    iget p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabCount:I

    if-ge p2, p1, :cond_6

    .line 363
    iget-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->wrapTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    .line 367
    iput-boolean p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->checkedTabWidths:Z

    :cond_7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 667
    check-cast p1, Lcom/kantv/ui/view/TabPageIndicator$SavedState;

    .line 668
    invoke-virtual {p1}, Lcom/kantv/ui/view/TabPageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 669
    iget p1, p1, Lcom/kantv/ui/view/TabPageIndicator$SavedState;->currentPosition:I

    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    .line 670
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 675
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 676
    new-instance v1, Lcom/kantv/ui/view/TabPageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/kantv/ui/view/TabPageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 677
    iget v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentPosition:I

    iput v0, v1, Lcom/kantv/ui/view/TabPageIndicator$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->textAllCaps:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 546
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    .line 547
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerColor:I

    .line 552
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 569
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->dividerPadding:I

    .line 570
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 509
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    .line 510
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorColor:I

    .line 515
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 523
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorHeight:I

    .line 524
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V
    .locals 4

    .line 199
    sget-object v0, Lcom/kantv/ui/view/TabPageIndicator$3;->$SwitchMap$com$kantv$ui$view$TabPageIndicator$IndicatorMode:[I

    invoke-virtual {p1}, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 227
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    .line 228
    invoke-virtual {p0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    goto :goto_0

    .line 221
    :pswitch_1
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 222
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    .line 223
    invoke-virtual {p0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    goto :goto_0

    .line 215
    :pswitch_2
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 216
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    .line 217
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    .line 218
    invoke-virtual {p0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    goto :goto_0

    .line 209
    :pswitch_3
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 210
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    .line 211
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpandSameLine:Z

    .line 212
    invoke-virtual {p0, v1}, Lcom/kantv/ui/view/TabPageIndicator;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    goto :goto_0

    .line 205
    :pswitch_4
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 206
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    goto :goto_0

    .line 201
    :pswitch_5
    iput-boolean v2, p0, Lcom/kantv/ui/view/TabPageIndicator;->isExpand:Z

    .line 202
    iput-boolean v3, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    .line 231
    :goto_0
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->currentIndicatorMode:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    .line 232
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIndicatorPaddingLeft(I)V
    .locals 0

    .line 654
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingLeft:I

    return-void
.end method

.method public setIndicatorPaddingRight(I)V
    .locals 0

    .line 662
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->indicatorPaddingRight:I

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSameLine(Z)V
    .locals 0

    .line 587
    iput-boolean p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->isSameLine:Z

    .line 588
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 578
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->scrollOffset:I

    .line 579
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 632
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabBackgroundResId:I

    .line 633
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 641
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabPadding:I

    .line 642
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 613
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    .line 614
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColor:I

    .line 624
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setTextColorSelected(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextColorSelected:I

    .line 619
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 604
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->tabTextSize:I

    .line 605
    invoke-direct {p0}, Lcom/kantv/ui/view/TabPageIndicator;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    .line 533
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineColor:I

    .line 538
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->underlineHeight:I

    .line 561
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 236
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator;->pager:Landroid/support/v4/view/ViewPager;

    .line 238
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator;->pageListener:Lcom/kantv/ui/view/TabPageIndicator$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/kantv/ui/view/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
