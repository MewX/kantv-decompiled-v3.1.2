.class public abstract Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RecyclingPagerAdapter.java"


# static fields
.field public static final IGNORE_ITEM_VIEW_TYPE:I = -0x1


# instance fields
.field private final recycleBin:Lcom/kantv/lib/viewpager/RecycleBin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kantv/lib/viewpager/RecycleBin;

    invoke-direct {v0}, Lcom/kantv/lib/viewpager/RecycleBin;-><init>()V

    invoke-direct {p0, v0}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;-><init>(Lcom/kantv/lib/viewpager/RecycleBin;)V

    return-void
.end method

.method constructor <init>(Lcom/kantv/lib/viewpager/RecycleBin;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->recycleBin:Lcom/kantv/lib/viewpager/RecycleBin;

    .line 24
    invoke-virtual {p0}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->getViewTypeCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/lib/viewpager/RecycleBin;->setViewTypeCount(I)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 47
    check-cast p3, Landroid/view/View;

    .line 48
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->recycleBin:Lcom/kantv/lib/viewpager/RecycleBin;

    invoke-virtual {v0, p3, p2, p1}, Lcom/kantv/lib/viewpager/RecycleBin;->addScrapView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 35
    invoke-virtual {p0, p2}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->recycleBin:Lcom/kantv/lib/viewpager/RecycleBin;

    invoke-virtual {v1, p2, v0}, Lcom/kantv/lib/viewpager/RecycleBin;->getScrapView(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0, p2, v0, p1}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->recycleBin:Lcom/kantv/lib/viewpager/RecycleBin;

    invoke-virtual {v0}, Lcom/kantv/lib/viewpager/RecycleBin;->scrapActiveViews()V

    .line 30
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
