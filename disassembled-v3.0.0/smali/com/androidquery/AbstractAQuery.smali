.class public abstract Lcom/androidquery/AbstractAQuery;
.super Ljava/lang/Object;
.source "AbstractAQuery.java"

# interfaces
.implements Lcom/androidquery/util/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidquery/AbstractAQuery<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/androidquery/util/Constants;"
    }
.end annotation


# static fields
.field private static LAYER_TYPE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ON_CLICK_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ON_ITEM_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OVER_SCROLL_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static PENDING_TRANSITION_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TEXT_CHANGE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private act:Landroid/app/Activity;

.field protected ah:Lcom/androidquery/auth/AccountHandle;

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private policy:Ljava/lang/Integer;

.field protected progress:Ljava/lang/Object;

.field private proxy:Lorg/apache/http/HttpHost;

.field private root:Landroid/view/View;

.field private trans:Lcom/androidquery/callback/Transformer;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    .line 1356
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v1, 0x4

    .line 1419
    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/widget/AdapterView;

    aput-object v4, v2, v3

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sput-object v2, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    .line 1505
    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Landroid/widget/AbsListView;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    sput-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    .line 1553
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    sput-object v1, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    .line 1576
    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    .line 1594
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sput-object v1, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    .line 1611
    new-array v1, v5, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/Paint;

    aput-object v2, v1, v0

    sput-object v1, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    .line 2486
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 168
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 169
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 157
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-void
.end method

.method private findView(I)Landroid/view/View;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private findView(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const v1, 0x1020002

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private varargs findView([I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 212
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 215
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private self()Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private setScrollListener()Lcom/androidquery/util/Common;
    .locals 3

    .line 1525
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    const v1, 0x40ff0002

    .line 1527
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/util/Common;

    if-nez v2, :cond_0

    .line 1529
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    .line 1530
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1531
    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    const-string v0, "set scroll listenr"

    .line 1532
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    :cond_0
    return-object v2
.end method

.method private size(ZIZ)V
    .locals 2

    .line 1788
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1790
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1792
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    int-to-float p2, p2

    .line 1795
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    :cond_0
    if-eqz p1, :cond_1

    .line 1799
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 1801
    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1804
    :goto_0
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public adapter(Landroid/widget/Adapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Landroid/widget/AdapterView;

    .line 591
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public adapter(Landroid/widget/ExpandableListAdapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    .line 606
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 607
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1838
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1923
    invoke-virtual {p5, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 1925
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;J",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1976
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 1977
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p5, p6}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/androidquery/callback/AjaxCallback;

    const/4 p6, 0x1

    invoke-virtual {p5, p6}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p5, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 1979
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1900
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 1901
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1948
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 1949
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1951
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 1998
    invoke-virtual {p4, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxCallback;->params(Ljava/util/Map;)Ljava/lang/Object;

    .line 1999
    invoke-virtual {p0, p4}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2020
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2021
    invoke-virtual {v0, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p4, p5}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2023
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public ajaxCancel()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2128
    invoke-static {}, Lcom/androidquery/callback/AjaxCallback;->cancel()V

    .line 2130
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2412
    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")TT;"
        }
    .end annotation

    .line 2428
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2429
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2430
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2445
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2447
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TT;"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 403
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public background(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1072
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public backgroundColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 2116
    const-class v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public checked(Z)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 954
    check-cast v0, Landroid/widget/CompoundButton;

    .line 955
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clear()Lcom/androidquery/AbstractAQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1675
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1677
    instance-of v1, v0, Landroid/widget/ImageView;

    const v2, 0x40ff0001

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1678
    check-cast v0, Landroid/widget/ImageView;

    .line 1679
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1680
    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1681
    :cond_0
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1682
    check-cast v0, Landroid/webkit/WebView;

    .line 1683
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1684
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1685
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1686
    :cond_1
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1687
    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 1688
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public click()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2461
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2462
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2464
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public clicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1367
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 1368
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/AbstractAQuery;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    iput-object v0, p1, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 115
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public dataChanged()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1104
    check-cast v0, Landroid/widget/AdapterView;

    .line 1105
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1107
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    .line 1108
    check-cast v0, Landroid/widget/BaseAdapter;

    .line 1109
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1115
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 2039
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    .line 2040
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2080
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2081
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2083
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->delete(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2534
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2536
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 2540
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2543
    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2546
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2517
    :try_start_0
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "Ljava/io/File;",
            ">;)TT;"
        }
    .end annotation

    .line 2686
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-class v0, Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxCallback;->targetFile(Ljava/io/File;)Ljava/lang/Object;

    .line 2687
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2704
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 2705
    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2706
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->download(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public enabled(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public expand(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .line 2633
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_1

    .line 2635
    check-cast v0, Landroid/widget/ExpandableListView;

    if-eqz p2, :cond_0

    .line 2637
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 2639
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 2643
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public expand(Z)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 2648
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_1

    .line 2650
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 2651
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2655
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2659
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_1

    .line 2661
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2670
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public find(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public getButton()Landroid/widget/Button;
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 2142
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2143
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCachedImage(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 2205
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 2171
    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 2184
    invoke-static {p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2186
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2188
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1823
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1192
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1296
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getGallery()Landroid/widget/Gallery;
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1328
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1348
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSpinner()Landroid/widget/Spinner;
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1312
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public gone()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1007
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public hardwareAccelerated11()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1662
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1754
    invoke-direct {p0, v0, p1, v1}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1755
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public height(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1782
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1783
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 312
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 313
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public id(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 325
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs id([I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView([I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(I)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 624
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 627
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 667
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/Bitmap;F)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    .line 879
    new-instance v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 880
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 881
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 648
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x40ff0001

    const/4 v2, 0x0

    .line 649
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 800
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 801
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/io/File;I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 841
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/androidquery/AbstractAQuery;->image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZI",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 860
    new-instance p4, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {p4}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    :cond_0
    move-object v6, p4

    .line 861
    invoke-virtual {v6, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 864
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, p4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    .line 865
    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 686
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected image(Ljava/lang/String;Lcom/androidquery/callback/ImageOptions;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/androidquery/callback/ImageOptions;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v8, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object v4, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v1 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZ)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 700
    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 718
    invoke-virtual/range {v0 .. v7}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 740
    invoke-virtual/range {v0 .. v8}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 760
    invoke-virtual/range {v0 .. v10}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFILjava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IFI",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 765
    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 766
    iget-object v2, v0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v14, v0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v15, v0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->policy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v1

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v17, p9

    move-object/from16 v19, p10

    invoke-static/range {v2 .. v19}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 770
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .line 824
    invoke-virtual {p6, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    .line 827
    invoke-virtual {p0, p6}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x40ff0003

    if-eqz p1, :cond_0

    .line 2609
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2610
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object p1

    .line 2617
    :cond_0
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 2618
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0

    .line 2620
    :cond_1
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    :goto_0
    const/4 v1, 0x0

    .line 2623
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2624
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method public invalidate(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2155
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2157
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2159
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public invisible()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1024
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AbstractAjaxCallback<",
            "*TK;>;)TT;"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1850
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_2

    .line 1854
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->policy:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1858
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->policy(I)Ljava/lang/Object;

    .line 1861
    :cond_3
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_4

    .line 1862
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1865
    :cond_4
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 1866
    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_0

    .line 1868
    :cond_5
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    .line 1871
    :goto_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    .line 1873
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    :cond_0
    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 1647
    invoke-static/range {v1 .. v6}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isChecked()Z
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 971
    check-cast v0, Landroid/widget/CompoundButton;

    .line 972
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExist()Z
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    .line 1443
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1445
    check-cast v0, Landroid/widget/AdapterView;

    .line 1446
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1450
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1430
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 1431
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1479
    check-cast v0, Landroid/widget/AdapterView;

    .line 1480
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1483
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public itemSelected(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1463
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 1464
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public longClick()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2478
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2479
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 2481
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1415
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public longClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1397
    new-instance v0, Lcom/androidquery/util/Common;

    invoke-direct {v0}, Lcom/androidquery/util/Common;-><init>()V

    sget-object v1, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 1398
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public makeSharedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    .line 2364
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2368
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2372
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2373
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 2375
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2376
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2378
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2379
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    .line 2382
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v3, v0

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2384
    :try_start_3
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2385
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2386
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2387
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 2384
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2385
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2386
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 2387
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2394
    :goto_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public margin(FFFF)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1712
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1714
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1718
    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p1

    .line 1719
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    .line 1720
    invoke-static {v1, p3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p3

    .line 1721
    invoke-static {v1, p4}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p4

    .line 1723
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1724
    iget-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1729
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public overridePendingTransition5(II)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1588
    sget-object v4, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v1, "overridePendingTransition"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public parent(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_2

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 254
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 258
    :goto_2
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public policy(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->policy:Ljava/lang/Integer;

    .line 419
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public progress(I)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 352
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 391
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public progress(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 371
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 429
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    .line 430
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 2057
    invoke-virtual {p5, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const/4 p4, 0x3

    invoke-virtual {p1, p4}, Lcom/androidquery/callback/AjaxCallback;->method(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p4, "Content-Type"

    invoke-virtual {p1, p4, p2}, Lcom/androidquery/callback/AjaxCallback;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/callback/AjaxCallback;

    const-string p2, "%entity"

    invoke-virtual {p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public rating(F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    .line 442
    check-cast v0, Landroid/widget/RatingBar;

    .line 443
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public recycle(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 272
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 273
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->reset()V

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 275
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method protected reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1878
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1879
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 1880
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    const/4 v1, 0x0

    .line 1881
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->policy:Ljava/lang/Integer;

    .line 1882
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->proxy:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public scrolled(Landroid/widget/AbsListView$OnScrollListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1547
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidquery/util/Common;->forward(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1550
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public scrolledBottom(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1516
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1517
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    .line 1520
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    .line 1624
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1626
    sget-object v4, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const-string v1, "setLayerType"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public setOverScrollMode9(I)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1605
    sget-object v4, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const-string v1, "setOverScrollMode"

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public setSelection(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1497
    check-cast v0, Landroid/widget/AdapterView;

    .line 1498
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1501
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public shouldDelay(IIZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    .line 2272
    invoke-static {p1, p2, p4, p5, p6}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1

    .line 2323
    instance-of v0, p3, Landroid/widget/ExpandableListView;

    if-nez v0, :cond_0

    .line 2326
    invoke-static {p1, p2, p3, p4}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldDelay(IZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 0

    const/4 p2, -0x1

    .line 2249
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;F)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 2216
    invoke-static {p1, p2, p3, p4, v0}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2229
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result p1

    return p1
.end method

.method public show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2498
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2499
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback<",
            "TK;>;)TT;"
        }
    .end annotation

    .line 2097
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 2098
    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxCallback;->block()V

    .line 2099
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public tag(ILjava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 912
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public tag(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 896
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 458
    check-cast v0, Landroid/widget/TextView;

    .line 459
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public varargs text(I[Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Landroid/text/Spanned;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 526
    check-cast v0, Landroid/widget/TextView;

    .line 527
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 490
    check-cast v0, Landroid/widget/TextView;

    .line 491
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;Z)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->gone()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1

    .line 510
    :cond_1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textChanged(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1566
    check-cast v0, Landroid/widget/TextView;

    .line 1567
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object p1

    .line 1568
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1572
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 541
    check-cast v0, Landroid/widget/TextView;

    .line 542
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public textSize(F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Landroid/widget/TextView;

    .line 573
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TT;"
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 414
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public transparent(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->transparent(Landroid/view/View;Z)V

    .line 927
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TT;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 557
    check-cast v0, Landroid/widget/TextView;

    .line 558
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public visibility(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public visible()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1041
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->visibility(I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 2560
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/androidquery/AbstractAQuery;->webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)TT;"
        }
    .end annotation

    .line 2580
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2581
    invoke-virtual {p0, v0, v1}, Lcom/androidquery/AbstractAQuery;->setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;

    .line 2583
    new-instance v0, Lcom/androidquery/util/WebImage;

    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    move-object v3, v2

    check-cast v3, Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    move-object v2, v0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/androidquery/util/WebImage;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V

    .line 2584
    invoke-virtual {v0}, Lcom/androidquery/util/WebImage;->load()V

    .line 2585
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 2588
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public width(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1741
    invoke-direct {p0, v0, p1, v0}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1742
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method

.method public width(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1768
    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1769
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object p1

    return-object p1
.end method
