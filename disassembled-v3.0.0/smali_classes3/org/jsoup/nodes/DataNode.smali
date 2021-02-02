.class public Lorg/jsoup/nodes/DataNode;
.super Lorg/jsoup/nodes/Node;
.source "DataNode.java"


# static fields
.field private static final DATA_KEY:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Node;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lorg/jsoup/nodes/DataNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/DataNode;
    .locals 1

    .line 62
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    new-instance v0, Lorg/jsoup/nodes/DataNode;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getWholeData()Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/jsoup/nodes/DataNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#data"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public setWholeData(Ljava/lang/String;)Lorg/jsoup/nodes/DataNode;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/jsoup/nodes/DataNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/jsoup/nodes/DataNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
