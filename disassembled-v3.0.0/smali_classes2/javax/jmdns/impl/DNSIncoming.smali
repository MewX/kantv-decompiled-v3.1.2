.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    const/16 v0, 0x10

    .line 583
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 0

    .line 268
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 269
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 270
    new-instance p1, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 271
    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    sget v1, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v3, v3, v0}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 189
    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 190
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 191
    new-instance v1, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {v1, v4, v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    const/16 v1, 0x5b4

    .line 193
    iput v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 196
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->setId(I)V

    .line 197
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->setFlags(I)V

    .line 198
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getOperationCode()I

    move-result v1

    if-gtz v1, :cond_b

    .line 201
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 202
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v4

    .line 203
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    .line 204
    iget-object v6, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v6

    .line 206
    sget-object v7, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " additionals:"

    const-string v9, " authorities:"

    const-string v10, " answers:"

    if-eqz v7, :cond_1

    .line 207
    :try_start_1
    sget-object v7, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNSIncoming() questions:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_1
    mul-int/lit8 v7, v1, 0x5

    add-int v11, v4, v5

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0xb

    add-int/2addr v7, v11

    .line 213
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    if-gt v7, p1, :cond_a

    if-lez v1, :cond_2

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_2

    .line 220
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    if-lez v4, :cond_4

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v4, :cond_4

    .line 227
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_6

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v5, :cond_6

    .line 237
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 240
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    if-lez v6, :cond_8

    :goto_4
    if-ge v3, v6, :cond_8

    .line 247
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 250
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 255
    :cond_8
    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result p1

    if-gtz p1, :cond_9

    return-void

    .line 256
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received a message with the wrong length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "questions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 259
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNSIncoming() dump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n exception "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DNSIncoming corrupted message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private _hexString([B)Ljava/lang/String;
    .locals 5

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 595
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 596
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 597
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    div-int/lit8 v4, v2, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    rem-int/lit8 v2, v2, 0x10

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .locals 18

    move-object/from16 v0, p0

    .line 302
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    .line 304
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    const-string v4, "\n"

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    .line 305
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find record type. domain: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 308
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v1, v6, :cond_1

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v6

    .line 309
    :goto_0
    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v6, v7, :cond_2

    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-eq v1, v7, :cond_2

    .line 310
    sget-object v7, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find record class. domain: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 312
    :cond_2
    invoke-virtual {v6, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v7

    .line 313
    iget-object v4, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v8

    .line 314
    iget-object v4, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v4

    .line 317
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const-string v10, ""

    const/4 v12, 0x0

    packed-switch v9, :pswitch_data_0

    .line 453
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 454
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNSIncoming() unknown type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 361
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-static {v1, v8}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v1

    const/high16 v3, 0xff0000

    and-int/2addr v3, v8

    const/16 v4, 0x10

    shr-int/2addr v3, v4

    if-nez v3, :cond_10

    .line 364
    iput v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 365
    :cond_3
    :goto_1
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v1

    if-lez v1, :cond_16

    .line 369
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v1

    const-string v2, "There was a problem reading the OPT record. Ignoring."

    const/4 v3, 0x2

    if-lt v1, v3, :cond_f

    .line 370
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 371
    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v6

    .line 377
    iget-object v7, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v7

    if-lt v7, v3, :cond_e

    .line 378
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 383
    new-array v7, v12, [B

    .line 384
    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    if-lt v8, v2, :cond_4

    .line 385
    iget-object v7, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v7, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    .line 389
    :cond_4
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    invoke-virtual {v6}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v8

    aget v2, v2, v8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v13, 0x3

    if-eq v2, v5, :cond_8

    const-string v14, " data: "

    if-eq v2, v3, :cond_7

    if-eq v2, v13, :cond_7

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_5

    goto :goto_1

    :cond_5
    const v2, 0xfde9

    if-lt v1, v2, :cond_6

    const v2, 0xfffe

    if-gt v1, v2, :cond_6

    .line 436
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an OPT answer using an experimental/local option code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 440
    :cond_6
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an OPT answer. Not currently handled. Option code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    :cond_7
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an OPT answer. Option code: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_8
    :try_start_0
    aget-byte v1, v7, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 403
    :try_start_1
    aget-byte v2, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v6, 0x6

    .line 404
    :try_start_2
    new-array v14, v6, [B

    aget-byte v15, v7, v3

    aput-byte v15, v14, v12

    aget-byte v15, v7, v13

    aput-byte v15, v14, v5

    aget-byte v15, v7, v9

    aput-byte v15, v14, v3

    aget-byte v15, v7, v8

    aput-byte v15, v14, v13

    aget-byte v15, v7, v6

    aput-byte v15, v14, v9

    const/4 v15, 0x7

    aget-byte v16, v7, v15

    aput-byte v16, v14, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 406
    :try_start_3
    array-length v11, v7

    const/16 v15, 0x8

    if-le v11, v15, :cond_9

    .line 408
    new-array v11, v6, [B

    aget-byte v17, v7, v15

    aput-byte v17, v11, v12

    const/16 v17, 0x9

    aget-byte v17, v7, v17

    aput-byte v17, v11, v5

    const/16 v17, 0xa

    aget-byte v17, v7, v17

    aput-byte v17, v11, v3

    const/16 v17, 0xb

    aget-byte v17, v7, v17

    aput-byte v17, v11, v13

    const/16 v17, 0xc

    aget-byte v17, v7, v17

    aput-byte v17, v11, v9

    const/16 v17, 0xd

    aget-byte v17, v7, v17

    aput-byte v17, v11, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_9
    move-object v11, v14

    .line 410
    :goto_2
    :try_start_4
    array-length v6, v7

    const/16 v8, 0x12

    if-ne v6, v8, :cond_a

    .line 412
    new-array v6, v9, [B

    const/16 v8, 0xe

    aget-byte v8, v7, v8

    aput-byte v8, v6, v12

    const/16 v8, 0xf

    aget-byte v8, v7, v8

    aput-byte v8, v6, v5

    aget-byte v8, v7, v4

    aput-byte v8, v6, v3

    const/16 v8, 0x11

    aget-byte v8, v7, v8

    aput-byte v8, v6, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 414
    :goto_3
    :try_start_5
    array-length v8, v7

    const/16 v9, 0x16

    if-ne v8, v9, :cond_b

    .line 416
    new-array v8, v15, [B

    const/16 v9, 0xe

    aget-byte v9, v7, v9

    aput-byte v9, v8, v12

    const/16 v9, 0xf

    aget-byte v9, v7, v9

    aput-byte v9, v8, v5

    aget-byte v9, v7, v4

    aput-byte v9, v8, v3

    const/16 v3, 0x11

    aget-byte v3, v7, v3

    aput-byte v3, v8, v13

    const/16 v3, 0x12

    aget-byte v3, v7, v3

    const/4 v9, 0x4

    aput-byte v3, v8, v9

    const/16 v3, 0x13

    aget-byte v3, v7, v3

    const/4 v9, 0x5

    aput-byte v3, v8, v9

    const/16 v3, 0x14

    aget-byte v3, v7, v3

    const/4 v9, 0x6

    aput-byte v3, v8, v9

    const/16 v3, 0x15

    aget-byte v3, v7, v3

    const/4 v9, 0x7

    aput-byte v3, v8, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v6, v8

    goto :goto_5

    :catch_0
    move-object v11, v14

    :catch_1
    const/4 v6, 0x0

    goto :goto_4

    :catch_2
    const/4 v1, 0x0

    :catch_3
    const/4 v2, 0x0

    :catch_4
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 419
    :catch_5
    :goto_4
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed OPT answer. Option code: Owner data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 421
    :cond_b
    :goto_5
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled Owner OPT version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sequence: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MAC address: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v11, v14, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakeup MAC address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_c
    move-object v1, v10

    :goto_6
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    move-object v1, v10

    :goto_7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 380
    :cond_e
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 373
    :cond_f
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 449
    :cond_10
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There was an OPT answer. Wrong version number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result code: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 353
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    .line 356
    invoke-virtual {v1, v12, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    if-lez v2, :cond_12

    add-int/2addr v2, v5

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_12
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 358
    new-instance v10, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    move-object v2, v10

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    goto/16 :goto_c

    .line 338
    :pswitch_2
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    .line 339
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    .line 340
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v10

    .line 344
    sget-boolean v2, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v2, :cond_13

    .line 345
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 348
    :cond_13
    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object v11, v2

    .line 350
    new-instance v12, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object v2, v12

    move-object v4, v6

    move v5, v7

    move v6, v8

    move v7, v1

    move v8, v9

    move v9, v10

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    move-object v1, v12

    goto/16 :goto_c

    .line 335
    :pswitch_3
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$Text;

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v9

    move-object v2, v1

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto/16 :goto_c

    .line 327
    :pswitch_4
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 329
    new-instance v9, Ljavax/jmdns/impl/DNSRecord$Pointer;

    move-object v2, v9

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    move-object v1, v9

    goto :goto_c

    .line 331
    :cond_14
    sget-object v1, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PTR record of class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_b

    .line 322
    :pswitch_5
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v9

    move-object v2, v1

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_c

    .line 319
    :pswitch_6
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    iget-object v2, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v9

    move-object v2, v1

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    goto :goto_c

    .line 456
    :cond_15
    :goto_a
    iget-object v1, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    :cond_16
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_17

    move-object/from16 v2, p1

    .line 460
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    :cond_17
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .locals 6

    .line 290
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    .line 292
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v1, v2, :cond_0

    .line 293
    sget-object v2, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find record type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 296
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    .line 297
    invoke-virtual {v3, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v2

    .line 298
    invoke-static {v0, v1, v3, v2}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 2

    .line 560
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 566
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .locals 8

    .line 280
    new-instance v7, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isMulticast()Z

    move-result v3

    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 281
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 282
    iget-object v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v0, v7, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v7
.end method

.method public elapseSinceArrival()I
    .locals 4

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getSenderUDPPayload()I
    .locals 1

    .line 580
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 4

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 472
    iget-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    new-array p1, p1, [B

    .line 473
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSIncoming;->print([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dns[query,"

    goto :goto_0

    :cond_0
    const-string v1, "dns[response,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x3a

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id=0x"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", flags=0x"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, ":r"

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    const-string v1, ":aa"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    const-string v1, ":tc"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ", questions="

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, ", answers="

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ", authorities="

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, ", additionals="

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v1

    const-string v2, "\n\t"

    if-lez v1, :cond_9

    const-string v1, "\nquestions:"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 528
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "\nanswers:"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 535
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "\nauthorities:"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 542
    :cond_b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, "\nadditionals:"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    const-string v1, "]"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
