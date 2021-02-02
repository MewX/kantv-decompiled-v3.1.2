.class public Lcom/kantv/lib/indicator/FixedIndicatorView;
.super Landroid/widget/LinearLayout;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/kantv/lib/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;
    }
.end annotation


# static fields
.field public static final SPLITMETHOD_EQUALS:I = 0x0

.field public static final SPLITMETHOD_WEIGHT:I = 0x1

.field public static final SPLITMETHOD_WRAP:I = 0x2


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private cacheMatrix:Landroid/graphics/Matrix;

.field private centerView:Landroid/view/View;

.field private centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

.field private inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

.field private itemClickable:Z

.field private mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

.field private mPosition:I

.field private mPositionOffset:F

.field private mPositionOffsetPixels:I

.field private mPreSelectedTabIndex:I

.field private mSelectedTabIndex:I

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onIndicatorItemClickListener:Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

.field private onItemSelectedListener:Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

.field private onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

.field private prePositions:[I

.field private scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

.field private splitMethod:I

.field private state:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    .line 39
    iput v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    .line 116
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 174
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 176
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$1;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    .line 226
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$2;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 455
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    .line 457
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->prePositions:[I

    .line 43
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    .line 39
    iput p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    .line 116
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 174
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 176
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$1;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    .line 226
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$2;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 455
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    .line 457
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->prePositions:[I

    .line 54
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    .line 39
    iput p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    .line 116
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 174
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->views:Ljava/util/List;

    .line 176
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$1;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$1;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    .line 226
    new-instance p1, Lcom/kantv/lib/indicator/FixedIndicatorView$2;

    invoke-direct {p1, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$2;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    .line 455
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x2

    .line 457
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->prePositions:[I

    .line 49
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/lib/indicator/FixedIndicatorView;)I
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/kantv/lib/indicator/FixedIndicatorView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$1002(Lcom/kantv/lib/indicator/FixedIndicatorView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/kantv/lib/indicator/FixedIndicatorView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kantv/lib/indicator/FixedIndicatorView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/lib/indicator/FixedIndicatorView;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->views:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/lib/indicator/FixedIndicatorView;I)Landroid/view/View;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/lib/indicator/FixedIndicatorView;)Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/lib/indicator/FixedIndicatorView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/lib/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/lib/indicator/FixedIndicatorView;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/lib/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object p0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 14

    .line 343
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 347
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 353
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 354
    iget-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->stop()V

    return-void

    .line 359
    :cond_2
    sget-object v1, Lcom/kantv/lib/indicator/FixedIndicatorView$3;->$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v3}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 376
    :goto_1
    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 377
    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v5}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->getCurrentX()I

    move-result v5

    int-to-float v5, v5

    move-object v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_6

    .line 380
    invoke-direct {p0, v8}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v9

    .line 381
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v10, v5

    if-gtz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 386
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 387
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    float-to-int v10, v10

    .line 388
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    int-to-float v0, v0

    div-float/2addr v9, v0

    .line 389
    invoke-direct {p0, v8, v9, v10}, Lcom/kantv/lib/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    .line 390
    invoke-direct {p0, v8, v9, v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_4

    .line 392
    :cond_7
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    if-eqz v0, :cond_8

    .line 393
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    iget v8, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPositionOffset:F

    mul-float v5, v5, v8

    add-float/2addr v5, v0

    .line 396
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPosition:I

    iget v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    invoke-direct {p0, v0, v8, v9}, Lcom/kantv/lib/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    .line 397
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPosition:I

    iget v8, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPositionOffset:F

    invoke-direct {p0, v0, v8, v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    goto :goto_4

    .line 400
    :cond_8
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0, v4, v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    move-result v0

    .line 401
    iget v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    .line 405
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v5, v2

    .line 407
    :goto_4
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 408
    iget-object v8, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v8}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v9, v0, v8

    .line 409
    div-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v5, v3

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 413
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result v9

    .line 414
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getMeasuredHeight()I

    move-result v10

    .line 418
    iget-object v11, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v11}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->isLoop()Z

    move-result v11

    if-eqz v11, :cond_c

    int-to-float v11, v8

    add-float/2addr v11, v5

    int-to-float v12, v9

    cmpl-float v13, v11, v12

    if-lez v13, :cond_c

    .line 421
    iget-object v13, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lt v13, v8, :cond_a

    iget-object v13, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ge v13, v2, :cond_b

    .line 422
    :cond_a
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 423
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    sub-float/2addr v11, v12

    .line 427
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 429
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v9}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 431
    iget-object v9, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 434
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 437
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    int-to-float v1, v2

    .line 441
    invoke-virtual {p1, v4, v4, v11, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 442
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    sub-float/2addr v11, v0

    invoke-virtual {v1, v11, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 443
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->cacheMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 445
    :cond_c
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    invoke-virtual {p1, v7, v7, v8, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 448
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 450
    :goto_5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 344
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {p1}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method private getItemOutView(I)Landroid/view/View;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 634
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getItemViewUnCheck(I)Landroid/view/View;
    .locals 1

    .line 624
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 625
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private getTabCountInLayout()I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .line 58
    new-instance v0, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-direct {v0, p0}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;-><init>(Lcom/kantv/lib/indicator/FixedIndicatorView;)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    return-void
.end method

.method private measureScrollBar(IFZ)I
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-nez v2, :cond_0

    goto :goto_2

    .line 499
    :cond_0
    invoke-interface {v0}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_4

    .line 501
    :cond_1
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    .line 503
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v2}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 504
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 506
    :cond_2
    invoke-direct {p0, v1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 509
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_1
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 510
    iget-object p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result p2

    .line 511
    iget-object p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p3

    .line 512
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 513
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 517
    :cond_4
    iget-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method private measureTabs()V
    .locals 6

    .line 521
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    .line 522
    iget v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    .line 534
    invoke-direct {p0, v3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    .line 537
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 538
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 543
    invoke-direct {p0, v3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 546
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 525
    invoke-direct {p0, v1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 527
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 528
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 529
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private notifyPageScrolled(IFI)V
    .locals 8

    if-ltz p1, :cond_6

    .line 460
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    .line 464
    invoke-interface {v0, p1, p2, p3}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 466
    :cond_1
    iget-object p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    if-eqz p3, :cond_6

    .line 467
    iget-object p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->prePositions:[I

    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    aget v5, p3, v3

    if-eq v5, p1, :cond_2

    add-int/lit8 v6, p1, 0x1

    if-eq v5, v6, :cond_2

    .line 469
    invoke-virtual {p0, v5}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 471
    iget-object v7, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    invoke-interface {v7, v6, v5, v4}, Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_3
    iget-object p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->prePositions:[I

    aput p1, p3, v2

    add-int/lit8 v0, p1, 0x1

    .line 476
    aput v0, p3, v1

    .line 478
    iget p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-virtual {p0, p3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 480
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    iget v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-interface {v1, p3, v2, v4}, Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 483
    :cond_4
    invoke-virtual {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 485
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-interface {v1, p3, p1, v2}, Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    .line 488
    :cond_5
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 490
    iget-object p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    invoke-interface {p3, p1, v0, p2}, Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_6
    :goto_1
    return-void
.end method

.method private updateTabSelectState(I)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 162
    invoke-direct {p0, v2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 164
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    .line 336
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 337
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    .line 338
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->drawSlideBar(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 557
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_2

    .line 617
    invoke-virtual {v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 620
    :cond_1
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemViewUnCheck(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getOnIndicatorItemClickListener()Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    return v0
.end method

.method public getScrollBar()Lcom/kantv/lib/indicator/slidebar/ScrollBar;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    return-object v0
.end method

.method public getSplitMethod()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    return v0
.end method

.method protected measureChildren(II)V
    .locals 0

    .line 562
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 64
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->stop()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 588
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    if-nez p1, :cond_0

    .line 590
    iget p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 576
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPosition:I

    .line 577
    iput p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPositionOffset:F

    .line 578
    iput p3, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPositionOffsetPixels:I

    .line 579
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 580
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 568
    iget p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureScrollBar(IFZ)I

    return-void
.end method

.method public removeCenterView()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->removeView(Landroid/view/View;)V

    .line 680
    iput-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 682
    :cond_0
    iput-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public setAdapter(Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/kantv/lib/indicator/Indicator$DataSetObserver;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    .line 73
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->dataSetObserver:Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/kantv/lib/indicator/Indicator$DataSetObserver;)V

    .line 74
    invoke-virtual {p1}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;II)V
    .locals 1

    .line 642
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 643
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    .line 644
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 653
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->removeCenterView()V

    if-nez p2, :cond_0

    .line 656
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p0, p2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    .line 660
    :goto_0
    iput-object p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 661
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->centerView:Landroid/view/View;

    .line 662
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 663
    invoke-virtual {p0, p1, v0, p2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    .line 129
    :cond_2
    :goto_0
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-eq v0, p1, :cond_6

    .line 130
    iput v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    .line 131
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    .line 133
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->stop()V

    .line 136
    :cond_3
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->state:I

    if-nez v0, :cond_5

    .line 137
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    if-eqz p2, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    if-ltz p2, :cond_4

    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getTabCountInLayout()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 139
    iget p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mPreSelectedTabIndex:I

    invoke-direct {p0, p2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    .line 140
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, p2

    .line 141
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemOutView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/16 v1, 0x258

    .line 143
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 144
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->inRun:Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;

    invoke-virtual {v1, p2, v0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView$InRun;->startScroll(III)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->notifyPageScrolled(IFI)V

    goto :goto_1

    .line 149
    :cond_5
    iget-object p2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    if-nez p2, :cond_6

    .line 150
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->itemClickable:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onIndicatorItemClickListener:Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onItemSelectedListener:Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method

.method public setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V
    .locals 3

    .line 598
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->onTransitionListener:Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;

    .line 599
    iget v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    invoke-direct {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->updateTabSelectState(I)V

    .line 600
    iget-object v0, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v1}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 602
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 604
    iget v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->mSelectedTabIndex:I

    if-ne v2, v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v1, v0, v2}, Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;->onTransition(Landroid/view/View;IF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setScrollBar(Lcom/kantv/lib/indicator/slidebar/ScrollBar;)V
    .locals 6

    .line 248
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getPaddingBottom()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getPaddingTop()I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 251
    sget-object v2, Lcom/kantv/lib/indicator/FixedIndicatorView$3;->$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 263
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    .line 264
    sget-object v2, Lcom/kantv/lib/indicator/FixedIndicatorView$3;->$SwitchMap$com$kantv$lib$indicator$slidebar$ScrollBar$Gravity:[I

    iget-object v5, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->scrollBar:Lcom/kantv/lib/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getGravity()Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kantv/lib/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getHeight()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/kantv/lib/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->setPadding(IIII)V

    return-void
.end method

.method public setSplitMethod(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/kantv/lib/indicator/FixedIndicatorView;->splitMethod:I

    .line 219
    invoke-direct {p0}, Lcom/kantv/lib/indicator/FixedIndicatorView;->measureTabs()V

    return-void
.end method
