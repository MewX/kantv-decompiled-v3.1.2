.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canContainBlock:Z

.field private canContainInline:Z

.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    const/16 v0, 0x40

    .line 235
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "head"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "body"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "frameset"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "script"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "noscript"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "style"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "meta"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "link"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "title"

    aput-object v11, v0, v10

    const/16 v11, 0xa

    const-string v12, "frame"

    aput-object v12, v0, v11

    const/16 v12, 0xb

    const-string v13, "noframes"

    aput-object v13, v0, v12

    const/16 v13, 0xc

    const-string v14, "section"

    aput-object v14, v0, v13

    const/16 v14, 0xd

    const-string v15, "nav"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "aside"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "hgroup"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "header"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "footer"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "p"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "h1"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "h2"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "h3"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "h4"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "h5"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "h6"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "ul"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "ol"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "pre"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "div"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "blockquote"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "hr"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "address"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "figure"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "figcaption"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "form"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "fieldset"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "ins"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "del"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "s"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "dl"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "dt"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "dd"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "li"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "table"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "caption"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "thead"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "tfoot"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "tbody"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "colgroup"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    const-string v17, "col"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "tr"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "th"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "td"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "video"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "audio"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "canvas"

    aput-object v17, v0, v16

    const/16 v16, 0x38

    const-string v17, "details"

    aput-object v17, v0, v16

    const/16 v16, 0x39

    const-string v17, "menu"

    aput-object v17, v0, v16

    const/16 v16, 0x3a

    const-string v17, "plaintext"

    aput-object v17, v0, v16

    const/16 v16, 0x3b

    const-string v17, "template"

    aput-object v17, v0, v16

    const/16 v16, 0x3c

    const-string v17, "article"

    aput-object v17, v0, v16

    const/16 v16, 0x3d

    const-string v17, "main"

    aput-object v17, v0, v16

    const/16 v16, 0x3e

    const-string v17, "svg"

    aput-object v17, v0, v16

    const/16 v16, 0x3f

    const-string v17, "math"

    aput-object v17, v0, v16

    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    const/16 v0, 0x41

    .line 243
    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "object"

    aput-object v16, v0, v1

    const-string v16, "base"

    aput-object v16, v0, v2

    const-string v16, "font"

    aput-object v16, v0, v3

    const-string v16, "tt"

    aput-object v16, v0, v4

    const-string v16, "i"

    aput-object v16, v0, v5

    const-string v16, "b"

    aput-object v16, v0, v6

    const-string v16, "u"

    aput-object v16, v0, v7

    const-string v16, "big"

    aput-object v16, v0, v8

    const-string v16, "small"

    aput-object v16, v0, v9

    const-string v16, "em"

    aput-object v16, v0, v10

    const-string v16, "strong"

    aput-object v16, v0, v11

    const-string v16, "dfn"

    aput-object v16, v0, v12

    const-string v16, "code"

    aput-object v16, v0, v13

    const-string v16, "samp"

    aput-object v16, v0, v14

    const-string v16, "kbd"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "var"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "cite"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "abbr"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "time"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "acronym"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "mark"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "ruby"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "rt"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "rp"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "a"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "img"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "br"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "wbr"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "map"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "q"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "sub"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "sup"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "bdo"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "iframe"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "embed"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "span"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "input"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "select"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "textarea"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "label"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "button"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "optgroup"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "option"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "legend"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "datalist"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "keygen"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "output"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "progress"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "meter"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    const-string v17, "area"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "param"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "source"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "track"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "summary"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "command"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "device"

    aput-object v17, v0, v16

    const/16 v16, 0x38

    const-string v17, "area"

    aput-object v17, v0, v16

    const/16 v16, 0x39

    const-string v17, "basefont"

    aput-object v17, v0, v16

    const/16 v16, 0x3a

    const-string v17, "bgsound"

    aput-object v17, v0, v16

    const/16 v16, 0x3b

    const-string v17, "menuitem"

    aput-object v17, v0, v16

    const/16 v16, 0x3c

    const-string v17, "param"

    aput-object v17, v0, v16

    const/16 v16, 0x3d

    const-string v17, "source"

    aput-object v17, v0, v16

    const/16 v16, 0x3e

    const-string v17, "track"

    aput-object v17, v0, v16

    const/16 v16, 0x3f

    const-string v17, "data"

    aput-object v17, v0, v16

    const/16 v16, 0x40

    const-string v17, "bdi"

    aput-object v17, v0, v16

    sput-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    const/16 v0, 0x15

    .line 251
    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "meta"

    aput-object v16, v0, v1

    const-string v16, "link"

    aput-object v16, v0, v2

    const-string v16, "base"

    aput-object v16, v0, v3

    const-string v16, "frame"

    aput-object v16, v0, v4

    const-string v16, "img"

    aput-object v16, v0, v5

    const-string v16, "br"

    aput-object v16, v0, v6

    const-string v16, "wbr"

    aput-object v16, v0, v7

    const-string v16, "embed"

    aput-object v16, v0, v8

    const-string v16, "hr"

    aput-object v16, v0, v9

    const-string v16, "input"

    aput-object v16, v0, v10

    const-string v16, "keygen"

    aput-object v16, v0, v11

    const-string v16, "col"

    aput-object v16, v0, v12

    const-string v16, "command"

    aput-object v16, v0, v13

    const-string v16, "device"

    aput-object v16, v0, v14

    const-string v16, "area"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "basefont"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "bgsound"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "menuitem"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "param"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "source"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "track"

    aput-object v17, v0, v16

    sput-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    const/16 v0, 0x13

    .line 255
    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "title"

    aput-object v16, v0, v1

    const-string v16, "a"

    aput-object v16, v0, v2

    const-string v16, "p"

    aput-object v16, v0, v3

    const-string v16, "h1"

    aput-object v16, v0, v4

    const-string v16, "h2"

    aput-object v16, v0, v5

    const-string v16, "h3"

    aput-object v16, v0, v6

    const-string v16, "h4"

    aput-object v16, v0, v7

    const-string v16, "h5"

    aput-object v16, v0, v8

    const-string v16, "h6"

    aput-object v16, v0, v9

    const-string v16, "pre"

    aput-object v16, v0, v10

    const-string v10, "address"

    aput-object v10, v0, v11

    const-string v10, "li"

    aput-object v10, v0, v12

    const-string v10, "th"

    aput-object v10, v0, v13

    const-string v10, "td"

    aput-object v10, v0, v14

    const-string v10, "script"

    aput-object v10, v0, v15

    const/16 v10, 0xf

    const-string v11, "style"

    aput-object v11, v0, v10

    const/16 v10, 0x10

    const-string v11, "ins"

    aput-object v11, v0, v10

    const/16 v10, 0x11

    const-string v11, "del"

    aput-object v11, v0, v10

    const/16 v10, 0x12

    const-string v11, "s"

    aput-object v11, v0, v10

    sput-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 259
    new-array v0, v5, [Ljava/lang/String;

    const-string v10, "pre"

    aput-object v10, v0, v1

    const-string v10, "plaintext"

    aput-object v10, v0, v2

    const-string v10, "title"

    aput-object v10, v0, v3

    const-string v10, "textarea"

    aput-object v10, v0, v4

    sput-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 264
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "button"

    aput-object v9, v0, v1

    const-string v9, "fieldset"

    aput-object v9, v0, v2

    const-string v9, "input"

    aput-object v9, v0, v3

    const-string v9, "keygen"

    aput-object v9, v0, v4

    const-string v9, "object"

    aput-object v9, v0, v5

    const-string v9, "output"

    aput-object v9, v0, v6

    const-string v9, "select"

    aput-object v9, v0, v7

    const-string v7, "textarea"

    aput-object v7, v0, v8

    sput-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 267
    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "input"

    aput-object v6, v0, v1

    const-string v6, "keygen"

    aput-object v6, v0, v2

    const-string v6, "object"

    aput-object v6, v0, v3

    const-string v3, "select"

    aput-object v3, v0, v4

    const-string v3, "textarea"

    aput-object v3, v0, v5

    sput-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 273
    sget-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 274
    new-instance v6, Lorg/jsoup/parser/Tag;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v6}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_0
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 278
    new-instance v6, Lorg/jsoup/parser/Tag;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 279
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 280
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 281
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 282
    invoke-static {v6}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 286
    :cond_1
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 287
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 288
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 289
    iput-boolean v1, v5, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 290
    iput-boolean v1, v5, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 291
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 294
    :cond_2
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 295
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 296
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 297
    iput-boolean v1, v5, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 300
    :cond_3
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 301
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 302
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 303
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 306
    :cond_4
    sget-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 307
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 308
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 309
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 312
    :cond_5
    sget-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    array-length v3, v0

    :goto_6
    if-ge v1, v3, :cond_6

    aget-object v4, v0, v1

    .line 313
    sget-object v5, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/parser/Tag;

    .line 314
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 315
    iput-boolean v2, v4, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 18
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 19
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 20
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 25
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 28
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1

    .line 161
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static register(Lorg/jsoup/parser/Tag;)V
    .locals 2

    .line 320
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 79
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p0, v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 51
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 57
    sget-object p1, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/jsoup/parser/Tag;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 62
    iput-boolean p0, v0, Lorg/jsoup/parser/Tag;->isBlock:Z

    const/4 p0, 0x1

    .line 63
    iput-boolean p0, v0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public canContainBlock()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 197
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 199
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 201
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 202
    :cond_2
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 203
    :cond_3
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 204
    :cond_4
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 205
    :cond_5
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 206
    :cond_6
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 207
    :cond_7
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 208
    :cond_8
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 209
    :cond_9
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formList:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 210
    :cond_a
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean p1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-ne v1, p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isBlock()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isFormSubmittable()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 151
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
