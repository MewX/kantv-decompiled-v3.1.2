.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
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

    .line 803
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 891
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 893
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "table"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "tbody"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "tfoot"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "thead"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "tr"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    .line 895
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    .line 896
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFosterInserts(Z)V

    goto :goto_0

    .line 898
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 805
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->newPendingTableCharacters()V

    .line 807
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 808
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 809
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 810
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 811
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    return v4

    .line 813
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 814
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 816
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v3

    const-string v6, "tr"

    const-string v7, "thead"

    const-string v8, "th"

    const-string v9, "tfoot"

    const-string v10, "td"

    const-string v11, "col"

    const-string v12, "caption"

    const-string v13, "tbody"

    const/4 v14, 0x3

    const-string v15, "colgroup"

    const-string v4, "table"

    if-eqz v3, :cond_f

    .line 817
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 818
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 820
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 821
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 822
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 823
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 824
    :cond_4
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 825
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 826
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 827
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 828
    :cond_5
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 829
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 830
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 831
    :cond_6
    new-array v11, v14, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v13, v11, v12

    const/4 v15, 0x1

    aput-object v9, v11, v15

    const/4 v9, 0x2

    aput-object v7, v11, v9

    invoke-static {v5, v11}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 832
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearStackToTableContext()V

    .line 833
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 834
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 835
    :cond_7
    new-array v7, v14, [Ljava/lang/String;

    aput-object v10, v7, v12

    aput-object v8, v7, v15

    aput-object v6, v7, v9

    invoke-static {v5, v7}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 836
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 837
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 838
    :cond_8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 839
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 840
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 842
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_9
    const/4 v4, 0x2

    .line 843
    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "style"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "script"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v5, v4}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 844
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    :cond_a
    const-string v4, "input"

    .line 845
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 846
    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 847
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 849
    :cond_b
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_c
    const-string v4, "form"

    .line 851
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 852
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    const/4 v1, 0x0

    .line 856
    invoke-virtual {v2, v3, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_0

    :goto_1
    return v1

    .line 859
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 862
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v3

    const-string v5, "html"

    if-eqz v3, :cond_13

    .line 863
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 864
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 867
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 868
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v4, 0x0

    return v4

    .line 871
    :cond_10
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()V

    const/16 v16, 0x1

    return v16

    :cond_11
    const/4 v4, 0x0

    const/16 v16, 0x1

    const/16 v14, 0xb

    .line 874
    new-array v14, v14, [Ljava/lang/String;

    const-string v17, "body"

    aput-object v17, v14, v4

    aput-object v12, v14, v16

    const/4 v4, 0x2

    aput-object v11, v14, v4

    const/4 v4, 0x3

    aput-object v15, v14, v4

    const/4 v4, 0x4

    aput-object v5, v14, v4

    const/4 v4, 0x5

    aput-object v13, v14, v4

    const/4 v4, 0x6

    aput-object v10, v14, v4

    const/4 v4, 0x7

    aput-object v9, v14, v4

    const/16 v4, 0x8

    aput-object v8, v14, v4

    const/16 v4, 0x9

    aput-object v7, v14, v4

    const/16 v4, 0xa

    aput-object v6, v14, v4

    invoke-static {v3, v14}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 876
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v1, 0x0

    return v1

    .line 879
    :cond_12
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 882
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 883
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 884
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_14
    const/4 v1, 0x1

    return v1

    .line 887
    :cond_15
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1
.end method
