.class public Lcom/kantv/ui/m3u8downloader/M3U8EncryptHelper;
.super Ljava/lang/Object;
.source "M3U8EncryptHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESDecode(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 24
    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->saveFile([BLjava/lang/String;)V

    return-void
.end method

.method public static decryptFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESDecode(Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decryptTsFilesName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESEncode(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 18
    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->saveFile([BLjava/lang/String;)V

    return-void
.end method

.method public static encryptFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 30
    :cond_0
    invoke-static {p0, p1}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->getAESEncode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/kantv/ui/m3u8downloader/utils/AES128Utils;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptTsFilesName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
