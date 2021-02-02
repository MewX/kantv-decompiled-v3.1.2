.class Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$1;
.super Ljava/lang/Object;
.source "EncryptM3U8Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->encrypt()V
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

    .line 18
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$1;->this$0:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 24
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server$1;->this$0:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    iget-object v1, v1, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->filesDir:Ljava/lang/String;

    .line 23
    invoke-static {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8EncryptHelper;->encryptTsFilesName(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M3u8Server encrypt: "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
