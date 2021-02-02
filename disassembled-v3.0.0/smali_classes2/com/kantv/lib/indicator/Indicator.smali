.class public interface abstract Lcom/kantv/lib/indicator/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;,
        Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;,
        Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;,
        Lcom/kantv/lib/indicator/Indicator$DataSetObserver;,
        Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
    }
.end annotation


# virtual methods
.method public abstract getCurrentItem()I
.end method

.method public abstract getIndicatorAdapter()Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
.end method

.method public abstract getItemView(I)Landroid/view/View;
.end method

.method public abstract getOnIndicatorItemClickListener()Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;
.end method

.method public abstract getOnItemSelectListener()Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;
.end method

.method public abstract getOnTransitionListener()Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;
.end method

.method public abstract getPreSelectItem()I
.end method

.method public abstract isItemClickable()Z
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract setAdapter(Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;)V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setCurrentItem(IZ)V
.end method

.method public abstract setItemClickable(Z)V
.end method

.method public abstract setOnIndicatorItemClickListener(Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;)V
.end method

.method public abstract setOnItemSelectListener(Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;)V
.end method

.method public abstract setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V
.end method

.method public abstract setScrollBar(Lcom/kantv/lib/indicator/slidebar/ScrollBar;)V
.end method
