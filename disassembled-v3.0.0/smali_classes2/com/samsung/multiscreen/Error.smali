.class public Lcom/samsung/multiscreen/Error;
.super Ljava/lang/Object;
.source "Error.java"


# instance fields
.field private final code:J

.field private final message:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/multiscreen/Error;->code:J

    iput-object p3, p0, Lcom/samsung/multiscreen/Error;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/multiscreen/Error;->message:Ljava/lang/String;

    return-void
.end method

.method static create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 103
    new-instance v0, Lcom/samsung/multiscreen/Error;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/multiscreen/Error;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(JLjava/util/Map;)Lcom/samsung/multiscreen/Error;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/multiscreen/Error;"
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "name"

    .line 88
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "error"

    :cond_0
    const-string v1, "message"

    .line 93
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/samsung/multiscreen/Error;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/samsung/multiscreen/Error;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/samsung/multiscreen/Error;
    .locals 4

    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/samsung/multiscreen/Error;

    invoke-interface {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->code()I

    move-result v1

    int-to-long v1, v1

    .line 69
    invoke-interface {p0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->message()Ljava/lang/String;

    move-result-object p0

    const-string v3, "http error"

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/multiscreen/Error;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;
    .locals 4

    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/multiscreen/Error;

    const-wide/16 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/multiscreen/Error;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;
    .locals 3

    const-wide/16 v0, -0x1

    const-string v2, "error"

    .line 73
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    instance-of p1, p1, Lcom/samsung/multiscreen/Error;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/samsung/multiscreen/Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/multiscreen/Error;

    invoke-virtual {p1, p0}, Lcom/samsung/multiscreen/Error;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getCode()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getCode()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_6

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getCode()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/samsung/multiscreen/Error;->code:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/multiscreen/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/multiscreen/Error;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getCode()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x3b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    const/16 v2, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x3b

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
