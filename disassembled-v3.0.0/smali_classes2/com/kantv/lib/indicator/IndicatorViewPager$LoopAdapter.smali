.class abstract Lcom/kantv/lib/indicator/IndicatorViewPager$LoopAdapter;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LoopAdapter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getCount()I
.end method

.method abstract getRealPosition(I)I
.end method

.method abstract setLoop(Z)V
.end method
