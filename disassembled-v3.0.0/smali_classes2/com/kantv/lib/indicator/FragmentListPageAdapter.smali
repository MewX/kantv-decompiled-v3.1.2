.class public abstract Lcom/kantv/lib/indicator/FragmentListPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentListPageAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 64
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mSavedState:Landroid/util/SparseArray;

    .line 65
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    .line 66
    iput-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    .line 69
    iput-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 124
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 126
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mSavedState:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 158
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getExitFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public abstract getItem(I)Landroid/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 107
    :cond_1
    invoke-virtual {p0, p2}, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mSavedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment$SavedState;

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    :cond_2
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 116
    iget-object v1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    iget-object p2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 164
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 197
    check-cast p1, Landroid/os/Bundle;

    .line 198
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 199
    iget-object p2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mSavedState:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 200
    iget-object p2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    const-string p2, "states"

    .line 201
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mSavedState:Landroid/util/SparseArray;

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 205
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "f"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 211
    iget-object v2, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 140
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 143
    iget-object p1, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 147
    invoke-virtual {p3, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 149
    :cond_1
    iput-object p3, p0, Lcom/kantv/lib/indicator/FragmentListPageAdapter;->mCurrentPrimaryItem:Landroid/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
