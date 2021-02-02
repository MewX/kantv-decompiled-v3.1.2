.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/Node;
.source "TextNode.java"


# static fields
.field private static final TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    .line 29
    iput-object p2, p0, Lorg/jsoup/nodes/TextNode;->baseUri:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 1

    .line 117
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureAttributes()V
    .locals 3

    .line 136
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 138
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    iget-object v1, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-static {p0}, Lorg/jsoup/helper/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "^\\s+"

    const-string v1, ""

    .line 127
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 175
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 145
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 156
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 157
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public attributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 151
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 0

    .line 162
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 163
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isBlank()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/TextNode;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 98
    :cond_2
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p2

    instance-of p2, p2, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_3

    .line 99
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 169
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public splitText(I)Lorg/jsoup/nodes/TextNode;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Split offset must be not be negative"

    .line 81
    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 82
    iget-object v2, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Split offset must not be greater than current text length"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    .line 87
    new-instance v2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->baseUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v3

    add-int/2addr v3, v0

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    aput-object v2, v0, v1

    invoke-virtual {p1, v3, v0}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    :cond_2
    return-object v2
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 2

    .line 52
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
