.class public Lorg/eclipse/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final serialVersionUID:J = 0x446c8213da929ba9L


# instance fields
.field private _acceptRanges:Z

.field private _cache:Lorg/eclipse/jetty/server/ResourceCache;

.field private _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _etags:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _pathInfoOnly:Z

.field private _redirectWelcome:Z

.field private _relativeResourceBase:Ljava/lang/String;

.field private _resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

.field private _servletContext:Ljavax/servlet/ServletContext;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field private _useFileMappedBuffer:Z

.field private _welcomeExactServlets:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    const-class v0, Lorg/eclipse/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 152
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const/4 v1, 0x0

    .line 153
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 154
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 155
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 156
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 157
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 158
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 166
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return-void
.end method

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 337
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string p2, "t"

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "T"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "y"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Y"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_3
    :goto_2
    return p2
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 1

    .line 350
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 646
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 648
    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    .line 653
    :cond_1
    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v3, :cond_4

    :cond_2
    if-nez v1, :cond_4

    .line 655
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 656
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eq v4, v5, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private hasDefinedRange(Ljava/util/Enumeration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 598
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1123
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache;->flushCache()V

    .line 1125
    :cond_0
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    return-void
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    const-string v1, "javax.servlet.include.request_uri"

    .line 406
    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "javax.servlet.include.servlet_path"

    .line 409
    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "javax.servlet.include.path_info"

    .line 410
    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_1

    .line 413
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_1
    move-object v7, v4

    goto :goto_3

    .line 419
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 420
    iget-boolean v5, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    if-eqz v5, :cond_3

    const-string v5, "/"

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v5

    .line 421
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Range"

    .line 424
    invoke-interface {v0, v7}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    .line 425
    invoke-direct {v8, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->hasDefinedRange(Ljava/util/Enumeration;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    .line 429
    :cond_4
    :goto_3
    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_5

    .line 430
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v6

    :cond_5
    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 441
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_9

    iget-boolean v10, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v10, :cond_9

    if-nez v7, :cond_9

    if-nez v6, :cond_9

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 445
    iget-object v11, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v11, :cond_6

    .line 446
    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v10

    move-object v11, v4

    goto :goto_5

    .line 449
    :cond_6
    iget-object v11, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v11, v10}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v10, :cond_7

    move-object v11, v4

    goto :goto_4

    .line 450
    :cond_7
    :try_start_1
    invoke-interface {v10}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    move-object v15, v11

    move-object v11, v10

    move-object v10, v15

    :goto_5
    if-eqz v10, :cond_8

    .line 454
    :try_start_2
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "Vary"

    const-string v13, "Accept-Encoding"

    .line 457
    invoke-interface {v9, v12, v13}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Accept-Encoding"

    .line 460
    invoke-interface {v0, v12}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    const-string v13, "gzip"

    .line 461
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v12, :cond_8

    move-object v12, v11

    move-object v11, v10

    const/4 v10, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, v11

    move-object v11, v10

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v4, v10

    move-object v12, v11

    goto/16 :goto_12

    :cond_8
    move-object v12, v11

    move-object v11, v10

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v11, v4

    move-object v4, v10

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object v12, v10

    goto/16 :goto_12

    :cond_9
    move-object v11, v4

    move-object v12, v11

    :goto_6
    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_c

    .line 469
    :try_start_3
    iget-object v13, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v13, :cond_a

    .line 470
    invoke-virtual {v8, v5}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    :goto_8
    move-object v11, v4

    goto :goto_9

    .line 473
    :cond_a
    iget-object v13, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v13, v5}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v12

    if-nez v12, :cond_b

    goto :goto_8

    .line 474
    :cond_b
    invoke-interface {v12}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_14

    :catch_2
    move-exception v0

    goto/16 :goto_11

    :cond_c
    :goto_9
    move-object v4, v12

    .line 478
    :try_start_4
    sget-object v12, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v12}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 479
    sget-object v12, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uri="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " resource="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_d

    const-string v14, " content"

    goto :goto_a

    :cond_d
    const-string v14, ""

    :goto_a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-eqz v11, :cond_20

    .line 482
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v12

    if-nez v12, :cond_f

    goto/16 :goto_e

    .line 488
    :cond_f
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_16

    if-eqz v6, :cond_11

    .line 490
    iget-object v6, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_11

    .line 492
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_10

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    :cond_10
    iget-object v0, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_11
    if-nez v4, :cond_12

    .line 502
    new-instance v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v3, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v6

    iget-boolean v12, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v2, v11, v3, v6, v12}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v12, v2

    goto :goto_b

    :cond_12
    move-object v12, v4

    .line 504
    :goto_b
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v8, v0, v9, v11, v12}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_13
    if-eqz v10, :cond_14

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 508
    invoke-interface {v9, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v2, v5}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 511
    invoke-interface {v9, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 513
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_15
    move-object v2, v12

    goto/16 :goto_10

    :cond_16
    if-eqz v6, :cond_1d

    .line 521
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_17

    const-string v6, "org.eclipse.jetty.server.nullPathInfo"

    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_17

    goto/16 :goto_c

    .line 542
    :cond_17
    invoke-direct {v8, v5}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 544
    sget-object v5, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "welcome={}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-interface {v5, v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-boolean v2, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v2, :cond_19

    .line 548
    invoke-interface {v9, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 549
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v2}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 553
    :cond_18
    iget-object v0, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 558
    :cond_19
    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 561
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 562
    invoke-interface {v2, v0, v9}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_f

    :cond_1a
    const-string v1, "org.eclipse.jetty.server.welcome"

    .line 565
    invoke-interface {v0, v1, v6}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    invoke-interface {v2, v0, v9}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_f

    .line 573
    :cond_1b
    new-instance v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v3, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-boolean v6, v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v2, v11, v3, v6}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 574
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v8, v0, v9, v11, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 575
    :cond_1c
    invoke-virtual {v8, v0, v9, v11, v5}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v4, v2

    goto/16 :goto_15

    :catch_3
    move-exception v0

    move-object v12, v2

    goto/16 :goto_11

    .line 523
    :cond_1d
    :goto_c
    :try_start_8
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 524
    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    const-string v2, ";"

    .line 526
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x2f

    if-gez v2, :cond_1e

    .line 528
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 530
    :cond_1e
    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 531
    :goto_d
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 532
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x3f

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_1f
    invoke-interface {v9, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 539
    monitor-exit v1

    goto :goto_f

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    .line 484
    :cond_20
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x194

    .line 486
    invoke-interface {v9, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_21
    :goto_f
    move-object v2, v4

    :cond_22
    :goto_10
    if-eqz v2, :cond_23

    .line 588
    invoke-interface {v2}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    goto :goto_13

    :cond_23
    if-eqz v11, :cond_27

    .line 590
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto :goto_13

    .line 485
    :cond_24
    :try_start_b
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    move-object v12, v4

    :goto_11
    move-object v4, v11

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v11, v4

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v12, v4

    .line 581
    :goto_12
    :try_start_c
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x1f4

    .line 583
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :cond_25
    if-eqz v12, :cond_26

    .line 588
    invoke-interface {v12}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    goto :goto_13

    :cond_26
    if-eqz v4, :cond_27

    .line 590
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    :cond_27
    :goto_13
    return-void

    :catchall_7
    move-exception v0

    move-object v11, v4

    :goto_14
    move-object v4, v12

    :goto_15
    if-nez v4, :cond_28

    if-eqz v11, :cond_29

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto :goto_16

    .line 588
    :cond_28
    invoke-interface {v4}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 590
    :cond_29
    :goto_16
    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method

.method protected doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "Allow"

    const-string v0, "GET,HEAD,POST,OPTIONS"

    .line 624
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x195

    .line 616
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 328
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.eclipse.jetty.servlet.Default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 374
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v1, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 384
    :goto_0
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 389
    sget-object v2, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 392
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "/jetty-dir.css"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    :cond_4
    return-object v0
.end method

.method public init()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 185
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "index.html"

    aput-object v3, v0, v7

    const-string v3, "index.jsp"

    aput-object v3, v0, v2

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 187
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    const-string v3, "acceptRanges"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 188
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const-string v3, "dirAllowed"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 189
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    const-string v3, "redirectWelcome"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 190
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    const-string v3, "gzip"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 191
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    const-string v3, "pathInfoOnly"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    const-string v0, "welcomeServlets"

    .line 193
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "exact"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iput-boolean v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 196
    iput-boolean v7, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    goto :goto_0

    .line 199
    :cond_1
    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    :goto_0
    const-string v0, "aliases"

    .line 201
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 202
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-direct {p0, v0, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAliases(Z)V

    .line 204
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v0

    if-nez v0, :cond_4

    .line 205
    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    const-string v3, "Aliases are enabled! Security constraints may be bypassed!!!"

    invoke-interface {v0, v3}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 210
    :cond_5
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    const-string v3, "useFileMappedBuffer"

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    const-string v0, "relativeResourceBase"

    .line 212
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    const-string v0, "resourceBase"

    .line 214
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "EXCEPTION "

    if-eqz v0, :cond_7

    .line 217
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 219
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_6
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string v1, "resourceBase & relativeResourceBase"

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    const-string v0, "stylesheet"

    .line 227
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 232
    :try_start_1
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 233
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 235
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 239
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_9

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "/jetty-dir.css"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 246
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    const-string v0, "cacheControl"

    .line 250
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 252
    new-instance v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    :cond_a
    const-string v0, "resourceCache"

    .line 254
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "maxCacheSize"

    .line 255
    invoke-direct {p0, v4, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "maxCachedFileSize"

    .line 256
    invoke-direct {p0, v4, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "maxCachedFiles"

    .line 257
    invoke-direct {p0, v4, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, -0x1

    if-eqz v0, :cond_e

    if-ne v9, v12, :cond_b

    if-ne v10, v3, :cond_b

    if-eq v11, v3, :cond_c

    .line 261
    :cond_b
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "ignoring resource cache configuration, using resourceCache attribute"

    invoke-interface {v3, v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_c
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v3, :cond_d

    .line 264
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v3, v0}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/ResourceCache;

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 266
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    aput-object v0, v1, v2

    const-string v0, "Cache {}={}"

    invoke-interface {v3, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 263
    :cond_d
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string v1, "resourceCache specified with resource bases"

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_e
    :goto_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    const-string v1, "etags"

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 273
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v0, :cond_11

    if-lez v11, :cond_11

    .line 275
    new-instance v0, Lorg/eclipse/jetty/server/ResourceCache;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    iget-boolean v6, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/server/ResourceCache;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;ZZ)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-lez v9, :cond_f

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCacheSize(I)V

    :cond_f
    if-lt v10, v12, :cond_10

    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFileSize(I)V

    :cond_10
    if-lt v11, v12, :cond_11

    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFiles(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :cond_11
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 293
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v4

    if-ne v4, p0, :cond_12

    .line 294
    iput-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 297
    :cond_13
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 298
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource base = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    return-void

    :catch_2
    move-exception v0

    .line 287
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method protected initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 3

    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object p1

    return-object p1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The servletContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object p1

    return-object p1
.end method

.method protected passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "If-Modified-Since"

    .line 673
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_d

    .line 675
    iget-boolean v4, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    const/16 v6, 0x19c

    const/16 v7, 0x130

    const/4 v8, 0x0

    if-eqz v4, :cond_8

    const-string v4, "If-Match"

    .line 677
    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ", "

    if-eqz v4, :cond_3

    if-eqz p4, :cond_1

    .line 681
    :try_start_1
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 683
    new-instance v10, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-direct {v10, v4, v9, v8, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 684
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 686
    invoke-virtual {v10}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 687
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    if-nez v4, :cond_3

    .line 694
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 695
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 696
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    return v8

    :cond_3
    const-string v4, "If-None-Match"

    .line 701
    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz p4, :cond_8

    .line 702
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 705
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "o.e.j.s.GzipFilter.ETag"

    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 707
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 708
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 709
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 710
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    return v8

    .line 716
    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 718
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 719
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 720
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 721
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return v8

    .line 726
    :cond_5
    new-instance v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-direct {v0, v4, v9, v8, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 727
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 729
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 732
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 733
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 734
    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 735
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return v8

    :cond_7
    return v5

    .line 744
    :cond_8
    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x3e8

    if-eqz v4, :cond_c

    .line 748
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v13

    if-eqz p4, :cond_a

    .line 752
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 755
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 757
    invoke-virtual {v13, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 758
    invoke-virtual {v13, v7}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 759
    iget-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v0, :cond_9

    .line 760
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 761
    :cond_9
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    return v8

    .line 767
    :cond_a
    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v14, v3, v9

    if-eqz v14, :cond_c

    .line 770
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v14

    div-long/2addr v14, v11

    div-long/2addr v3, v11

    cmp-long v16, v14, v3

    if-gtz v16, :cond_c

    .line 772
    invoke-virtual {v13, v5}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 773
    invoke-virtual {v13, v7}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 774
    iget-boolean v0, v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v0, :cond_b

    .line 775
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 776
    :cond_b
    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    return v8

    :cond_c
    const-string v3, "If-Unmodified-Since"

    .line 783
    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-eqz v0, :cond_d

    .line 787
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v9

    div-long/2addr v9, v11

    div-long/2addr v3, v11

    cmp-long v0, v9, v3

    if-lez v0, :cond_d

    .line 789
    invoke-interface {v2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return v8

    :cond_d
    return v5

    :catch_0
    move-exception v0

    .line 798
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0x190

    .line 799
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 800
    :cond_e
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 861
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    goto :goto_1

    .line 865
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v6

    .line 866
    instance-of v7, v6, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v7}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v6, v6, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 867
    :goto_0
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v7

    move-wide/from16 v22, v7

    move v8, v6

    move-wide/from16 v6, v22

    .line 876
    :goto_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v9

    .line 879
    instance-of v10, v9, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v10, :cond_2

    move-object v10, v9

    check-cast v10, Lorg/eclipse/jetty/server/HttpOutput;

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/HttpOutput;->isWritten()Z

    move-result v10

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v10

    invoke-interface {v10}, Lorg/eclipse/jetty/http/Generator;->isWritten()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 885
    :catch_0
    new-instance v9, Lorg/eclipse/jetty/io/WriterOutputStream;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    const/4 v10, 0x1

    :goto_2
    const-wide/16 v12, -0x1

    if-eqz v3, :cond_12

    .line 889
    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_12

    const-wide/16 v14, 0x0

    cmp-long v16, v6, v14

    if-gez v16, :cond_3

    goto/16 :goto_b

    .line 938
    :cond_3
    invoke-static {v3, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v3

    const-string v8, "Content-Range"

    if-eqz v3, :cond_11

    .line 941
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_a

    .line 953
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0xce

    if-ne v10, v4, :cond_5

    .line 955
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 957
    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v4

    .line 958
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 959
    invoke-interface {v1, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 960
    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-virtual {v3, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v1

    move-object/from16 p1, p4

    move-object/from16 p2, v9

    move-wide/from16 p3, v1

    move-wide/from16 p5, v4

    invoke-virtual/range {p1 .. p6}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    return-void

    .line 970
    :cond_5
    invoke-virtual {v0, v1, v2, v12, v13}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 971
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_7

    .line 973
    sget-object v8, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown mimetype for "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v5, [Ljava/lang/Object;

    invoke-interface {v8, v10, v12}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    :cond_7
    new-instance v8, Lorg/eclipse/jetty/util/MultiPartOutputStream;

    invoke-direct {v8, v9}, Lorg/eclipse/jetty/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 975
    invoke-interface {v1, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string v9, "Request-Range"

    move-object/from16 v10, p1

    .line 981
    invoke-interface {v10, v9}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, "multipart/x-byteranges; boundary="

    goto :goto_4

    :cond_8
    const-string v9, "multipart/byteranges; boundary="

    .line 985
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 992
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 993
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/16 v16, 0x2

    if-ge v11, v13, :cond_b

    .line 995
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 996
    invoke-virtual {v13, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v11

    int-to-long v14, v12

    if-lez v11, :cond_9

    const/4 v12, 0x2

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    add-int/lit8 v12, v12, 0x2

    .line 997
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v12, v12, v17

    add-int/lit8 v12, v12, 0x2

    if-nez v2, :cond_a

    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    const/16 v17, 0xe

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    :goto_7
    add-int v12, v12, v17

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0xd

    add-int/lit8 v12, v12, 0x2

    aget-object v17, v10, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v12, v12, v17

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x2

    int-to-long v4, v12

    invoke-virtual {v13, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v16

    invoke-virtual {v13, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    sub-long v16, v16, v12

    add-long v4, v4, v16

    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    add-long/2addr v14, v4

    long-to-int v12, v14

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    goto :goto_5

    .line 1005
    :cond_b
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v12, v4

    .line 1006
    invoke-interface {v1, v12}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    const/4 v1, 0x0

    const-wide/16 v14, 0x0

    .line 1008
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 1010
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/InclusiveByteRange;

    const/4 v5, 0x1

    .line 1011
    new-array v11, v5, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v2, v11}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v4, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v18

    .line 1014
    invoke-virtual {v4, v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v11

    if-eqz v9, :cond_e

    cmp-long v4, v18, v14

    if-gez v4, :cond_c

    .line 1020
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1021
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-wide/16 v14, 0x0

    :cond_c
    cmp-long v4, v14, v18

    if-gez v4, :cond_d

    sub-long v14, v18, v14

    .line 1026
    invoke-virtual {v9, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-wide/from16 v14, v18

    .line 1029
    :cond_d
    invoke-static {v9, v8, v11, v12}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    add-long/2addr v14, v11

    goto :goto_9

    :cond_e
    move-object/from16 v16, p4

    move-object/from16 v17, v8

    move-wide/from16 v20, v11

    .line 1034
    invoke-virtual/range {v16 .. v21}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    if-eqz v9, :cond_10

    .line 1038
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 1039
    :cond_10
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->close()V

    goto/16 :goto_f

    .line 943
    :cond_11
    :goto_a
    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    const/16 v2, 0x1a0

    .line 944
    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 945
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    move-object/from16 p1, p4

    move-object/from16 p2, v9

    move-wide/from16 p3, v1

    move-wide/from16 p5, v6

    .line 947
    invoke-virtual/range {p1 .. p6}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    return-void

    :cond_12
    :goto_b
    if-eqz p3, :cond_13

    const-wide/16 v1, 0x0

    move-object/from16 p1, p4

    move-object/from16 p2, v9

    move-wide/from16 p3, v1

    move-wide/from16 p5, v6

    .line 894
    invoke-virtual/range {p1 .. p6}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_f

    :cond_13
    if-eqz v2, :cond_17

    if-nez v10, :cond_17

    .line 899
    instance-of v3, v9, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v3, :cond_17

    .line 901
    instance-of v3, v1, Lorg/eclipse/jetty/server/Response;

    if-eqz v3, :cond_14

    .line 903
    check-cast v1, Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 904
    check-cast v9, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v9, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_f

    :cond_14
    if-eqz v8, :cond_15

    .line 908
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    goto :goto_c

    :cond_15
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_16

    .line 911
    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 912
    check-cast v9, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v9, v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_f

    .line 916
    :cond_16
    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    const-wide/16 v1, 0x0

    move-object/from16 p1, p4

    move-object/from16 p2, v9

    move-wide/from16 p3, v1

    move-wide/from16 p5, v6

    .line 917
    invoke-virtual/range {p1 .. p6}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_f

    :cond_17
    if-eqz v10, :cond_18

    goto :goto_d

    :cond_18
    move-wide v12, v6

    .line 924
    :goto_d
    invoke-virtual {v0, v1, v2, v12, v13}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    if-nez v2, :cond_19

    const/4 v11, 0x0

    goto :goto_e

    .line 927
    :cond_19
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    :goto_e
    if-eqz v11, :cond_1a

    .line 929
    invoke-interface {v11, v9}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_f

    :cond_1a
    const-wide/16 v1, 0x0

    move-object/from16 p1, p4

    move-object/from16 p2, v9

    move-wide/from16 p3, v1

    move-wide/from16 p5, v6

    .line 931
    invoke-virtual/range {p1 .. p6}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :goto_f
    return-void
.end method

.method protected sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const/16 v1, 0x193

    if-nez v0, :cond_0

    .line 815
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    .line 820
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_1

    .line 826
    instance-of v2, v0, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v2, :cond_2

    .line 827
    invoke-virtual {v0, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v0, :cond_2

    .line 831
    iget-object p3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    invoke-virtual {p3, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    .line 833
    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x1

    if-le p4, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, p1, v0}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "No directory"

    .line 836
    invoke-interface {p2, v1, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void

    :cond_4
    const-string p3, "UTF-8"

    .line 841
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string p3, "text/html; charset=UTF-8"

    .line 842
    invoke-interface {p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 843
    array-length p3, p1

    invoke-interface {p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 844
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    return-void
.end method

.method protected writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 1051
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/server/Response;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    .line 1053
    check-cast p1, Lorg/eclipse/jetty/server/Response;

    .line 1054
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 1056
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1057
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 1058
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1060
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    .line 1062
    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v5, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    :cond_2
    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_3

    .line 1066
    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jetty/server/Response;->setLongContentLength(J)V

    .line 1068
    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 1070
    iget-boolean p1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz p1, :cond_8

    .line 1071
    sget-object p1, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_2

    .line 1075
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    const-string v0, "Last-Modified"

    .line 1077
    invoke-interface {p1, v0, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    :cond_5
    cmp-long v0, p3, v1

    if-eqz v0, :cond_7

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p3, v0

    if-gez v2, :cond_6

    long-to-int p4, p3

    .line 1082
    invoke-interface {p1, p4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    goto :goto_1

    .line 1084
    :cond_6
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Content-Length"

    invoke-interface {p1, p4, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    .line 1089
    iget-boolean p3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz p3, :cond_8

    .line 1090
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ETag"

    invoke-interface {p1, p3, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    .line 1108
    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-interface {p1, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1098
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1101
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    :cond_1
    return-void
.end method
