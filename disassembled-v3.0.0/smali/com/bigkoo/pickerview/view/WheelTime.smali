.class public Lcom/bigkoo/pickerview/view/WheelTime;
.super Ljava/lang/Object;
.source "WheelTime.java"


# static fields
.field private static final DEFAULT_END_DAY:I = 0x1f

.field private static final DEFAULT_END_MONTH:I = 0xc

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_DAY:I = 0x1

.field private static final DEFAULT_START_MONTH:I = 0x1

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field public static dateFormat:Ljava/text/DateFormat;


# instance fields
.field private currentYear:I

.field private dividerColor:I

.field private dividerType:Lcom/contrarywind/view/WheelView$DividerType;

.field private endDay:I

.field private endMonth:I

.field private endYear:I

.field private gravity:I

.field private isLunarCalendar:Z

.field private lineSpacingMultiplier:F

.field private mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

.field private startDay:I

.field private startMonth:I

.field private startYear:I

.field private textColorCenter:I

.field private textColorOut:I

.field private textSize:I

.field private type:[Z

.field private view:Landroid/view/View;

.field private wv_day:Lcom/contrarywind/view/WheelView;

.field private wv_hours:Lcom/contrarywind/view/WheelView;

.field private wv_minutes:Lcom/contrarywind/view/WheelView;

.field private wv_month:Lcom/contrarywind/view/WheelView;

.field private wv_seconds:Lcom/contrarywind/view/WheelView;

.field private wv_year:Lcom/contrarywind/view/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[ZII)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    .line 40
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    const/16 v0, 0x834

    .line 41
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    const/16 v1, 0xc

    .line 43
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 44
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    const/16 v0, 0x1f

    .line 45
    iput v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    .line 62
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    .line 64
    iput p3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    .line 65
    iput p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return p0
.end method

.method static synthetic access$100(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    return p0
.end method

.method static synthetic access$1100(Lcom/bigkoo/pickerview/view/WheelTime;IIIILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/WheelTime;->setReDay(IIIILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bigkoo/pickerview/view/WheelTime;)Lcom/contrarywind/view/WheelView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    return p0
.end method

.method static synthetic access$502(Lcom/bigkoo/pickerview/view/WheelTime;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    return p1
.end method

.method static synthetic access$600(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return p0
.end method

.method static synthetic access$700(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    return p0
.end method

.method static synthetic access$800(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    return p0
.end method

.method static synthetic access$900(Lcom/bigkoo/pickerview/view/WheelTime;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    return p0
.end method

.method private getLunarTime()Ljava/lang/String;
    .locals 7

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    .line 759
    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    :goto_0
    add-int/2addr v2, v4

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v5

    sub-int/2addr v2, v5

    if-gtz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    goto :goto_0

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result v5

    sub-int/2addr v2, v5

    if-ne v2, v4, :cond_2

    .line 765
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    const/4 v5, 0x1

    goto :goto_2

    .line 768
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    goto :goto_1

    .line 771
    :goto_2
    iget-object v6, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v6}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v6

    add-int/2addr v6, v4

    .line 772
    invoke-static {v1, v2, v6, v5}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v1

    .line 774
    aget v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v4

    .line 775
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 777
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 778
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 779
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setChangedListener(Lcom/contrarywind/view/WheelView;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Lcom/bigkoo/pickerview/view/WheelTime$5;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/WheelTime$5;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private setContentTextSize()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 595
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 596
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 597
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 598
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    .line 599
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextSize(F)V

    return-void
.end method

.method private setDividerColor()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 622
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 623
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 624
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 625
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    .line 626
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerColor(I)V

    return-void
.end method

.method private setDividerType()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 632
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 633
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 634
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 635
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 636
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    return-void
.end method

.method private setLineSpacingMultiplier()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 642
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 643
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 644
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 645
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    .line 646
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setLineSpacingMultiplier(F)V

    return-void
.end method

.method private setLunar(IIIZIII)V
    .locals 3

    .line 101
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v0, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/contrarywind/view/WheelView;

    iput-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    .line 102
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance v0, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    invoke-static {v1, v2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getYears(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 103
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    const-string v0, ""

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 104
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    sub-int v1, p1, v1

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 105
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 108
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v1, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {p7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/contrarywind/view/WheelView;

    iput-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 109
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v1, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getMonths(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p7, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 110
    iget-object p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p7, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result p7

    const/4 v1, 0x1

    if-eqz p7, :cond_1

    sub-int/2addr p7, v1

    if-gt p2, p7, :cond_0

    if-eqz p4, :cond_1

    .line 114
    :cond_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 p7, p2, 0x1

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p4, p2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 119
    :goto_0
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget p7, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 122
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget p7, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {p4, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/contrarywind/view/WheelView;

    iput-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 124
    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapMonth(I)I

    move-result p4

    if-nez p4, :cond_2

    .line 125
    iget-object p4, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p7, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1, p2}, Lcom/bigkoo/pickerview/utils/ChinaDate;->monthDays(II)I

    move-result p1

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p7, p1}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p4, p7}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 127
    :cond_2
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->leapDays(I)I

    move-result p1

    invoke-static {p1}, Lcom/bigkoo/pickerview/utils/ChinaDate;->getLunarDays(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/bigkoo/pickerview/adapter/ArrayWheelAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 129
    :goto_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 131
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 133
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 134
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 p3, 0x17

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 136
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 137
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 139
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 140
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 p3, 0x3b

    invoke-direct {p2, p4, p3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 142
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 143
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 145
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget p2, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/contrarywind/view/WheelView;

    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 146
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {p2, p4, p3}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 148
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 149
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 152
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/WheelTime$1;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/WheelTime$1;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 189
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance p2, Lcom/bigkoo/pickerview/view/WheelTime$2;

    invoke-direct {p2, p0}, Lcom/bigkoo/pickerview/view/WheelTime$2;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;)V

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 218
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 219
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 220
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 221
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 223
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    array-length p2, p1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_9

    .line 226
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    aget-boolean p1, p1, p4

    const/16 p3, 0x8

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 p5, 0x2

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_4

    :cond_5
    const/16 p2, 0x8

    :goto_4
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 p5, 0x3

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_5

    :cond_6
    const/16 p2, 0x8

    :goto_5
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 p5, 0x4

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    goto :goto_6

    :cond_7
    const/16 p2, 0x8

    :goto_6
    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 p5, 0x5

    aget-boolean p2, p2, p5

    if-eqz p2, :cond_8

    const/4 p3, 0x0

    :cond_8
    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setContentTextSize()V

    return-void

    .line 224
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "type[] length is not 6"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setReDay(IIIILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    .line 557
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const/16 p1, 0x1f

    if-le p4, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    .line 561
    :goto_0
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 563
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0x1e

    if-le p4, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, p4

    .line 567
    :goto_1
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 570
    :cond_3
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_4

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_5

    :cond_4
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_7

    :cond_5
    const/16 p1, 0x1d

    if-le p4, p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, p4

    .line 575
    :goto_2
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    :cond_7
    const/16 p1, 0x1c

    if-le p4, p1, :cond_8

    goto :goto_3

    :cond_8
    move p1, p4

    .line 581
    :goto_3
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance p4, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {p4, p3, p1}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p2, p4}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 586
    :goto_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_9

    .line 587
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Lcom/contrarywind/view/WheelView;->getAdapter()Lcom/contrarywind/adapter/WheelAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/contrarywind/adapter/WheelAdapter;->getItemsCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 588
    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p2, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    :cond_9
    return-void
.end method

.method private setSolar(IIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x7

    .line 247
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    const-string v6, "3"

    aput-object v6, v3, v5

    const/4 v6, 0x2

    const-string v7, "5"

    aput-object v7, v3, v6

    const/4 v7, 0x3

    const-string v8, "7"

    aput-object v8, v3, v7

    const/4 v8, 0x4

    const-string v9, "8"

    aput-object v9, v3, v8

    const/4 v9, 0x5

    const-string v10, "10"

    aput-object v10, v3, v9

    const/4 v10, 0x6

    const-string v11, "12"

    aput-object v11, v3, v10

    .line 248
    new-array v11, v8, [Ljava/lang/String;

    const-string v12, "4"

    aput-object v12, v11, v4

    const-string v12, "6"

    aput-object v12, v11, v5

    const-string v12, "9"

    aput-object v12, v11, v6

    const-string v12, "11"

    aput-object v12, v11, v7

    .line 250
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 251
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 253
    iput v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    .line 255
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v13, Lcom/bigkoo/pickerview/R$id;->year:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/contrarywind/view/WheelView;

    iput-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    .line 256
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v15, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    invoke-direct {v13, v14, v15}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 259
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    sub-int v13, v1, v13

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 260
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 262
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v13, Lcom/bigkoo/pickerview/R$id;->month:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/contrarywind/view/WheelView;

    iput-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 263
    iget v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    if-ne v12, v13, :cond_0

    .line 264
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    iget v15, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    invoke-direct {v13, v14, v15}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 265
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v13, v2, 0x1

    iget v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/16 v14, 0xc

    if-ne v1, v12, :cond_1

    .line 268
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v15, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    invoke-direct {v13, v15, v14}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 269
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v13, v2, 0x1

    iget v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    if-ne v1, v13, :cond_2

    .line 272
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    invoke-direct {v13, v5, v14}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 273
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v12, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v13, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v13, v5, v14}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 276
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v12, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 278
    :goto_0
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v12, v13}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 280
    iget-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v13, Lcom/bigkoo/pickerview/R$id;->day:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/contrarywind/view/WheelView;

    iput-object v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 282
    iget v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    const/16 v14, 0x1c

    const/16 v15, 0x1d

    const/16 v9, 0x1e

    const/16 v8, 0x1f

    if-ne v12, v13, :cond_c

    iget v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ne v12, v13, :cond_c

    add-int/2addr v2, v5

    .line 283
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 284
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v8, :cond_3

    .line 285
    iput v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 287
    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v8, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 288
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v9, :cond_5

    .line 290
    iput v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 292
    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v8, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 295
    :cond_6
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_7

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_8

    :cond_7
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_a

    .line 296
    :cond_8
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v15, :cond_9

    .line 297
    iput v15, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 299
    :cond_9
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v8, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_1

    .line 301
    :cond_a
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v14, :cond_b

    .line 302
    iput v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 304
    :cond_b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v8, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 307
    :goto_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 308
    :cond_c
    iget v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    if-ne v1, v12, :cond_12

    add-int/lit8 v12, v2, 0x1

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    if-ne v12, v13, :cond_12

    .line 310
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 312
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v2, v9, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 313
    :cond_d
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 315
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v2, v8, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 318
    :cond_e
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_f

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_10

    :cond_f
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_11

    .line 320
    :cond_10
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v2, v8, v15}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_2

    .line 323
    :cond_11
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    invoke-direct {v2, v8, v14}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 326
    :goto_2
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    sub-int v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 327
    :cond_12
    iget v12, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    if-ne v1, v12, :cond_1c

    add-int/lit8 v12, v2, 0x1

    iget v13, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ne v12, v13, :cond_1c

    .line 329
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 330
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v8, :cond_13

    .line 331
    iput v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 333
    :cond_13
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v5, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 334
    :cond_14
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 335
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v9, :cond_15

    .line 336
    iput v9, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 338
    :cond_15
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v5, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 341
    :cond_16
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_17

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_18

    :cond_17
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1a

    .line 342
    :cond_18
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v15, :cond_19

    .line 343
    iput v15, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 345
    :cond_19
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v5, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_3

    .line 347
    :cond_1a
    iget v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-le v1, v14, :cond_1b

    .line 348
    iput v14, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    .line 350
    :cond_1b
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    iget v8, v0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    invoke-direct {v2, v5, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 353
    :goto_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    goto :goto_5

    :cond_1c
    add-int/2addr v2, v5

    .line 356
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 358
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v5, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 359
    :cond_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 361
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v5, v9}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 364
    :cond_1e
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1f

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_20

    :cond_1f
    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_21

    .line 366
    :cond_20
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v5, v15}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    goto :goto_4

    .line 369
    :cond_21
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v5, v14}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 372
    :goto_4
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 375
    :goto_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 377
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->hour:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 378
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v8, 0x17

    invoke-direct {v2, v4, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 380
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 381
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 383
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->min:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 384
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    const/16 v8, 0x3b

    invoke-direct {v2, v4, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 386
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 387
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 389
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    sget v2, Lcom/bigkoo/pickerview/R$id;->second:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/contrarywind/view/WheelView;

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 390
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;

    invoke-direct {v2, v4, v8}, Lcom/bigkoo/pickerview/adapter/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setAdapter(Lcom/contrarywind/adapter/WheelAdapter;)V

    .line 392
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 393
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->gravity:I

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setGravity(I)V

    .line 396
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/WheelTime$3;

    invoke-direct {v2, v0, v3, v11}, Lcom/bigkoo/pickerview/view/WheelTime$3;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 475
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/view/WheelTime$4;

    invoke-direct {v2, v0, v3, v11}, Lcom/bigkoo/pickerview/view/WheelTime$4;-><init>(Lcom/bigkoo/pickerview/view/WheelTime;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setOnItemSelectedListener(Lcom/contrarywind/listener/OnItemSelectedListener;)V

    .line 523
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 524
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 525
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 526
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setChangedListener(Lcom/contrarywind/view/WheelView;)V

    .line 528
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    array-length v2, v1

    if-ne v2, v10, :cond_28

    .line 531
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    aget-boolean v1, v1, v4

    const/16 v3, 0x8

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    goto :goto_6

    :cond_22
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v2, v1}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 532
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    goto :goto_7

    :cond_23
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 533
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_8

    :cond_24
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 534
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    goto :goto_9

    :cond_25
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 535
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x4

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    goto :goto_a

    :cond_26
    const/16 v2, 0x8

    :goto_a
    invoke-virtual {v1, v2}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 536
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/WheelTime;->type:[Z

    const/4 v5, 0x5

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_27

    const/4 v3, 0x0

    :cond_27
    invoke-virtual {v1, v3}, Lcom/contrarywind/view/WheelView;->setVisibility(I)V

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setContentTextSize()V

    return-void

    .line 529
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "type[] length is not 6"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setTextColorCenter()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 613
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 614
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 615
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 616
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    .line 617
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorCenter(I)V

    return-void
.end method

.method private setTextColorOut()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 604
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 605
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 606
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 607
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    .line 608
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setTextColorOut(I)V

    return-void
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return v0
.end method

.method public getStartYear()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 6

    .line 712
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->getLunarTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    iget v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->currentYear:I

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    const-string v3, " "

    const-string v4, ":"

    const-string v5, "-"

    if-ne v1, v2, :cond_2

    .line 720
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 721
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 722
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 723
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 724
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 725
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 726
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 729
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 730
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 731
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 732
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 733
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    .line 738
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    .line 739
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    .line 740
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    .line 741
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    .line 742
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    return-object v0
.end method

.method public isCenterLabel(Z)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 916
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 917
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 918
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 919
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    .line 920
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->isCenterLabel(Z)V

    return-void
.end method

.method public isLunarMode()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    return v0
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 704
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 705
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 706
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 707
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    .line 708
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCyclic(Z)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 877
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerColor:I

    .line 878
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerColor()V

    return-void
.end method

.method public setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    .line 888
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerType()V

    return-void
.end method

.method public setEndYear(I)V
    .locals 0

    .line 800
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 650
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 655
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/R$string;->pickerview_year:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 660
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/bigkoo/pickerview/R$string;->pickerview_month:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_3

    .line 665
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 667
    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_day:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_4

    .line 670
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_3

    .line 672
    :cond_4
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_hours:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_3
    if-eqz p5, :cond_5

    .line 675
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_4

    .line 677
    :cond_5
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_minutes:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_4
    if-eqz p6, :cond_6

    .line 680
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    goto :goto_5

    .line 682
    :cond_6
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    iget-object p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/bigkoo/pickerview/R$string;->pickerview_seconds:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setLabel(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0

    .line 867
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->lineSpacingMultiplier:F

    .line 868
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setLineSpacingMultiplier()V

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    return-void
.end method

.method public setPicker(III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIIII)V

    return-void
.end method

.method public setPicker(IIIIII)V
    .locals 9

    .line 81
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarCalendar:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 82
    invoke-static {p1, p2, p3}, Lcom/bigkoo/pickerview/utils/LunarCalendar;->solarToLunar(III)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 83
    aget v2, p1, p2

    aget p3, p1, v0

    add-int/lit8 v3, p3, -0x1

    const/4 p3, 0x2

    aget v4, p1, p3

    const/4 p3, 0x3

    aget p1, p1, p3

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bigkoo/pickerview/view/WheelTime;->setLunar(IIIZIII)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/bigkoo/pickerview/view/WheelTime;->setSolar(IIIIII)V

    :goto_1
    return-void
.end method

.method public setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 807
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 808
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 809
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 810
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    if-le p1, v0, :cond_0

    .line 811
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 812
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 813
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto/16 :goto_0

    :cond_0
    if-ne p1, v0, :cond_6

    .line 815
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    if-le v1, v0, :cond_1

    .line 816
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 817
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 818
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto/16 :goto_0

    :cond_1
    if-ne v1, v0, :cond_6

    .line 820
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    if-le p2, v0, :cond_6

    .line 821
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 822
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 823
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 829
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 830
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 831
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 832
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    if-ge p2, v0, :cond_3

    .line 833
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 834
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 835
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_6

    .line 837
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    if-ge v1, v0, :cond_4

    .line 838
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 839
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 840
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_0

    :cond_4
    if-ne v1, v0, :cond_6

    .line 842
    iget v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    if-ge p1, v0, :cond_6

    .line 843
    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 844
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 845
    iput p2, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 851
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    .line 852
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endYear:I

    .line 853
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startMonth:I

    .line 854
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endMonth:I

    .line 855
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startDay:I

    .line 856
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->endDay:I

    :cond_6
    :goto_0
    return-void
.end method

.method public setSelectChangeCallback(Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->mSelectChangeCallback:Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;

    return-void
.end method

.method public setStartYear(I)V
    .locals 0

    .line 792
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->startYear:I

    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 0

    .line 897
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorCenter:I

    .line 898
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorCenter()V

    return-void
.end method

.method public setTextColorOut(I)V
    .locals 0

    .line 907
    iput p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->textColorOut:I

    .line 908
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorOut()V

    return-void
.end method

.method public setTextXOffset(IIIIII)V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_year:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 690
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_month:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p2}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 691
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_day:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p3}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 692
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_hours:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p4}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 693
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_minutes:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p5}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    .line 694
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/WheelTime;->wv_seconds:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1, p6}, Lcom/contrarywind/view/WheelView;->setTextXOffset(I)V

    return-void
.end method
