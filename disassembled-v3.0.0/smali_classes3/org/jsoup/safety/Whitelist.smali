.class public Lorg/jsoup/safety/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Whitelist$TypedValue;,
        Lorg/jsoup/safety/Whitelist$Protocol;,
        Lorg/jsoup/safety/Whitelist$AttributeValue;,
        Lorg/jsoup/safety/Whitelist$AttributeKey;,
        Lorg/jsoup/safety/Whitelist$TagName;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            "Lorg/jsoup/safety/Whitelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Whitelist$AttributeKey;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Whitelist;
    .locals 13

    .line 108
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v1, v4

    const-string v5, "blockquote"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    const-string v8, "br"

    aput-object v8, v1, v7

    const/4 v8, 0x4

    const-string v9, "cite"

    aput-object v9, v1, v8

    const/4 v10, 0x5

    const-string v11, "code"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "dd"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "dl"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "dt"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "em"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "i"

    aput-object v11, v1, v10

    const/16 v10, 0xb

    const-string v11, "li"

    aput-object v11, v1, v10

    const/16 v10, 0xc

    const-string v11, "ol"

    aput-object v11, v1, v10

    const/16 v10, 0xd

    const-string v11, "p"

    aput-object v11, v1, v10

    const/16 v10, 0xe

    const-string v11, "pre"

    aput-object v11, v1, v10

    const-string v10, "q"

    const/16 v11, 0xf

    aput-object v10, v1, v11

    const/16 v11, 0x10

    const-string v12, "small"

    aput-object v12, v1, v11

    const/16 v11, 0x11

    const-string v12, "span"

    aput-object v12, v1, v11

    const/16 v11, 0x12

    const-string v12, "strike"

    aput-object v12, v1, v11

    const/16 v11, 0x13

    const-string v12, "strong"

    aput-object v12, v1, v11

    const/16 v11, 0x14

    const-string v12, "sub"

    aput-object v12, v1, v11

    const/16 v11, 0x15

    const-string v12, "sup"

    aput-object v12, v1, v11

    const/16 v11, 0x16

    const-string v12, "u"

    aput-object v12, v1, v11

    const/16 v11, 0x17

    const-string v12, "ul"

    aput-object v12, v1, v11

    .line 109
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v11, "href"

    aput-object v11, v1, v3

    .line 114
    invoke-virtual {v0, v2, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v9, v1, v3

    .line 115
    invoke-virtual {v0, v5, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v9, v1, v3

    .line 116
    invoke-virtual {v0, v10, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "ftp"

    aput-object v8, v1, v3

    const-string v8, "http"

    aput-object v8, v1, v4

    const-string v10, "https"

    aput-object v10, v1, v6

    const-string v12, "mailto"

    aput-object v12, v1, v7

    .line 118
    invoke-virtual {v0, v2, v11, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v10, v1, v4

    .line 119
    invoke-virtual {v0, v5, v9, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v10, v1, v4

    .line 120
    invoke-virtual {v0, v9, v9, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const-string v1, "rel"

    const-string v3, "nofollow"

    .line 122
    invoke-virtual {v0, v2, v1, v3}, Lorg/jsoup/safety/Whitelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Whitelist;
    .locals 9

    .line 134
    invoke-static {}, Lorg/jsoup/safety/Whitelist;->basic()Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "img"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 135
    invoke-virtual {v0, v2}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "align"

    aput-object v5, v2, v4

    const-string v5, "alt"

    aput-object v5, v2, v1

    const/4 v5, 0x2

    const-string v6, "height"

    aput-object v6, v2, v5

    const-string v6, "src"

    const/4 v7, 0x3

    aput-object v6, v2, v7

    const/4 v7, 0x4

    const-string v8, "title"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "width"

    aput-object v8, v2, v7

    .line 136
    invoke-virtual {v0, v3, v2}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v2, v4

    const-string v4, "https"

    aput-object v4, v2, v1

    .line 137
    invoke-virtual {v0, v3, v6, v2}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method private isValidAnchor(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#"

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static none()Lorg/jsoup/safety/Whitelist;
    .locals 1

    .line 77
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Whitelist;
    .locals 16

    .line 152
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "b"

    aput-object v5, v1, v4

    const-string v5, "blockquote"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v7, 0x3

    const-string v8, "br"

    aput-object v8, v1, v7

    const/4 v8, 0x4

    const-string v9, "caption"

    aput-object v9, v1, v8

    const/4 v9, 0x5

    const-string v10, "cite"

    aput-object v10, v1, v9

    const/4 v11, 0x6

    const-string v12, "code"

    aput-object v12, v1, v11

    const/4 v12, 0x7

    const-string v13, "col"

    aput-object v13, v1, v12

    const/16 v12, 0x8

    const-string v13, "colgroup"

    aput-object v13, v1, v12

    const/16 v12, 0x9

    const-string v13, "dd"

    aput-object v13, v1, v12

    const/16 v12, 0xa

    const-string v13, "div"

    aput-object v13, v1, v12

    const/16 v12, 0xb

    const-string v13, "dl"

    aput-object v13, v1, v12

    const/16 v12, 0xc

    const-string v13, "dt"

    aput-object v13, v1, v12

    const/16 v12, 0xd

    const-string v13, "em"

    aput-object v13, v1, v12

    const/16 v12, 0xe

    const-string v13, "h1"

    aput-object v13, v1, v12

    const/16 v12, 0xf

    const-string v13, "h2"

    aput-object v13, v1, v12

    const/16 v12, 0x10

    const-string v13, "h3"

    aput-object v13, v1, v12

    const/16 v12, 0x11

    const-string v13, "h4"

    aput-object v13, v1, v12

    const/16 v12, 0x12

    const-string v13, "h5"

    aput-object v13, v1, v12

    const/16 v12, 0x13

    const-string v13, "h6"

    aput-object v13, v1, v12

    const/16 v12, 0x14

    const-string v13, "i"

    aput-object v13, v1, v12

    const-string v12, "img"

    const/16 v13, 0x15

    aput-object v12, v1, v13

    const/16 v13, 0x16

    const-string v14, "li"

    aput-object v14, v1, v13

    const/16 v13, 0x17

    const-string v14, "ol"

    aput-object v14, v1, v13

    const/16 v13, 0x18

    const-string v14, "p"

    aput-object v14, v1, v13

    const/16 v13, 0x19

    const-string v14, "pre"

    aput-object v14, v1, v13

    const-string v13, "q"

    const/16 v14, 0x1a

    aput-object v13, v1, v14

    const/16 v14, 0x1b

    const-string v15, "small"

    aput-object v15, v1, v14

    const/16 v14, 0x1c

    const-string v15, "span"

    aput-object v15, v1, v14

    const/16 v14, 0x1d

    const-string v15, "strike"

    aput-object v15, v1, v14

    const/16 v14, 0x1e

    const-string v15, "strong"

    aput-object v15, v1, v14

    const/16 v14, 0x1f

    const-string v15, "sub"

    aput-object v15, v1, v14

    const/16 v14, 0x20

    const-string v15, "sup"

    aput-object v15, v1, v14

    const/16 v14, 0x21

    const-string v15, "table"

    aput-object v15, v1, v14

    const/16 v14, 0x22

    const-string v15, "tbody"

    aput-object v15, v1, v14

    const/16 v14, 0x23

    const-string v15, "td"

    aput-object v15, v1, v14

    const/16 v14, 0x24

    const-string v15, "tfoot"

    aput-object v15, v1, v14

    const/16 v14, 0x25

    const-string v15, "th"

    aput-object v15, v1, v14

    const/16 v14, 0x26

    const-string v15, "thead"

    aput-object v15, v1, v14

    const/16 v14, 0x27

    const-string v15, "tr"

    aput-object v15, v1, v14

    const/16 v14, 0x28

    const-string v15, "u"

    aput-object v15, v1, v14

    const/16 v14, 0x29

    const-string v15, "ul"

    aput-object v15, v1, v14

    .line 153
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v14, "href"

    aput-object v14, v1, v3

    const-string v14, "title"

    aput-object v14, v1, v4

    .line 160
    invoke-virtual {v0, v2, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v3

    .line 161
    invoke-virtual {v0, v5, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v14, "span"

    aput-object v14, v1, v3

    const-string v14, "width"

    aput-object v14, v1, v4

    const-string v15, "col"

    .line 162
    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "span"

    aput-object v15, v1, v3

    aput-object v14, v1, v4

    const-string v15, "colgroup"

    .line 163
    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/String;

    const-string v15, "align"

    aput-object v15, v1, v3

    const-string v15, "alt"

    aput-object v15, v1, v4

    const-string v15, "height"

    aput-object v15, v1, v6

    const-string v15, "src"

    aput-object v15, v1, v7

    const-string v15, "title"

    aput-object v15, v1, v8

    aput-object v14, v1, v9

    .line 164
    invoke-virtual {v0, v12, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "start"

    aput-object v15, v1, v3

    const-string v15, "type"

    aput-object v15, v1, v4

    const-string v15, "ol"

    .line 165
    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v3

    .line 166
    invoke-virtual {v0, v13, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v15, "summary"

    aput-object v15, v1, v3

    aput-object v14, v1, v4

    const-string v15, "table"

    .line 167
    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    const-string v15, "abbr"

    aput-object v15, v1, v3

    const-string v15, "axis"

    aput-object v15, v1, v4

    const-string v15, "colspan"

    aput-object v15, v1, v6

    const-string v15, "rowspan"

    aput-object v15, v1, v7

    aput-object v14, v1, v8

    const-string v15, "td"

    .line 168
    invoke-virtual {v0, v15, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/String;

    const-string v11, "abbr"

    aput-object v11, v1, v3

    const-string v11, "axis"

    aput-object v11, v1, v4

    const-string v11, "colspan"

    aput-object v11, v1, v6

    const-string v11, "rowspan"

    aput-object v11, v1, v7

    const-string v11, "scope"

    aput-object v11, v1, v8

    aput-object v14, v1, v9

    const-string v9, "th"

    .line 169
    invoke-virtual {v0, v9, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v9, "type"

    aput-object v9, v1, v3

    const-string v9, "ul"

    .line 172
    invoke-virtual {v0, v9, v1}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "ftp"

    aput-object v8, v1, v3

    const-string v8, "http"

    aput-object v8, v1, v4

    const-string v9, "https"

    aput-object v9, v1, v6

    const-string v11, "mailto"

    aput-object v11, v1, v7

    const-string v7, "href"

    .line 174
    invoke-virtual {v0, v2, v7, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    .line 175
    invoke-virtual {v0, v5, v10, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    .line 176
    invoke-virtual {v0, v10, v10, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    const-string v2, "src"

    .line 177
    invoke-virtual {v0, v12, v2, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    .line 178
    invoke-virtual {v0, v13, v10, v1}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Whitelist;
    .locals 4

    .line 87
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Whitelist;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    .line 88
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object v0

    return-object v0
.end method

.method private testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Attribute;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Whitelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .line 517
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 520
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    if-nez v0, :cond_1

    .line 521
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 523
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jsoup/safety/Whitelist$Protocol;

    .line 524
    invoke-virtual {p3}, Lorg/jsoup/safety/Whitelist$Protocol;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "#"

    .line 526
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 527
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Whitelist;->isValidAnchor(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 534
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 4

    .line 252
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 253
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 254
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "No attributes supplied."

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 256
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 260
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 261
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 262
    invoke-static {v3}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    :cond_2
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 265
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 266
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 268
    :cond_3
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 1

    .line 331
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 332
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 333
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 335
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 336
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object p2

    .line 339
    invoke-static {p3}, Lorg/jsoup/safety/Whitelist$AttributeValue;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeValue;

    move-result-object p3

    .line 341
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 411
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 412
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 413
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 415
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 416
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object p2

    .line 420
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 423
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 424
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 426
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_1

    .line 429
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 430
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 432
    :goto_1
    array-length p2, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    .line 433
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 434
    invoke-static {v1}, Lorg/jsoup/safety/Whitelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$Protocol;

    move-result-object v1

    .line 435
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 4

    .line 205
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 208
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {v2}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 3

    .line 548
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 549
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 550
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 552
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/safety/Whitelist$AttributeKey;

    invoke-virtual {v2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/safety/Whitelist$AttributeValue;

    invoke-virtual {v1}, Lorg/jsoup/safety/Whitelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .locals 5

    .line 496
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 497
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 500
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 501
    iget-object p1, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 504
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, p2, p3, p1}, Lorg/jsoup/safety/Whitelist;->testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    const-string v0, ":all"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 390
    iput-boolean p1, p0, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks:Z

    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 5

    .line 289
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 290
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 291
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "No attributes supplied."

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 293
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 295
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 296
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 297
    invoke-static {v4}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_1
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 300
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 301
    invoke-interface {p2, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 303
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 304
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, ":all"

    .line 306
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 307
    iget-object p1, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/safety/Whitelist$TagName;

    .line 308
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 309
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 311
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 1

    .line 359
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 360
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 362
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object p2

    .line 365
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 366
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 369
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 5

    .line 452
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 453
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 454
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 456
    invoke-static {p1}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object p1

    .line 457
    invoke-static {p2}, Lorg/jsoup/safety/Whitelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$AttributeKey;

    move-result-object p2

    .line 459
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 461
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 463
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 464
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 465
    invoke-static {v4}, Lorg/jsoup/safety/Whitelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$Protocol;

    move-result-object v4

    .line 466
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 470
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 472
    iget-object p2, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 4

    .line 221
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 223
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 224
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 225
    invoke-static {v2}, Lorg/jsoup/safety/Whitelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Whitelist$TagName;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->tagNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->attributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist;->protocols:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
