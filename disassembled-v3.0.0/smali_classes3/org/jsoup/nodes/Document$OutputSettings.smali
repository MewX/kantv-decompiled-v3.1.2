.class public Lorg/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private indentAmount:I

.field private outline:Z

.field private prettyPrint:Z

.field private syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    const-string v0, "UTF-8"

    .line 373
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    const/4 v1, 0x0

    .line 375
    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->outline:Z

    .line 376
    iput v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 377
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-void
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 432
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 2

    .line 520
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 525
    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method encoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method

.method public escapeMode(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 400
    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object p0
.end method

.method public escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public indentAmount()I
    .locals 1

    .line 502
    iget v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return v0
.end method

.method public indentAmount(I)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 511
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 512
    iput p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return-object p0
.end method

.method public outline(Z)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 493
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->outline:Z

    return-object p0
.end method

.method public outline()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->outline:Z

    return v0
.end method

.method public prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 474
    iput-boolean p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return-object p0
.end method

.method public prettyPrint()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return v0
.end method

.method public syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
