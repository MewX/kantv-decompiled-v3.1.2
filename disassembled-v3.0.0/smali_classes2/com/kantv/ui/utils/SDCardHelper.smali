.class public Lcom/kantv/ui/utils/SDCardHelper;
.super Ljava/lang/Object;
.source "SDCardHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDCardBaseDir()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSDCardPrivateCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSDCardPrivateFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 285
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getSDCardPublicDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 275
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public static isSDCardMounted()Z
    .locals 2

    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadFileFromSDCard(Ljava/lang/String;)[B
    .locals 5

    .line 236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 239
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2000

    .line 241
    :try_start_1
    new-array p0, p0, [B

    .line 243
    :goto_0
    invoke-virtual {v2, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 244
    invoke-virtual {v0, p0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v1

    .line 249
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    .line 252
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static removeFileFromSDCard(Ljava/lang/String;)Z
    .locals 2

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static saveBitmapToSDCardPrivateCacheDir(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 200
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    .line 206
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x64

    if-eqz p1, :cond_1

    :try_start_1
    const-string v0, ".png"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".PNG"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 213
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 217
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0

    :goto_3
    if-eqz v1, :cond_3

    .line 221
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    :cond_3
    :goto_4
    throw p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static saveFileToSDCardCustomDir([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 120
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->getSDCardBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p1, 0x0

    .line 126
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 129
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 132
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 135
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    :goto_3
    throw p0

    :cond_1
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static saveFileToSDCardPrivateCacheDir([BLjava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 175
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    .line 178
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 181
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 187
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 184
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 187
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    :goto_3
    throw p0

    :cond_0
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static saveFileToSDCardPrivateFilesDir([BLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 149
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p3, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 p3, 0x0

    .line 152
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 155
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 161
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object p3, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p3, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 158
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :try_start_4
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 161
    :goto_2
    :try_start_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :goto_3
    throw p0

    :cond_0
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static saveFileToSDCardPublicDir([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 94
    invoke-static {}, Lcom/kantv/ui/utils/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 106
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 103
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 106
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    :goto_3
    throw p0

    :cond_0
    :goto_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public formetFileSize(J)Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "G"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public loadBitmapFromSDCard(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 263
    invoke-static {p1}, Lcom/kantv/ui/utils/SDCardHelper;->loadFileFromSDCard(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 265
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
