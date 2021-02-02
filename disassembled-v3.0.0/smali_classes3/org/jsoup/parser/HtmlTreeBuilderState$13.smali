.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$13;
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

    .line 1030
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    .line 1087
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1
.end method

.method private exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    const-string v0, "tbody"

    .line 1076
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1

    .line 1081
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1082
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 1083
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1032
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    move-object/from16 v3, p1

    iget-object v4, v3, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const-string v4, "colgroup"

    const-string v5, "col"

    const-string v6, "caption"

    const-string v8, "td"

    const-string v9, "th"

    const-string v10, "thead"

    const-string v11, "tfoot"

    const-string v12, "tbody"

    const-string v13, "tr"

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v7, 0x3

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eq v2, v7, :cond_5

    if-eq v2, v14, :cond_0

    .line 1070
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 1050
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 1052
    new-array v14, v7, [Ljava/lang/String;

    aput-object v12, v14, v17

    aput-object v11, v14, v16

    aput-object v10, v14, v15

    invoke-static {v2, v14}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1053
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1054
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v17

    .line 1057
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1059
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :cond_2
    const-string v10, "table"

    .line 1061
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1062
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    :cond_3
    const/16 v10, 0x8

    .line 1063
    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "body"

    aput-object v11, v10, v17

    aput-object v6, v10, v16

    aput-object v5, v10, v15

    aput-object v4, v10, v7

    const-string v4, "html"

    const/4 v5, 0x4

    aput-object v4, v10, v5

    const/4 v4, 0x5

    aput-object v8, v10, v4

    const/4 v4, 0x6

    aput-object v9, v10, v4

    const/4 v4, 0x7

    aput-object v13, v10, v4

    invoke-static {v2, v10}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v17

    .line 1067
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 1034
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 1035
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v14

    .line 1036
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1037
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableBodyContext()V

    .line 1038
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1039
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    return v16

    .line 1040
    :cond_6
    new-array v7, v15, [Ljava/lang/String;

    aput-object v9, v7, v17

    aput-object v8, v7, v16

    invoke-static {v14, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1041
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1042
    invoke-virtual {v1, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 1043
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_7
    const/4 v2, 0x6

    .line 1044
    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v17

    aput-object v5, v2, v16

    aput-object v4, v2, v15

    const/4 v4, 0x3

    aput-object v12, v2, v4

    const/4 v4, 0x4

    aput-object v11, v2, v4

    const/4 v4, 0x5

    aput-object v10, v2, v4

    invoke-static {v14, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1045
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 1047
    :cond_8
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1
.end method
