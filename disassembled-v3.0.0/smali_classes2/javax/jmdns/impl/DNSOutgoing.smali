.class public final Ljavax/jmdns/impl/DNSOutgoing;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0xc

.field public static USE_DOMAIN_NAME_COMPRESSION:Z = true


# instance fields
.field private final _additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private _destination:Ljava/net/InetSocketAddress;

.field private _maxUDPPayload:I

.field _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5b4

    .line 199
    invoke-direct {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/16 v0, 0x5b4

    .line 209
    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 222
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    if-lez p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/16 p1, 0x5b4

    .line 223
    :goto_0
    iput p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    .line 224
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 225
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 226
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 227
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    return-void
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    const-wide/16 v0, 0x0

    .line 342
    invoke-virtual {p1, p2, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 343
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->close()V

    .line 345
    array-length p1, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 346
    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 p2, 0x0

    array-length v1, v0

    invoke-virtual {p1, v0, p2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    return-void

    .line 349
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "message full"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/DNSRecord;->suppressedBy(Ljavax/jmdns/impl/DNSIncoming;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 286
    invoke-virtual {p0, p2, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    :cond_1
    return-void
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 302
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object p2

    .line 303
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->close()V

    .line 304
    array-length p3, p2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 305
    iget-object p3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 p3, 0x0

    array-length v0, p2

    invoke-virtual {p1, p2, p3, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "message full"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    const-wide/16 v1, 0x0

    .line 322
    invoke-virtual {v0, p1, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 323
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v1

    .line 324
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->close()V

    .line 325
    array-length v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 326
    iget-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    return-void

    .line 329
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 266
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 267
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->close()V

    .line 269
    array-length v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 270
    iget-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v0, 0x0

    array-length v2, v1

    invoke-virtual {p1, v1, v0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "message full"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public availableSpace()I
    .locals 2

    .line 255
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public data()[B
    .locals 5

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 360
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 362
    new-instance v2, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    invoke-direct {v2, v3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 363
    iget-boolean v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_multicast:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 364
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 365
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 366
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 367
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 368
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 369
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSQuestion;

    .line 370
    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_1

    .line 372
    :cond_1
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 373
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    .line 375
    :cond_2
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 376
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_3

    .line 378
    :cond_3
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 379
    invoke-virtual {v2, v4, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_4

    .line 381
    :cond_4
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 383
    :try_start_0
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getDestination()Ljava/net/InetSocketAddress;
    .locals 1

    .line 236
    iget-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_destination:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getMaxUDPPayload()I
    .locals 1

    .line 473
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 395
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing;->print([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDestination(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 246
    iput-object p1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_destination:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query:"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " id=0x"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", flags=0x"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":r"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isAuthoritativeAnswer()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ":aa"

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isTruncated()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ":tc"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, ", questions="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 423
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", answers="

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 427
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", authorities="

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 431
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", additionals="

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 435
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_8

    const-string v1, "\nquestions:"

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 442
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "\nanswers:"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 449
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "\nauthorities:"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 456
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nadditionals:"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    const-string v1, "\nnames="

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
