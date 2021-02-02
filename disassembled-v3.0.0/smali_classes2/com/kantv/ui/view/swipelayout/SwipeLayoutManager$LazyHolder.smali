.class Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$LazyHolder;
.super Ljava/lang/Object;
.source "SwipeLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;-><init>(Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$1;)V

    sput-object v0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$LazyHolder;->INSTANCE:Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager$LazyHolder;->INSTANCE:Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    return-object v0
.end method
