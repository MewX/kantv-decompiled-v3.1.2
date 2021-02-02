.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$17;
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

    .line 1296
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1298
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v4, "td"

    const-string v6, "tr"

    const-string v8, "thead"

    const/4 v9, 0x4

    const-string v10, "tfoot"

    const/4 v11, 0x3

    const-string v12, "tbody"

    const/4 v13, 0x2

    const-string v14, "table"

    const/4 v15, 0x1

    const-string v16, "caption"

    const/16 v5, 0x8

    const/16 v18, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v3

    new-array v7, v5, [Ljava/lang/String;

    aput-object v16, v7, v18

    aput-object v14, v7, v15

    aput-object v12, v7, v13

    aput-object v10, v7, v11

    aput-object v8, v7, v9

    const/16 v19, 0x5

    aput-object v6, v7, v19

    const/16 v17, 0x6

    aput-object v4, v7, v17

    const/16 v20, 0x7

    const-string v21, "th"

    aput-object v21, v7, v20

    invoke-static {v3, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1299
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v3, "select"

    .line 1300
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 1301
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 1302
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v16, v5, v18

    aput-object v14, v5, v15

    aput-object v12, v5, v13

    aput-object v10, v5, v11

    aput-object v8, v5, v9

    const/4 v7, 0x5

    aput-object v6, v5, v7

    const/4 v6, 0x6

    aput-object v4, v5, v6

    const/4 v4, 0x7

    const-string v6, "th"

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1303
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1304
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "select"

    .line 1305
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 1306
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_1
    return v18

    .line 1310
    :cond_2
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$17;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1
.end method
