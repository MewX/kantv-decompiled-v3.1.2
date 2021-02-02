.class public abstract Lorg/jsoup/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Node$OuterHtmlVisitor;
    }
.end annotation


# static fields
.field private static final EMPTY_NODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field attributes:Lorg/jsoup/nodes/Attributes;

.field baseUri:Ljava/lang/String;

.field childNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field parentNode:Lorg/jsoup/nodes/Node;

.field siblingIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 35
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lorg/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    return-void
.end method

.method private addSiblingHtml(ILjava/lang/String;)V
    .locals 2

    .line 321
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 324
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 326
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/Node;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method private getDeepChild(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 385
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    .line 387
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Node;->getDeepChild(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private reindexChildren(I)V
    .locals 1

    .line 463
    :goto_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/helper/StringUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs addChildren(I[Lorg/jsoup/nodes/Node;)V
    .locals 3

    .line 440
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()V

    .line 442
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 443
    aget-object v1, p2, v0

    .line 444
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Node;->reparentChild(Lorg/jsoup/nodes/Node;)V

    .line 445
    iget-object v2, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 446
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Node;->reindexChildren(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected varargs addChildren([Lorg/jsoup/nodes/Node;)V
    .locals 4

    .line 431
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 432
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Node;->reparentChild(Lorg/jsoup/nodes/Node;)V

    .line 433
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()V

    .line 434
    iget-object v3, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 302
    iget v0, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    return-object p0
.end method

.method public after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 4

    .line 313
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v2, v2, [Lorg/jsoup/nodes/Node;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public attributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method public before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 277
    iget v0, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Node;->addSiblingHtml(ILjava/lang/String;)V

    return-object p0
.end method

.method public before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 4

    .line 288
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/Node;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public childNode(I)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Node;

    return-object p1
.end method

.method public final childNodeSize()I
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public childNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected childNodesAsArray()[Lorg/jsoup/nodes/Node;
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v1

    new-array v1, v1, [Lorg/jsoup/nodes/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public childNodesCopy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 216
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Node;
    .locals 6

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 628
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 631
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    const/4 v3, 0x0

    .line 633
    :goto_0
    iget-object v4, v2, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 634
    iget-object v4, v2, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Node;

    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v4

    .line 635
    iget-object v5, v2, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 3

    .line 651
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    iput-object p1, v0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 657
    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    :goto_0
    iput p1, v0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 658
    iget-object p1, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, v0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 659
    iget-object p1, p0, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    iput-object p1, v0, Lorg/jsoup/nodes/Node;->baseUri:Ljava/lang/String;

    .line 660
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 662
    iget-object p1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 663
    iget-object v2, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 653
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method protected ensureChildNodes()V
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/Node;->EMPTY_NODES:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getOutputSettings()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    .line 557
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jsoup/nodes/Document;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 2

    .line 111
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string v0, "abs:"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSameValue(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jsoup/nodes/Node;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 576
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    return-object p1
.end method

.method protected indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\n"

    .line 585
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    move-result p3

    mul-int p2, p2, p3

    invoke-static {p2}, Lorg/jsoup/helper/StringUtil;->padding(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public nextSibling()Lorg/jsoup/nodes/Node;
    .locals 4

    .line 490
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 493
    :cond_0
    iget-object v0, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 494
    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v2, v2, 0x1

    .line 495
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 496
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract nodeName()Ljava/lang/String;
.end method

.method public outerHtml()Ljava/lang/String;
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 547
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected outerHtml(Ljava/lang/Appendable;)V
    .locals 3

    .line 552
    new-instance v0, Lorg/jsoup/select/NodeTraversor;

    new-instance v1, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->getOutputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-direct {v0, v1}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    invoke-virtual {v0, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method abstract outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ownerDocument()Lorg/jsoup/nodes/Document;
    .locals 1

    .line 254
    instance-of v0, p0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    .line 255
    move-object v0, p0

    check-cast v0, Lorg/jsoup/nodes/Document;

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public final parentNode()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public previousSibling()Lorg/jsoup/nodes/Node;
    .locals 3

    .line 506
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 509
    :cond_0
    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-lez v2, :cond_1

    .line 510
    iget-object v0, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 127
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->removeIgnoreCase(Ljava/lang/String;)V

    return-object p0
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 422
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 423
    iget v0, p1, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 424
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 425
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Node;->reindexChildren(I)V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method protected reparentChild(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 457
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 459
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Node;->setParentNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method protected replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V
    .locals 2

    .line 409
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 410
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 414
    :cond_1
    iget v0, p1, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 415
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    iput-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 417
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    const/4 p2, 0x0

    .line 418
    iput-object p2, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method public replaceWith(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 397
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/Node;->replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lorg/jsoup/nodes/Node$1;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/Node$1;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;

    return-void
.end method

.method protected setParentNode(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 405
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method protected setSiblingIndex(I)V
    .locals 0

    .line 526
    iput p1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    return-void
.end method

.method public siblingIndex()I
    .locals 1

    .line 522
    iget v0, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    return v0
.end method

.method public siblingNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    iget-object v0, v0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    .line 478
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    if-eq v2, p0, :cond_1

    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;
    .locals 1

    .line 535
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 536
    new-instance v0, Lorg/jsoup/select/NodeTraversor;

    invoke-direct {v0, p1}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    .line 537
    invoke-virtual {v0, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public unwrap()Lorg/jsoup/nodes/Node;
    .locals 4

    .line 375
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodesAsArray()[Lorg/jsoup/nodes/Node;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 379
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->remove()V

    return-object v0
.end method

.method public wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 4

    .line 335
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 338
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 339
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    if-eqz v2, :cond_3

    .line 340
    instance-of v3, v2, Lorg/jsoup/nodes/Element;

    if-nez v3, :cond_1

    goto :goto_2

    .line 343
    :cond_1
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 344
    invoke-direct {p0, v2}, Lorg/jsoup/nodes/Node;->getDeepChild(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 345
    iget-object v3, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {v3, p0, v2}, Lorg/jsoup/nodes/Node;->replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V

    const/4 v3, 0x1

    .line 346
    new-array v3, v3, [Lorg/jsoup/nodes/Node;

    aput-object p0, v3, v0

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->addChildren([Lorg/jsoup/nodes/Node;)V

    .line 349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 350
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 351
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 352
    iget-object v3, v1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 353
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    return-object v1
.end method
