.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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

    .line 1090
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 1

    .line 1140
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1
.end method

.method private handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
    .locals 1

    const-string v0, "tr"

    .line 1144
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v2

    const-string v4, "tfoot"

    const-string v6, "tbody"

    const-string v7, "colgroup"

    const-string v8, "col"

    const-string v9, "caption"

    const/4 v10, 0x7

    const-string v11, "td"

    const-string v12, "th"

    const/4 v13, 0x3

    const-string v14, "tr"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v2, :cond_2

    .line 1093
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 1096
    new-array v5, v15, [Ljava/lang/String;

    aput-object v12, v5, v17

    aput-object v11, v5, v16

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1097
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 1098
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1099
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    goto :goto_0

    .line 1101
    :cond_0
    new-array v2, v10, [Ljava/lang/String;

    aput-object v9, v2, v17

    aput-object v8, v2, v16

    aput-object v7, v2, v15

    aput-object v6, v2, v13

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const-string v4, "thead"

    const/4 v5, 0x5

    aput-object v4, v2, v5

    const/4 v4, 0x6

    aput-object v14, v2, v4

    invoke-static {v3, v2}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v1

    return v1

    .line 1104
    :cond_1
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 1106
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1107
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v2

    .line 1108
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1111
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1112
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v17

    .line 1115
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableRowContext()V

    .line 1116
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 1117
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    return v16

    :cond_4
    const-string v3, "table"

    .line 1118
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1119
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z

    move-result v1

    return v1

    .line 1120
    :cond_5
    new-array v3, v13, [Ljava/lang/String;

    aput-object v6, v3, v17

    aput-object v4, v3, v16

    const-string v4, "thead"

    aput-object v4, v3, v15

    invoke-static {v2, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1121
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1122
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v17

    .line 1125
    :cond_6
    invoke-virtual {v1, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-object/from16 v3, p1

    .line 1126
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_7
    move-object/from16 v3, p1

    .line 1127
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "body"

    aput-object v5, v4, v17

    aput-object v9, v4, v16

    aput-object v8, v4, v15

    aput-object v7, v4, v13

    const-string v5, "html"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aput-object v11, v4, v5

    const/4 v5, 0x6

    aput-object v12, v4, v5

    invoke-static {v2, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1128
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v17

    .line 1131
    :cond_8
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    :cond_9
    move-object/from16 v3, p1

    .line 1134
    invoke-direct/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1
.end method
