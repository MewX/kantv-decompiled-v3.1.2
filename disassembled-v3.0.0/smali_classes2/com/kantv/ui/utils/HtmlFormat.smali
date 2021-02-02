.class public Lcom/kantv/ui/utils/HtmlFormat;
.super Ljava/lang/Object;
.source "HtmlFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 15
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    const-string v0, "img"

    .line 16
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const-string v2, "width"

    const-string v3, "100%"

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v2, "height"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
