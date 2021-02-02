.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# instance fields
.field attributes:Lorg/jsoup/nodes/Attributes;

.field private hasEmptyAttributeValue:Z

.field private hasPendingAttributeValue:Z

.field protected normalName:Ljava/lang/String;

.field private pendingAttributeName:Ljava/lang/String;

.field private pendingAttributeValue:Ljava/lang/StringBuilder;

.field private pendingAttributeValueS:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 76
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 77
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttributeValue()V
    .locals 2

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 199
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .locals 0

    .line 163
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    return-void
.end method

.method final appendAttributeValue(C)V
    .locals 1

    .line 176
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 177
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 168
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final appendAttributeValue([C)V
    .locals 1

    .line 181
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 182
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue([I)V
    .locals 4

    .line 186
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 187
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 188
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final appendTagName(C)V
    .locals 0

    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method final getAttributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method final isSelfClosing()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 126
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final newAttribute()V
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 100
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    if-eqz v1, :cond_2

    .line 101
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_2
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    if-eqz v1, :cond_3

    .line 104
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_3
    new-instance v1, Lorg/jsoup/nodes/BooleanAttribute;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    .line 107
    :goto_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    :cond_4
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 111
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 112
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 113
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 86
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 88
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 89
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 90
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    return-void
.end method
