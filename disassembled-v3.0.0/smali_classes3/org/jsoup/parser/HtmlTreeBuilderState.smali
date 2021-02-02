.class abstract enum Lorg/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Enum;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/HtmlTreeBuilderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private static nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    const/4 v1, 0x0

    const-string v2, "Initial"

    invoke-direct {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 36
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    const/4 v2, 0x1

    const-string v3, "BeforeHtml"

    invoke-direct {v0, v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 65
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    const/4 v3, 0x2

    const-string v4, "BeforeHead"

    invoke-direct {v0, v4, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 93
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    const/4 v4, 0x3

    const-string v5, "InHead"

    invoke-direct {v0, v5, v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 165
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    const/4 v5, 0x4

    const-string v6, "InHeadNoscript"

    invoke-direct {v0, v6, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 194
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    const/4 v6, 0x5

    const-string v7, "AfterHead"

    invoke-direct {v0, v7, v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 245
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    const/4 v7, 0x6

    const-string v8, "InBody"

    invoke-direct {v0, v8, v7}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 784
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    const/4 v8, 0x7

    const-string v9, "Text"

    invoke-direct {v0, v9, v8}, Lorg/jsoup/parser/HtmlTreeBuilderState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 803
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    const/16 v9, 0x8

    const-string v10, "InTable"

    invoke-direct {v0, v10, v9}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 903
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    const/16 v10, 0x9

    const-string v11, "InTableText"

    invoke-direct {v0, v11, v10}, Lorg/jsoup/parser/HtmlTreeBuilderState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 940
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    const/16 v11, 0xa

    const-string v12, "InCaption"

    invoke-direct {v0, v12, v11}, Lorg/jsoup/parser/HtmlTreeBuilderState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 975
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    const/16 v12, 0xb

    const-string v13, "InColumnGroup"

    invoke-direct {v0, v13, v12}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1030
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    const/16 v13, 0xc

    const-string v14, "InTableBody"

    invoke-direct {v0, v14, v13}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1090
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    const/16 v14, 0xd

    const-string v15, "InRow"

    invoke-direct {v0, v15, v14}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1151
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    const/16 v15, 0xe

    const-string v14, "InCell"

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1208
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    const-string v14, "InSelect"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1296
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    const-string v14, "InSelectInTable"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1314
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    const-string v14, "AfterBody"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1342
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    const-string v14, "InFrameset"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1388
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    const-string v14, "AfterFrameset"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1412
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    const-string v14, "AfterAfterBody"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1428
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    const-string v14, "AfterAfterFrameset"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1445
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    const-string v14, "ForeignContent"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v0, 0x17

    .line 11
    new-array v0, v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    sget-object v14, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v14, v0, v1

    sget-object v14, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v14, v0, v2

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v5

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v6

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v7

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v8

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v9

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v10

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v11

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v12

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v13

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v3, 0x16

    aput-object v2, v0, v3

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1452
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Token;)Z
    .locals 0

    .line 11
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;)Z
    .locals 0

    .line 11
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method private static handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 1

    .line 1482
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1483
    iget-object p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1484
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 1485
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return-void
.end method

.method private static handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 1

    .line 1475
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1476
    iget-object p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1477
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 1478
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return-void
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1466
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1467
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1468
    invoke-static {v2}, Lorg/jsoup/helper/StringUtil;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isWhitespace(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 1457
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p0

    .line 1459
    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 11
    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 11
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/HtmlTreeBuilderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method


# virtual methods
.method abstract process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
.end method
