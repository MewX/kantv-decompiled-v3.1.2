.class public Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;
.super Ljava/lang/Object;
.source "SwipeLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$LazyHolder;
    }
.end annotation


# instance fields
.field private openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;
    .locals 1

    .line 19
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$LazyHolder;->access$100()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeOpenInstance()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->closeDeleteMenu()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    :cond_0
    return-void
.end method

.method public isCouldSwipe(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z
    .locals 1

    .line 36
    invoke-virtual {p0, p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->isOpenInstance(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpenInstance(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOpenInstance(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->openInstance:Lcom/kantv/ui/view/swipelayout/SwipeLayout;

    return-void
.end method
