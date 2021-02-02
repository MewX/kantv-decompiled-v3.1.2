.class public Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;
.super Ljava/lang/Object;
.source "AES128Utils.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAESDecode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESDecode(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAESDecode(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p0

    .line 107
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 108
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x2

    .line 109
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAESEncode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESEncode(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAESEncode(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p0

    .line 80
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAESKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    .line 52
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 53
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 54
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 20
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 38
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 39
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 40
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
