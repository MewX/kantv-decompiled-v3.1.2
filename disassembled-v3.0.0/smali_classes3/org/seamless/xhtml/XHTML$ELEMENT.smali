.class public final enum Lorg/seamless/xhtml/XHTML$ELEMENT;
.super Ljava/lang/Enum;
.source "XHTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/xhtml/XHTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ELEMENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/seamless/xhtml/XHTML$ELEMENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum a:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum body:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dd:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum div:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dl:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum dt:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum form:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h1:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h2:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h3:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h4:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h5:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum h6:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum head:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum html:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum img:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum input:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum li:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum link:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum object:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum ol:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum option:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum p:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum pre:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum script:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum select:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum span:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum style:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum table:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tbody:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum td:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tfoot:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum th:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum thead:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum title:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum tr:Lorg/seamless/xhtml/XHTML$ELEMENT;

.field public static final enum ul:Lorg/seamless/xhtml/XHTML$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 42
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v1, 0x0

    const-string v2, "html"

    invoke-direct {v0, v2, v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->html:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v2, 0x1

    const-string v3, "head"

    invoke-direct {v0, v3, v2}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->head:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v3, 0x2

    const-string v4, "title"

    invoke-direct {v0, v4, v3}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->title:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v4, 0x3

    const-string v5, "meta"

    invoke-direct {v0, v5, v4}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v5, 0x4

    const-string v6, "link"

    invoke-direct {v0, v6, v5}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->link:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v6, 0x5

    const-string v7, "script"

    invoke-direct {v0, v7, v6}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->script:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v7, 0x6

    const-string v8, "style"

    invoke-direct {v0, v8, v7}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->style:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 43
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/4 v8, 0x7

    const-string v9, "body"

    invoke-direct {v0, v9, v8}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->body:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v9, 0x8

    const-string v10, "div"

    invoke-direct {v0, v10, v9}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->div:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v10, 0x9

    const-string v11, "span"

    invoke-direct {v0, v11, v10}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->span:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v11, 0xa

    const-string v12, "p"

    invoke-direct {v0, v12, v11}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->p:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v12, 0xb

    const-string v13, "object"

    invoke-direct {v0, v13, v12}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->object:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v13, 0xc

    const-string v14, "a"

    invoke-direct {v0, v14, v13}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->a:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v14, 0xd

    const-string v15, "img"

    invoke-direct {v0, v15, v14}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->img:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v15, 0xe

    const-string v14, "pre"

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->pre:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 44
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h1"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h1:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h2"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h2:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h3"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h3:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h4"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h4:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h5"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h5:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "h6"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->h6:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 45
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "table"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->table:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "thead"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->thead:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "tfoot"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->tfoot:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "tbody"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->tbody:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "tr"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->tr:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "th"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->th:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "td"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->td:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 46
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "ul"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->ul:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "ol"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->ol:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "li"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->li:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "dl"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->dl:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "dt"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->dt:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "dd"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->dd:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 47
    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "form"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->form:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "input"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->input:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "select"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->select:Lorg/seamless/xhtml/XHTML$ELEMENT;

    new-instance v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    const-string v14, "option"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lorg/seamless/xhtml/XHTML$ELEMENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->option:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v0, 0x26

    .line 41
    new-array v0, v0, [Lorg/seamless/xhtml/XHTML$ELEMENT;

    sget-object v14, Lorg/seamless/xhtml/XHTML$ELEMENT;->html:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v14, v0, v1

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->head:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->title:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v3

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v4

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->link:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v5

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->script:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v6

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->style:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v7

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->body:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v8

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->div:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v9

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->span:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v10

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->p:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v11

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->object:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v12

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->a:Lorg/seamless/xhtml/XHTML$ELEMENT;

    aput-object v1, v0, v13

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->img:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->pre:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h1:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h2:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h3:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h4:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h5:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->h6:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->table:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->thead:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->tfoot:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->tbody:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->tr:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->th:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->td:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->ul:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->ol:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->li:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->dl:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->dt:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->dd:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->form:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->input:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->select:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->option:Lorg/seamless/xhtml/XHTML$ELEMENT;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .line 41
    const-class v0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-object p0
.end method

.method public static values()[Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .line 41
    sget-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->$VALUES:[Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v0}, [Lorg/seamless/xhtml/XHTML$ELEMENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/xhtml/XHTML$ELEMENT;

    return-object v0
.end method
