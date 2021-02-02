.class final enum Lorg/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/Token$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/Token$TokenType;

.field public static final enum Character:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum Comment:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum Doctype:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum EOF:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum EndTag:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum StartTag:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 359
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v1, 0x0

    const-string v2, "Doctype"

    invoke-direct {v0, v2, v1}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    .line 360
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    const-string v3, "StartTag"

    invoke-direct {v0, v3, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    .line 361
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v3, 0x2

    const-string v4, "EndTag"

    invoke-direct {v0, v4, v3}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    .line 362
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v4, 0x3

    const-string v5, "Comment"

    invoke-direct {v0, v5, v4}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    .line 363
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v5, 0x4

    const-string v6, "Character"

    invoke-direct {v0, v6, v5}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 364
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const/4 v6, 0x5

    const-string v7, "EOF"

    invoke-direct {v0, v7, v6}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    const/4 v0, 0x6

    .line 358
    new-array v0, v0, [Lorg/jsoup/parser/Token$TokenType;

    sget-object v7, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    aput-object v7, v0, v1

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->$VALUES:[Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    .line 358
    const-class v0, Lorg/jsoup/parser/Token$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    .line 358
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->$VALUES:[Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0}, [Lorg/jsoup/parser/Token$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/Token$TokenType;

    return-object v0
.end method
