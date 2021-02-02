.class public abstract Lcom/kantv/ui/activity/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->IDLE:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 24
    iget-object p2, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    sget-object v0, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->EXPANDED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    .line 25
    sget-object p2, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->EXPANDED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/activity/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/kantv/ui/activity/AppBarStateChangeListener$State;)V

    .line 27
    :cond_0
    sget-object p1, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->EXPANDED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 29
    iget-object p2, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    sget-object v0, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->COLLAPSED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    .line 30
    sget-object p2, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->COLLAPSED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/activity/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/kantv/ui/activity/AppBarStateChangeListener$State;)V

    .line 32
    :cond_2
    sget-object p1, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->COLLAPSED:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    goto :goto_0

    .line 34
    :cond_3
    iget-object p2, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    sget-object v0, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->IDLE:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    .line 35
    sget-object p2, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->IDLE:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/activity/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/kantv/ui/activity/AppBarStateChangeListener$State;)V

    .line 37
    :cond_4
    sget-object p1, Lcom/kantv/ui/activity/AppBarStateChangeListener$State;->IDLE:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    iput-object p1, p0, Lcom/kantv/ui/activity/AppBarStateChangeListener;->mCurrentState:Lcom/kantv/ui/activity/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method

.method public abstract onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcom/kantv/ui/activity/AppBarStateChangeListener$State;)V
.end method
