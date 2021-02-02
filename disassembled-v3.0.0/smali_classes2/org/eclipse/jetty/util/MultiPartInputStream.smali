.class public Lorg/eclipse/jetty/util/MultiPartInputStream;
.super Ljava/lang/Object;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;,
        Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;


# instance fields
.field protected _config:Ljavax/servlet/MultipartConfigElement;

.field protected _contentType:Ljava/lang/String;

.field protected _contextTmpDir:Ljava/io/File;

.field protected _deleteOnExit:Z

.field protected _in:Ljava/io/InputStream;

.field protected _parts:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 63
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->__DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljavax/servlet/MultipartConfigElement;Ljava/io/File;)V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ReadLineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 342
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 344
    iput-object p4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 345
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    if-nez p1, :cond_0

    .line 346
    new-instance p1, Ljava/io/File;

    const-string p2, "java.io.tmpdir"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 348
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    if-nez p1, :cond_1

    .line 349
    new-instance p1, Ljavax/servlet/MultipartConfigElement;

    iget-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    :cond_1
    return-void
.end method

.method private filenameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3d

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 776
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".??[a-z,A-Z]\\:\\\\[^\\\\].*"

    .line 778
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    .line 784
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 785
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_3

    .line 787
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1

    .line 796
    :cond_4
    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private value(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const/16 p2, 0x3d

    .line 766
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 767
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 768
    invoke-static {p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteParts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/util/MultiException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParsedParts()Ljava/util/Collection;

    move-result-object v0

    .line 381
    new-instance v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 382
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/Part;

    .line 386
    :try_start_0
    check-cast v2, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->cleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 390
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 395
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowMulti()V

    return-void
.end method

.method public getParsedParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 366
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 367
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/http/Part;

    return-object p1
.end method

.method public getParts()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 414
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v2

    .line 415
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return v0
.end method

.method protected parse()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 447
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v0, :cond_0

    return-void

    .line 452
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    .line 455
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    if-eqz v0, :cond_38

    const-string v2, "multipart/form-data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_16

    .line 460
    :cond_1
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v0}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_2

    .line 461
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v0}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 466
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 468
    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 470
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    .line 473
    :goto_0
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 477
    :cond_5
    iget-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    const-string v3, "boundary="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, ";"

    const/4 v4, 0x1

    if-ltz v0, :cond_7

    .line 480
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_6

    .line 481
    iget-object v5, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 482
    :cond_6
    iget-object v6, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 485
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 489
    iget-object v6, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v6, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_37

    .line 495
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_a

    .line 496
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    if-nez v8, :cond_8

    .line 500
    sget-object v6, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "Badly formatted multipart request"

    invoke-interface {v6, v9, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 503
    :cond_8
    iget-object v6, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v6, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_2

    .line 504
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_36

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    :goto_3
    if-nez v0, :cond_34

    .line 519
    new-instance v6, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v6}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 522
    :goto_4
    iget-object v12, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v12, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v12}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    goto/16 :goto_15

    .line 529
    :cond_b
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const-string v8, ")"

    const-string v9, "Request exceeds maxRequestSize ("

    if-eqz v17, :cond_2e

    if-eqz v13, :cond_2d

    .line 560
    new-instance v12, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-direct {v12, v13, v3, v7, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    .line 563
    :goto_5
    invoke-virtual {v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 565
    invoke-virtual {v12}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v2

    .line 566
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v3

    const-string v3, "form-data"

    .line 567
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v13, 0x1

    goto :goto_6

    :cond_c
    const-string v3, "name="

    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    .line 570
    invoke-direct {v1, v4, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_6

    :cond_d
    const-string v3, "filename="

    .line 571
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 572
    invoke-direct {v1, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream;->filenameValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    :cond_e
    :goto_6
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    if-nez v13, :cond_10

    goto :goto_7

    :cond_10
    if-nez v7, :cond_11

    :goto_7
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_3

    .line 591
    :cond_11
    new-instance v2, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    move-object/from16 v3, v20

    invoke-direct {v2, v1, v7, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 593
    invoke-virtual {v2, v14}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setContentType(Ljava/lang/String;)V

    .line 594
    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v3, v7, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->open()V

    const-string v3, "base64"

    .line 598
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 600
    new-instance v3, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    check-cast v4, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;-><init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V

    goto :goto_8

    :cond_12
    const-string v3, "quoted-printable"

    .line 602
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 604
    new-instance v3, Lorg/eclipse/jetty/util/MultiPartInputStream$1;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v3, v1, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$1;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V

    goto :goto_8

    .line 626
    :cond_13
    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    :goto_8
    const/4 v4, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, -0x2

    :goto_9
    const/4 v13, -0x1

    move v14, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_a
    if-eq v12, v4, :cond_14

    move v15, v12

    goto :goto_b

    .line 639
    :cond_14
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v15

    :goto_b
    const/16 v4, 0xa

    if-eq v15, v13, :cond_1e

    const-wide/16 v24, 0x1

    add-long v10, v10, v24

    .line 642
    iget-object v12, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v12}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v24

    const-wide/16 v18, 0x0

    cmp-long v12, v24, v18

    if-lez v12, :cond_16

    iget-object v12, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v12}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v24

    cmp-long v12, v10, v24

    if-gtz v12, :cond_15

    goto :goto_c

    .line 643
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v4}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_c
    const/16 v12, 0xd

    if-eq v15, v12, :cond_1c

    if-ne v15, v4, :cond_17

    const/16 v12, 0xd

    goto :goto_d

    :cond_17
    if-ltz v6, :cond_18

    .line 663
    array-length v12, v5

    if-ge v6, v12, :cond_18

    aget-byte v12, v5, v6

    if-ne v15, v12, :cond_18

    add-int/lit8 v6, v6, 0x1

    const/4 v4, -0x2

    const/4 v12, -0x2

    goto :goto_a

    :cond_18
    if-eqz v7, :cond_19

    const/16 v7, 0xd

    .line 672
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_19
    if-eqz v14, :cond_1a

    .line 675
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_1a
    if-lez v6, :cond_1b

    const/4 v4, 0x0

    .line 679
    invoke-virtual {v2, v5, v4, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 682
    :cond_1b
    invoke-virtual {v2, v15}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    const/4 v4, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v12, -0x2

    const/4 v14, 0x0

    goto :goto_a

    :cond_1c
    :goto_d
    if-ne v15, v12, :cond_1d

    const/4 v12, 0x1

    .line 652
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->mark(I)V

    .line 653
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v12

    if-eq v12, v4, :cond_1e

    .line 655
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    :cond_1d
    const/4 v12, -0x2

    :cond_1e
    if-lez v6, :cond_20

    .line 687
    array-length v13, v5

    add-int/lit8 v13, v13, -0x2

    if-lt v6, v13, :cond_1f

    goto :goto_e

    :cond_1f
    const/16 v21, 0x1

    goto :goto_f

    :cond_20
    :goto_e
    array-length v13, v5

    const/16 v21, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v6, v13, :cond_23

    :goto_f
    if-eqz v7, :cond_21

    const/16 v7, 0xd

    .line 690
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_21
    if-eqz v14, :cond_22

    .line 693
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_22
    const/4 v7, 0x0

    .line 696
    invoke-virtual {v2, v5, v7, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_23
    if-gtz v6, :cond_2b

    const/4 v13, -0x1

    if-ne v15, v13, :cond_24

    goto :goto_13

    :cond_24
    if-eqz v7, :cond_25

    const/16 v6, 0xd

    .line 713
    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_25
    if-eqz v14, :cond_26

    .line 716
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    :cond_26
    const/16 v6, 0xd

    if-ne v15, v6, :cond_27

    const/4 v6, 0x1

    goto :goto_10

    :cond_27
    const/4 v6, 0x0

    :goto_10
    if-eq v15, v4, :cond_29

    if-ne v12, v4, :cond_28

    goto :goto_11

    :cond_28
    const/4 v7, 0x0

    goto :goto_12

    :cond_29
    :goto_11
    const/4 v7, 0x1

    :goto_12
    if-ne v12, v4, :cond_2a

    const/4 v12, -0x2

    :cond_2a
    const/4 v4, -0x2

    goto/16 :goto_9

    .line 704
    :cond_2b
    :goto_13
    array-length v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v3, :cond_2c

    const/4 v0, 0x1

    .line 727
    :cond_2c
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    throw v0

    .line 557
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Missing content-disposition"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    const/16 v21, 0x1

    .line 532
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v10, v2

    .line 533
    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v4, v2, v18

    if-lez v4, :cond_30

    iget-object v2, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v2

    cmp-long v4, v10, v2

    if-gtz v4, :cond_2f

    goto :goto_14

    .line 534
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    invoke-virtual {v3}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_14
    const/16 v2, 0x3a

    const/4 v3, 0x0

    .line 537
    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_33

    .line 540
    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    .line 541
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v12, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-virtual {v6, v4, v2}, Lorg/eclipse/jetty/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "content-disposition"

    .line 543
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    move-object v13, v2

    :cond_31
    const-string v7, "content-type"

    .line 545
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    move-object v14, v2

    :cond_32
    const-string v7, "content-transfer-encoding"

    .line 547
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    move-object v15, v2

    :cond_33
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_34
    :goto_15
    if-eqz v0, :cond_35

    return-void

    .line 731
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Incomplete parts"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Missing initial multi part boundary"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Missing content for multipart request"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    :goto_16
    return-void
.end method

.method public setDeleteOnExit(Z)V
    .locals 0

    .line 736
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return-void
.end method
