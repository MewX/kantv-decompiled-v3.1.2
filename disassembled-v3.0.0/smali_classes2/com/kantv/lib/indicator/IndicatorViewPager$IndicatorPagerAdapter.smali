.class public interface abstract Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndicatorPagerAdapter"
.end annotation


# virtual methods
.method public abstract getIndicatorAdapter()Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
.end method

.method public abstract getPagerAdapter()Landroid/support/v4/view/PagerAdapter;
.end method

.method public abstract notifyDataSetChanged()V
.end method
