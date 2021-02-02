.class public Lcom/transitionseverywhere/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/PathParser$PathDataNode;,
        Lcom/transitionseverywhere/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/transitionseverywhere/PathParser$PathDataNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/transitionseverywhere/PathParser$PathDataNode;-><init>(C[FLcom/transitionseverywhere/PathParser$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Lcom/transitionseverywhere/PathParser$PathDataNode;[Lcom/transitionseverywhere/PathParser$PathDataNode;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 104
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 105
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$100(Lcom/transitionseverywhere/PathParser$PathDataNode;)C

    move-result v2

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$100(Lcom/transitionseverywhere/PathParser$PathDataNode;)C

    move-result v3

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    .line 106
    invoke-static {v2}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F

    move-result-object v2

    array-length v2, v2

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Lcom/transitionseverywhere/PathParser$PathDataNode;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 59
    invoke-static {p0, v3}, Lcom/transitionseverywhere/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    .line 60
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 62
    invoke-static {v4}, Lcom/transitionseverywhere/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lcom/transitionseverywhere/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 70
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lcom/transitionseverywhere/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/transitionseverywhere/PathParser$PathDataNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transitionseverywhere/PathParser$PathDataNode;

    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/transitionseverywhere/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/transitionseverywhere/PathParser$PathDataNode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-static {p0, v0}, Lcom/transitionseverywhere/PathParser$PathDataNode;->nodesToPath([Lcom/transitionseverywhere/PathParser$PathDataNode;Landroid/graphics/Path;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deepCopyNodes([Lcom/transitionseverywhere/PathParser$PathDataNode;)[Lcom/transitionseverywhere/PathParser$PathDataNode;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Lcom/transitionseverywhere/PathParser$PathDataNode;

    const/4 v2, 0x0

    .line 84
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 85
    new-instance v3, Lcom/transitionseverywhere/PathParser$PathDataNode;

    aget-object v4, p0, v2

    invoke-direct {v3, v4, v0}, Lcom/transitionseverywhere/PathParser$PathDataNode;-><init>(Lcom/transitionseverywhere/PathParser$PathDataNode;Lcom/transitionseverywhere/PathParser$1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static extract(Ljava/lang/String;ILcom/transitionseverywhere/PathParser$ExtractFloatResult;)V
    .locals 5

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p2, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    move v0, p1

    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, p1, :cond_2

    .line 221
    iput-boolean v4, p2, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_4
    :goto_2
    iput v0, p2, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 7

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 162
    new-array p0, v0, [F

    return-object p0

    .line 165
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 170
    new-instance v3, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;-><init>(Lcom/transitionseverywhere/PathParser$1;)V

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    .line 177
    invoke-static {p0, v2, v3}, Lcom/transitionseverywhere/PathParser;->extract(Ljava/lang/String;ILcom/transitionseverywhere/PathParser$ExtractFloatResult;)V

    .line 178
    iget v5, v3, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v2, v5, :cond_3

    add-int/lit8 v6, v0, 0x1

    .line 182
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    move v0, v6

    .line 185
    :cond_3
    iget-boolean v2, v3, Lcom/transitionseverywhere/PathParser$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    goto :goto_2

    .line 192
    :cond_5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 194
    sget-object v1, Lcom/transitionseverywhere/PathParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    .line 132
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v0, v0, -0x7a

    mul-int v1, v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static updateNodes([Lcom/transitionseverywhere/PathParser$PathDataNode;[Lcom/transitionseverywhere/PathParser$PathDataNode;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 122
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$100(Lcom/transitionseverywhere/PathParser$PathDataNode;)C

    move-result v3

    invoke-static {v2, v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$102(Lcom/transitionseverywhere/PathParser$PathDataNode;C)C

    const/4 v2, 0x0

    .line 123
    :goto_1
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 124
    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F

    move-result-object v3

    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/transitionseverywhere/PathParser$PathDataNode;->access$200(Lcom/transitionseverywhere/PathParser$PathDataNode;)[F

    move-result-object v4

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
