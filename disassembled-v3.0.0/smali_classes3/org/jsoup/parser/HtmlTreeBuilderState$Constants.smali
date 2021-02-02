.class final Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Constants"
.end annotation


# static fields
.field private static final DdDt:[Ljava/lang/String;

.field private static final Formatters:[Ljava/lang/String;

.field private static final Headings:[Ljava/lang/String;

.field private static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field private static final InBodyEndClosers:[Ljava/lang/String;

.field private static final InBodyEndTableFosters:[Ljava/lang/String;

.field private static final InBodyStartApplets:[Ljava/lang/String;

.field private static final InBodyStartDrop:[Ljava/lang/String;

.field private static final InBodyStartEmptyFormatters:[Ljava/lang/String;

.field private static final InBodyStartInputAttribs:[Ljava/lang/String;

.field private static final InBodyStartLiBreakers:[Ljava/lang/String;

.field private static final InBodyStartMedia:[Ljava/lang/String;

.field private static final InBodyStartOptions:[Ljava/lang/String;

.field private static final InBodyStartPClosers:[Ljava/lang/String;

.field private static final InBodyStartPreListing:[Ljava/lang/String;

.field private static final InBodyStartRuby:[Ljava/lang/String;

.field private static final InBodyStartToHead:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xa

    .line 1491
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "base"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "basefont"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "bgsound"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "command"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "link"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "meta"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "noframes"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "script"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "style"

    aput-object v11, v1, v10

    const/16 v11, 0x9

    const-string v12, "title"

    aput-object v12, v1, v11

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    const/16 v1, 0x16

    .line 1492
    new-array v1, v1, [Ljava/lang/String;

    const-string v12, "address"

    aput-object v12, v1, v2

    const-string v13, "article"

    aput-object v13, v1, v3

    const-string v13, "aside"

    aput-object v13, v1, v4

    const-string v13, "blockquote"

    aput-object v13, v1, v5

    const-string v13, "center"

    aput-object v13, v1, v6

    const-string v13, "details"

    aput-object v13, v1, v7

    const-string v13, "dir"

    aput-object v13, v1, v8

    const-string v13, "div"

    aput-object v13, v1, v9

    const-string v14, "dl"

    aput-object v14, v1, v10

    const-string v14, "fieldset"

    aput-object v14, v1, v11

    const-string v14, "figcaption"

    aput-object v14, v1, v0

    const/16 v14, 0xb

    const-string v15, "figure"

    aput-object v15, v1, v14

    const/16 v15, 0xc

    const-string v16, "footer"

    aput-object v16, v1, v15

    const/16 v16, 0xd

    const-string v17, "header"

    aput-object v17, v1, v16

    const/16 v16, 0xe

    const-string v17, "hgroup"

    aput-object v17, v1, v16

    const/16 v16, 0xf

    const-string v17, "menu"

    aput-object v17, v1, v16

    const/16 v16, 0x10

    const-string v17, "nav"

    aput-object v17, v1, v16

    const/16 v16, 0x11

    const-string v17, "ol"

    aput-object v17, v1, v16

    const/16 v16, 0x12

    const-string v17, "p"

    aput-object v17, v1, v16

    const/16 v16, 0x13

    const-string v17, "section"

    aput-object v17, v1, v16

    const/16 v16, 0x14

    const-string v17, "summary"

    aput-object v17, v1, v16

    const/16 v16, 0x15

    const-string v17, "ul"

    aput-object v17, v1, v16

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 1495
    new-array v1, v8, [Ljava/lang/String;

    const-string v16, "h1"

    aput-object v16, v1, v2

    const-string v16, "h2"

    aput-object v16, v1, v3

    const-string v16, "h3"

    aput-object v16, v1, v4

    const-string v16, "h4"

    aput-object v16, v1, v5

    const-string v16, "h5"

    aput-object v16, v1, v6

    const-string v16, "h6"

    aput-object v16, v1, v7

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 1496
    new-array v1, v4, [Ljava/lang/String;

    const-string v16, "pre"

    aput-object v16, v1, v2

    const-string v16, "listing"

    aput-object v16, v1, v3

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPreListing:[Ljava/lang/String;

    .line 1497
    new-array v1, v5, [Ljava/lang/String;

    aput-object v12, v1, v2

    aput-object v13, v1, v3

    const-string v16, "p"

    aput-object v16, v1, v4

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 1498
    new-array v1, v4, [Ljava/lang/String;

    const-string v16, "dd"

    aput-object v16, v1, v2

    const-string v16, "dt"

    aput-object v16, v1, v3

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 1499
    new-array v1, v15, [Ljava/lang/String;

    const-string v16, "b"

    aput-object v16, v1, v2

    const-string v16, "big"

    aput-object v16, v1, v3

    const-string v16, "code"

    aput-object v16, v1, v4

    const-string v16, "em"

    aput-object v16, v1, v5

    const-string v16, "font"

    aput-object v16, v1, v6

    const-string v16, "i"

    aput-object v16, v1, v7

    const-string v16, "s"

    aput-object v16, v1, v8

    const-string v16, "small"

    aput-object v16, v1, v9

    const-string v16, "strike"

    aput-object v16, v1, v10

    const-string v16, "strong"

    aput-object v16, v1, v11

    const-string v16, "tt"

    aput-object v16, v1, v0

    const-string v16, "u"

    aput-object v16, v1, v14

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    .line 1500
    new-array v1, v5, [Ljava/lang/String;

    const-string v16, "applet"

    aput-object v16, v1, v2

    const-string v16, "marquee"

    aput-object v16, v1, v3

    const-string v16, "object"

    aput-object v16, v1, v4

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 1501
    new-array v1, v8, [Ljava/lang/String;

    const-string v16, "area"

    aput-object v16, v1, v2

    const-string v16, "br"

    aput-object v16, v1, v3

    const-string v16, "embed"

    aput-object v16, v1, v4

    const-string v16, "img"

    aput-object v16, v1, v5

    const-string v16, "keygen"

    aput-object v16, v1, v6

    const-string v16, "wbr"

    aput-object v16, v1, v7

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    .line 1502
    new-array v1, v5, [Ljava/lang/String;

    const-string v16, "param"

    aput-object v16, v1, v2

    const-string v16, "source"

    aput-object v16, v1, v3

    const-string v16, "track"

    aput-object v16, v1, v4

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 1503
    new-array v1, v5, [Ljava/lang/String;

    const-string v16, "name"

    aput-object v16, v1, v2

    const-string v16, "action"

    aput-object v16, v1, v3

    const-string v16, "prompt"

    aput-object v16, v1, v4

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    .line 1504
    new-array v1, v4, [Ljava/lang/String;

    const-string v16, "optgroup"

    aput-object v16, v1, v2

    const-string v16, "option"

    aput-object v16, v1, v3

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartOptions:[Ljava/lang/String;

    .line 1505
    new-array v1, v4, [Ljava/lang/String;

    const-string v16, "rp"

    aput-object v16, v1, v2

    const-string v16, "rt"

    aput-object v16, v1, v3

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartRuby:[Ljava/lang/String;

    .line 1506
    new-array v1, v14, [Ljava/lang/String;

    const-string v16, "caption"

    aput-object v16, v1, v2

    const-string v16, "col"

    aput-object v16, v1, v3

    const-string v16, "colgroup"

    aput-object v16, v1, v4

    const-string v16, "frame"

    aput-object v16, v1, v5

    const-string v16, "head"

    aput-object v16, v1, v6

    const-string v16, "tbody"

    aput-object v16, v1, v7

    const-string v16, "td"

    aput-object v16, v1, v8

    const-string v16, "tfoot"

    aput-object v16, v1, v9

    const-string v16, "th"

    aput-object v16, v1, v10

    const-string v16, "thead"

    aput-object v16, v1, v11

    const-string v16, "tr"

    aput-object v16, v1, v0

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    const/16 v1, 0x18

    .line 1507
    new-array v1, v1, [Ljava/lang/String;

    aput-object v12, v1, v2

    const-string v12, "article"

    aput-object v12, v1, v3

    const-string v12, "aside"

    aput-object v12, v1, v4

    const-string v12, "blockquote"

    aput-object v12, v1, v5

    const-string v12, "button"

    aput-object v12, v1, v6

    const-string v12, "center"

    aput-object v12, v1, v7

    const-string v12, "details"

    aput-object v12, v1, v8

    const-string v12, "dir"

    aput-object v12, v1, v9

    aput-object v13, v1, v10

    const-string v12, "dl"

    aput-object v12, v1, v11

    const-string v12, "fieldset"

    aput-object v12, v1, v0

    const-string v12, "figcaption"

    aput-object v12, v1, v14

    const-string v12, "figure"

    aput-object v12, v1, v15

    const/16 v12, 0xd

    const-string v13, "footer"

    aput-object v13, v1, v12

    const/16 v12, 0xe

    const-string v13, "header"

    aput-object v13, v1, v12

    const/16 v12, 0xf

    const-string v13, "hgroup"

    aput-object v13, v1, v12

    const/16 v12, 0x10

    const-string v13, "listing"

    aput-object v13, v1, v12

    const/16 v12, 0x11

    const-string v13, "menu"

    aput-object v13, v1, v12

    const/16 v12, 0x12

    const-string v13, "nav"

    aput-object v13, v1, v12

    const/16 v12, 0x13

    const-string v13, "ol"

    aput-object v13, v1, v12

    const/16 v12, 0x14

    const-string v13, "pre"

    aput-object v13, v1, v12

    const/16 v12, 0x15

    const-string v13, "section"

    aput-object v13, v1, v12

    const/16 v12, 0x16

    const-string v13, "summary"

    aput-object v13, v1, v12

    const/16 v12, 0x17

    const-string v13, "ul"

    aput-object v13, v1, v12

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    const/16 v1, 0xe

    .line 1510
    new-array v1, v1, [Ljava/lang/String;

    const-string v12, "a"

    aput-object v12, v1, v2

    const-string v12, "b"

    aput-object v12, v1, v3

    const-string v12, "big"

    aput-object v12, v1, v4

    const-string v12, "code"

    aput-object v12, v1, v5

    const-string v12, "em"

    aput-object v12, v1, v6

    const-string v12, "font"

    aput-object v12, v1, v7

    const-string v12, "i"

    aput-object v12, v1, v8

    const-string v8, "nobr"

    aput-object v8, v1, v9

    const-string v8, "s"

    aput-object v8, v1, v10

    const-string v8, "small"

    aput-object v8, v1, v11

    const-string v8, "strike"

    aput-object v8, v1, v0

    const-string v0, "strong"

    aput-object v0, v1, v14

    const-string v0, "tt"

    aput-object v0, v1, v15

    const/16 v0, 0xd

    const-string v8, "u"

    aput-object v8, v1, v0

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 1511
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "table"

    aput-object v1, v0, v2

    const-string v1, "tbody"

    aput-object v1, v0, v3

    const-string v1, "tfoot"

    aput-object v1, v0, v4

    const-string v1, "thead"

    aput-object v1, v0, v5

    const-string v1, "tr"

    aput-object v1, v0, v6

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPreListing:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartRuby:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .line 1490
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    return-object v0
.end method
