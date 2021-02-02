.class Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$2;
.super Ljava/lang/Object;
.source "EncryptM3U8Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->decrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$2;->this$0:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    :try_start_0
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$2;->this$0:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    iget-object v1, v1, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    .line 42
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8EncryptHelper;->decryptTsFilesName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M3u8Server decrypt: "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
