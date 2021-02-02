.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
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

    .line 245
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5

    .line 764
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object p1

    .line 765
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 767
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 768
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 769
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 772
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto :goto_1

    .line 775
    :cond_1
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 247
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7f

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_7e

    const/4 v7, 0x3

    const-string v8, "form"

    const-string v9, "li"

    const-string v10, "body"

    const-string v11, "p"

    if-eq v3, v7, :cond_33

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_17

    .line 249
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 254
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 256
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 259
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 260
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    .line 558
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1900()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_16

    const/4 v3, 0x0

    :goto_1
    const/16 v8, 0x8

    if-ge v3, v8, :cond_0

    .line 563
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v8

    if-nez v8, :cond_5

    .line 565
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 566
    :cond_5
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 567
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 568
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v4

    .line 570
    :cond_6
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 571
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 573
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v9

    if-eq v9, v8, :cond_8

    .line 574
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 579
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v9

    .line 582
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object v14, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v10, :cond_b

    const/16 v15, 0x40

    if-ge v11, v15, :cond_b

    .line 584
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jsoup/nodes/Element;

    if-ne v15, v8, :cond_9

    add-int/lit8 v12, v11, -0x1

    .line 586
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/Element;

    move-object v14, v12

    const/4 v12, 0x1

    goto :goto_3

    :cond_9
    if-eqz v12, :cond_a

    .line 588
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    move-object v15, v13

    :goto_4
    if-nez v15, :cond_c

    .line 594
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    return v4

    :cond_c
    move-object v10, v15

    move-object v11, v10

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_11

    .line 604
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 605
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    .line 606
    :cond_d
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 607
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto :goto_6

    :cond_e
    if-ne v10, v8, :cond_f

    goto :goto_7

    .line 612
    :cond_f
    new-instance v12, Lorg/jsoup/nodes/Element;

    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {v7, v4}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v4, v7}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v2, v10, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 615
    invoke-virtual {v2, v10, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 622
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 623
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 624
    :cond_10
    invoke-virtual {v12, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v10, v12

    move-object v11, v10

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x3

    goto :goto_5

    .line 629
    :cond_11
    :goto_7
    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$2000()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 630
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 631
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 632
    :cond_12
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    goto :goto_8

    .line 634
    :cond_13
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 635
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->remove()V

    .line 636
    :cond_14
    invoke-virtual {v14, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 639
    :goto_8
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 641
    invoke-virtual {v15}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v15}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v9

    new-array v9, v9, [Lorg/jsoup/nodes/Node;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/jsoup/nodes/Node;

    .line 642
    array-length v9, v7

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v9, :cond_15

    aget-object v11, v7, v10

    .line 643
    invoke-virtual {v4, v11}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 645
    :cond_15
    invoke-virtual {v15, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 646
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 648
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 649
    invoke-virtual {v2, v15, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x3

    goto/16 :goto_1

    .line 651
    :cond_16
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$2100()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 652
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 654
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 657
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 658
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 659
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 660
    :cond_18
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v4, "span"

    .line 662
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 664
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 665
    :cond_1a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 666
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 667
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 670
    :cond_1b
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 672
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 673
    :cond_1c
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :cond_1d
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 676
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 677
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 681
    :cond_1e
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "html"

    .line 683
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 684
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 687
    :cond_20
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 688
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    .line 689
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/FormElement;)V

    if-eqz v1, :cond_23

    .line 690
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_a

    .line 694
    :cond_21
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 695
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 696
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 698
    :cond_22
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_0

    .line 691
    :cond_23
    :goto_a
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 700
    :cond_24
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 701
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 702
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 703
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 704
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 706
    :cond_25
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 708
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 709
    :cond_26
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :cond_27
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 712
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 713
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 716
    :cond_28
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 718
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 719
    :cond_29
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    :cond_2a
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 722
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 723
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 726
    :cond_2b
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 728
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 729
    :cond_2c
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const-string v3, "sarcasm"

    .line 731
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 733
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 734
    :cond_2e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1300()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v1, "name"

    .line 735
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 737
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 740
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 741
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 742
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 743
    :cond_30
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_0

    :cond_31
    const-string v3, "br"

    .line 746
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 747
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const-string v1, "br"

    .line 748
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    return v6

    .line 751
    :cond_32
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 273
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "a"

    .line 275
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 276
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 277
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 281
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 283
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 284
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 287
    :cond_34
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 288
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 289
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 290
    :cond_35
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$500()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 291
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 292
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 293
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 294
    :cond_36
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$600()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 295
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 296
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 298
    :cond_37
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_38
    const-string v7, "span"

    .line 299
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 301
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 302
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 303
    :cond_39
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 304
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_b
    if-lez v4, :cond_3c

    .line 307
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 308
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 309
    invoke-virtual {v2, v9}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_c

    .line 312
    :cond_3a
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$700()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_c

    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 315
    :cond_3c
    :goto_c
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 316
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 318
    :cond_3d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_3e
    const-string v7, "html"

    .line 319
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 320
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 323
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Attribute;

    .line 324
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 325
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_d

    .line 327
    :cond_40
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$800()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 328
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    .line 329
    :cond_41
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 330
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_42

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_f

    .line 336
    :cond_42
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 337
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 338
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Attribute;

    .line 339
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 340
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_e

    :cond_44
    :goto_f
    return v6

    :cond_45
    const-string v1, "frameset"

    .line 343
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 344
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_46

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_11

    .line 349
    :cond_46
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v4

    if-nez v4, :cond_47

    return v6

    .line 352
    :cond_47
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 353
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_48

    .line 354
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->remove()V

    .line 356
    :cond_48
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_49

    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_10

    .line 358
    :cond_49
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 359
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_4a
    :goto_11
    return v6

    .line 361
    :cond_4b
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 362
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 363
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 365
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$900()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 366
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 369
    :cond_4d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 370
    :cond_4e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1000()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 371
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 372
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 374
    :cond_4f
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 376
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 377
    :cond_50
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 378
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 379
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 382
    :cond_51
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 383
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    :cond_52
    const/4 v1, 0x1

    .line 385
    invoke-virtual {v2, v3, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForm(Lorg/jsoup/parser/Token$StartTag;Z)Lorg/jsoup/nodes/FormElement;

    goto/16 :goto_17

    :cond_53
    const/4 v1, 0x1

    .line 386
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 387
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 389
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_12
    if-lez v5, :cond_56

    .line 390
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 391
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1100()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 392
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_13

    .line 395
    :cond_54
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$700()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_13

    :cond_55
    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    .line 398
    :cond_56
    :goto_13
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 399
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 401
    :cond_57
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_58
    const-string v1, "plaintext"

    .line 402
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 403
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 404
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 406
    :cond_59
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 407
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_0

    :cond_5a
    const-string v1, "button"

    .line 408
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 409
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 411
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 412
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 413
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    .line 415
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 416
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 417
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 419
    :cond_5c
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1200()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 420
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 421
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 422
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    :cond_5d
    const-string v1, "nobr"

    .line 423
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 424
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 425
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 426
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 427
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 428
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 430
    :cond_5e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 431
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 432
    :cond_5f
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1300()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 433
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 434
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 435
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 436
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_60
    const-string v1, "table"

    .line 437
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 438
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v1, v4, :cond_61

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 439
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 441
    :cond_61
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 442
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 443
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_62
    const-string v1, "input"

    .line 444
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 445
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 446
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v3, "type"

    .line 447
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 449
    :cond_63
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1400()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 450
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_64
    const-string v1, "hr"

    .line 451
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 452
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 453
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 455
    :cond_65
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 456
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    :cond_66
    const-string v5, "image"

    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    const-string v1, "svg"

    .line 458
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_67

    const-string v1, "img"

    .line 459
    invoke-virtual {v3, v1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 461
    :cond_67
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_68
    const-string v5, "isindex"

    .line 462
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 464
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v4

    if-eqz v4, :cond_69

    return v6

    .line 468
    :cond_69
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v4}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 469
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 470
    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 471
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/FormElement;

    move-result-object v4

    .line 472
    iget-object v6, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v6, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 474
    :cond_6a
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    const-string v4, "label"

    .line 475
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 477
    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "prompt"

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v5, "prompt"

    .line 478
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_6b
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 481
    :goto_14
    new-instance v5, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v5}, Lorg/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v5, v4}, Lorg/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lorg/jsoup/parser/Token$Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 484
    new-instance v4, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v4}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 485
    iget-object v3, v3, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 486
    invoke-virtual {v5}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1500()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 487
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_15

    :cond_6d
    const-string v3, "name"

    const-string v5, "isindex"

    .line 489
    invoke-virtual {v4, v3, v5}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "input"

    .line 490
    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    const-string v3, "label"

    .line 491
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 492
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 493
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_6e
    const-string v1, "textarea"

    .line 494
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 495
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 497
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 499
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 500
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_6f
    const-string v1, "xmp"

    .line 501
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 502
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 503
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 505
    :cond_70
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 506
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 507
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_71
    const-string v1, "iframe"

    .line 508
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 509
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 510
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_72
    const-string v1, "noembed"

    .line 511
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 513
    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    :cond_73
    const-string v1, "select"

    .line 514
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 515
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 516
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 517
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v1

    .line 520
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_16

    .line 523
    :cond_74
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 521
    :cond_75
    :goto_16
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 524
    :cond_76
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1600()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 525
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "option"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "option"

    .line 526
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 527
    :cond_77
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 528
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 529
    :cond_78
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1700()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, "ruby"

    .line 530
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 532
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 533
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 534
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 536
    :cond_79
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    :cond_7a
    const-string v1, "math"

    .line 538
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 539
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 541
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 542
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    :cond_7b
    const-string v1, "svg"

    .line 543
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 544
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 546
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 547
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    invoke-virtual {v1}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    .line 548
    :cond_7c
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->access$1800()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/jsoup/helper/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 549
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 552
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 553
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 269
    :cond_7e
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 265
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto/16 :goto_0

    :goto_17
    return v1
.end method
