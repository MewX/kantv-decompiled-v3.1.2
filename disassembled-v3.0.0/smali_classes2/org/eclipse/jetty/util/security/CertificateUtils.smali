.class public Lorg/eclipse/jetty/util/security/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    goto :goto_4

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 43
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 48
    invoke-static {p2, p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    goto :goto_2

    .line 52
    :cond_3
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    :goto_2
    if-nez p4, :cond_4

    goto :goto_3

    .line 55
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_4
    return-object p1

    :goto_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw p1
.end method

.method public static loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 79
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string p0, "X.509"

    .line 80
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw p0

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_0
    return-object p0
.end method
