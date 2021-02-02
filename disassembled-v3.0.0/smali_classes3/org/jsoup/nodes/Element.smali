.class public Lorg/jsoup/nodes/Element;
.super Lorg/jsoup/nodes/Node;
.source "Element.java"


# static fields
.field private static final classSplit:Ljava/util/regex/Pattern;


# instance fields
.field private tag:Lorg/jsoup/parser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Element;->classSplit:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V
    .locals 1

    .line 65
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 52
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object p0
.end method

.method private static accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1, p0}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    :cond_0
    return-void
.end method

.method private static appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    .locals 1

    .line 942
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 944
    iget-object p1, p1, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {p1}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 945
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 947
    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/jsoup/helper/StringUtil;->appendNormalisedWhitespace(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private static appendWhitespaceIfBr(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 951
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " "

    .line 952
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private html(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1225
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 1226
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jsoup/nodes/Element;",
            ">(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 603
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 604
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 606
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 607
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    if-ne v1, p0, :cond_0

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private ownText(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 931
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 932
    instance-of v2, v1, Lorg/jsoup/nodes/TextNode;

    if-eqz v2, :cond_1

    .line 933
    check-cast v1, Lorg/jsoup/nodes/TextNode;

    .line 934
    invoke-static {p1, v1}, Lorg/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    goto :goto_0

    .line 935
    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    .line 936
    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-static {v1, p1}, Lorg/jsoup/nodes/Element;->appendWhitespaceIfBr(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static preserveWhitespace(Lorg/jsoup/nodes/Node;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 957
    instance-of v1, p0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_1

    .line 958
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 959
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p0

    iget-object p0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1110
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1112
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1113
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 454
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 465
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic after(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->after(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->after(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 401
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/Node;

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->addChildren([Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 297
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->reparentChild(Lorg/jsoup/nodes/Node;)V

    .line 301
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()V

    .line 302
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    return-object p0
.end method

.method public appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 350
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public appendText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 375
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 376
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    return-object p0
.end method

.method public attr(Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 431
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 442
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic before(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->before(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method

.method public child(I)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public children()Lorg/jsoup/select/Elements;
    .locals 4

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 217
    instance-of v3, v2, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_0

    .line 218
    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-direct {v1, v0}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    .line 1027
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public classNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1037
    sget-object v0, Lorg/jsoup/nodes/Element;->classSplit:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->className()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1038
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const-string v0, ""

    .line 1039
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    .line 1050
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, " "

    invoke-static {p1, v1}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1258
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public cssSelector()Ljava/lang/String;
    .locals 5

    .line 499
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "."

    invoke-static {v0, v2}, Lorg/jsoup/helper/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x2e

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v2, " > "

    .line 512
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 514
    new-array v2, v3, [Ljava/lang/Object;

    .line 515
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, ":nth-child(%d)"

    .line 514
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->cssSelector()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 510
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public data()Ljava/lang/String;
    .locals 4

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 1009
    instance-of v3, v2, Lorg/jsoup/nodes/DataNode;

    if-eqz v3, :cond_1

    .line 1010
    check-cast v2, Lorg/jsoup/nodes/DataNode;

    .line 1011
    invoke-virtual {v2}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1012
    :cond_1
    instance-of v3, v2, Lorg/jsoup/nodes/Element;

    if-eqz v3, :cond_0

    .line 1013
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 1014
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1018
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/DataNode;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 260
    instance-of v3, v2, Lorg/jsoup/nodes/DataNode;

    if-eqz v3, :cond_0

    .line 261
    check-cast v2, Lorg/jsoup/nodes/DataNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dataset()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->dataset()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public elementSiblingIndex()Ljava/lang/Integer;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 590
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 473
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public firstElementSibling()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 579
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAllElements()Lorg/jsoup/select/Elements;
    .locals 1

    .line 879
    new-instance v0, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 638
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 640
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 641
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p1, v0}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 671
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 674
    new-instance v0, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeStarting(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 684
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 687
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeStarting;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 698
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueContaining(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 742
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueEnding(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 731
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 3

    .line 765
    :try_start_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getElementsByAttributeValueMatching(Ljava/lang/String;Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 752
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueNot(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 709
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByAttributeValueStarting(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 720
    new-instance v0, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-direct {v0, p1, p2}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 659
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 661
    new-instance v0, Lorg/jsoup/select/Evaluator$Class;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexEquals(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 796
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexGreaterThan(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 787
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByIndexLessThan(I)Lorg/jsoup/select/Elements;
    .locals 1

    .line 778
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 622
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 625
    new-instance v0, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 818
    new-instance v0, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsContainingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 807
    new-instance v0, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 866
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 868
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingOwnText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 854
    new-instance v0, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getElementsMatchingText(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 4

    .line 840
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 842
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getElementsMatchingText(Ljava/util/regex/Pattern;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 828
    new-instance v0, Lorg/jsoup/select/Evaluator$Matches;

    invoke-direct {v0, p1}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/Collector;->collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public hasClass(Ljava/lang/String;)Z
    .locals 13

    .line 1062
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1064
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    if-ge v1, v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v8, :cond_1

    .line 1072
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v1, :cond_5

    .line 1079
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    sub-int v2, v10, v11

    if-ne v2, v8, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v11

    move-object v5, p1

    move v7, v8

    .line 1082
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v12

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v11, v10

    const/4 v2, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    sub-int/2addr v1, v11

    if-ne v1, v8, :cond_6

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v11

    move-object v5, p1

    move v7, v8

    .line 1098
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v9
.end method

.method public hasText()Z
    .locals 4

    .line 985
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 986
    instance-of v2, v1, Lorg/jsoup/nodes/TextNode;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 987
    check-cast v1, Lorg/jsoup/nodes/TextNode;

    .line 988
    invoke-virtual {v1}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 990
    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    .line 991
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 992
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public html(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 1235
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public html()Ljava/lang/String;
    .locals 2

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/StringBuilder;)V

    .line 1221
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->getOutputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 1247
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->empty()Lorg/jsoup/nodes/Element;

    .line 1248
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->append(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jsoup/nodes/Node;",
            ">;)",
            "Lorg/jsoup/nodes/Element;"
        }
    .end annotation

    const-string v0, "Children collection to be inserted must not be null."

    .line 331
    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v0

    if-gez p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr p1, v1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Insert position out of bounds."

    .line 334
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/jsoup/nodes/Node;

    .line 338
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public isBlock()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    return v0
.end method

.method public lastElementSibling()Lorg/jsoup/nodes/Element;
    .locals 3

    .line 598
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public nextElementSibling()Lorg/jsoup/nodes/Element;
    .locals 5

    .line 547
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 549
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v2

    .line 550
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 551
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_1

    .line 552
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1178
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 1179
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1180
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    goto :goto_0

    .line 1182
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_3
    :goto_0
    const-string p2, "<"

    .line 1186
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 1187
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1188
    iget-object p2, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 1191
    iget-object p2, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1192
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {p2}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0x3e

    .line 1193
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_4
    const-string p2, " />"

    .line 1195
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_5
    const-string p2, ">"

    .line 1198
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1203
    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 1204
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/TextNode;

    if-nez v0, :cond_2

    .line 1206
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_2
    const-string p2, "</"

    .line 1207
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public ownText()Ljava/lang/String;
    .locals 1

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Element;->ownText(Ljava/lang/StringBuilder;)V

    .line 927
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final parent()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public bridge synthetic parent()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public parents()Lorg/jsoup/select/Elements;
    .locals 1

    .line 176
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 177
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->accumulateParents(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    return-object v0
.end method

.method public prepend(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 415
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 418
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/jsoup/nodes/Node;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 314
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 316
    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/Element;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 363
    new-instance v0, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v0
.end method

.method public prependText(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 388
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 389
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public previousElementSibling()Lorg/jsoup/nodes/Element;
    .locals 4

    .line 563
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 565
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Element;->indexInList(Lorg/jsoup/nodes/Element;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v2

    .line 566
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 567
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 568
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public removeClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1125
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1128
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1129
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public select(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 287
    invoke-static {p1, p0}, Lorg/jsoup/select/Selector;->select(Ljava/lang/String;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public siblingElements()Lorg/jsoup/select/Elements;
    .locals 3

    .line 526
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lorg/jsoup/select/Elements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jsoup/select/Elements;-><init>(I)V

    return-object v0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 530
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lorg/jsoup/select/Elements;-><init>(I)V

    .line 531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    if-eq v2, p0, :cond_1

    .line 533
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public tag()Lorg/jsoup/parser/Tag;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object v0
.end method

.method public tagName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tagName(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 1

    const-string v0, "Tag name must not be empty."

    .line 90
    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p1, v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    return-object p0
.end method

.method public text()Ljava/lang/String;
    .locals 3

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    new-instance v1, Lorg/jsoup/select/NodeTraversor;

    new-instance v2, Lorg/jsoup/nodes/Element$1;

    invoke-direct {v2, p0, v0}, Lorg/jsoup/nodes/Element$1;-><init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V

    invoke-direct {v1, v2}, Lorg/jsoup/select/NodeTraversor;-><init>(Lorg/jsoup/select/NodeVisitor;)V

    .line 909
    invoke-virtual {v1, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/nodes/Node;)V

    .line 910
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 971
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 973
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->empty()Lorg/jsoup/nodes/Element;

    .line 974
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->baseUri:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public textNodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/TextNode;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v1, p0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 242
    instance-of v3, v2, Lorg/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 243
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleClass(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1140
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1142
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->classNames()Ljava/util/Set;

    move-result-object v0

    .line 1143
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1146
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1147
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->classNames(Ljava/util/Set;)Lorg/jsoup/nodes/Element;

    return-object p0
.end method

.method public val()Ljava/lang/String;
    .locals 2

    .line 1157
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "value"

    .line 1160
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public val(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1169
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 1172
    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method

.method public wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public bridge synthetic wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->wrap(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object p1

    return-object p1
.end method
