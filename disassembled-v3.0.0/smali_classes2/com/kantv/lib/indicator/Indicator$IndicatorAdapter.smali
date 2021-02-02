.class public abstract Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/Indicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndicatorAdapter"
.end annotation


# instance fields
.field private isLoop:Z

.field private observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kantv/lib/indicator/Indicator$DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->observers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method isLoop()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->isLoop:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/lib/indicator/Indicator$DataSetObserver;

    .line 124
    invoke-interface {v1}, Lcom/kantv/lib/indicator/Indicator$DataSetObserver;->onChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registDataSetObserver(Lcom/kantv/lib/indicator/Indicator$DataSetObserver;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setIsLoop(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->isLoop:Z

    return-void
.end method

.method public unRegistDataSetObserver(Lcom/kantv/lib/indicator/Indicator$DataSetObserver;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
