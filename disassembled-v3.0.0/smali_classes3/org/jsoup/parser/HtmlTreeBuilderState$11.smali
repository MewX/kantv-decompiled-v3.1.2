.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 940
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 942
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "caption"

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 943
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v1

    .line 944
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 949
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 950
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 951
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 952
    :cond_1
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    .line 954
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 957
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v7, "th"

    const-string v9, "tfoot"

    const-string v11, "td"

    const/4 v12, 0x4

    const-string v13, "tbody"

    const/4 v14, 0x3

    const-string v15, "colgroup"

    const/16 v16, 0x2

    const-string v17, "col"

    const/16 v8, 0x9

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v3

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v5

    aput-object v17, v10, v4

    aput-object v15, v10, v16

    aput-object v13, v10, v14

    aput-object v11, v10, v12

    const/16 v19, 0x5

    aput-object v9, v10, v19

    const/16 v18, 0x6

    aput-object v7, v10, v18

    const/16 v20, 0x7

    const-string v21, "thead"

    aput-object v21, v10, v20

    const/16 v20, 0x8

    const-string v21, "tr"

    aput-object v21, v10, v20

    invoke-static {v3, v10}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 959
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    const-string v10, "table"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 961
    :cond_4
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 962
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 964
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_5
    :goto_0
    return v4

    .line 965
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v10, "body"

    aput-object v10, v6, v5

    aput-object v17, v6, v4

    aput-object v15, v6, v16

    const-string v4, "html"

    aput-object v4, v6, v14

    aput-object v13, v6, v12

    const/4 v4, 0x5

    aput-object v11, v6, v4

    const/4 v4, 0x6

    aput-object v9, v6, v4

    const/4 v4, 0x7

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "thead"

    aput-object v7, v6, v4

    const-string v4, "tr"

    aput-object v4, v6, v8

    invoke-static {v3, v6}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 967
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 970
    :cond_7
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1
.end method
