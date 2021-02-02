.class public Lorg/jsoup/nodes/XmlDeclaration;
.super Lorg/jsoup/nodes/Node;
.source "XmlDeclaration.java"


# instance fields
.field private final isProcessingInstruction:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lorg/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    return-void
.end method


# virtual methods
.method public getWholeDeclaration()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#declaration"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "<"

    .line 51
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    iget-boolean v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    const-string v1, "!"

    const-string v2, "?"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 52
    :goto_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    iget-object v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->name:Ljava/lang/String;

    .line 53
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 54
    iget-object p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 55
    iget-boolean p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 56
    :goto_1
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    .line 57
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
