.class Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;
.super Ljava/lang/Object;
.source "M3U8DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->startDownload(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

.field final synthetic val$basePath:Ljava/lang/String;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$dir:Ljava/io/File;

    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    iput-object p4, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$basePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 501
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$dir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-virtual {v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 509
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-virtual {v2}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ts"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 513
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$basePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-virtual {v6}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 516
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v5}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1600(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 517
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v5}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 518
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_5

    .line 536
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v5}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1800(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v5, v4}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1802(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Z)Z

    .line 538
    iget-object v5, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v5}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1300(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3ec

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 541
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v1, 0x200000

    .line 543
    :try_start_2
    new-array v1, v1, [B

    .line 544
    :cond_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 545
    iget-object v7, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    iget-object v8, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v8}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1500(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J

    move-result-wide v8

    int-to-long v10, v6

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1502(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;J)J

    .line 546
    invoke-virtual {v5, v1, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 548
    iget-object v6, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v6}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$700(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)Z

    move-result v6
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_1

    if-eqz v3, :cond_2

    .line 575
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 581
    :catch_0
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 575
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 581
    :catch_2
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 588
    :catch_3
    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    iget-object v3, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    invoke-static {v1, v2, v0, v3}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1900(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/io/File;Ljava/io/File;Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;)V

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v1

    :goto_0
    move-object v1, v3

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object v5, v1

    :goto_1
    move-object v1, v3

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v5, v1

    :goto_2
    move-object v1, v3

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v5, v1

    :goto_3
    move-object v1, v3

    goto/16 :goto_8

    :cond_5
    :try_start_7
    const-string v0, "handlerError"

    const-string v2, "conn.getResponseCode() == 200"

    .line 555
    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    move-object v5, v1

    goto/16 :goto_a

    :catch_a
    move-exception v0

    move-object v5, v1

    :goto_4
    :try_start_8
    const-string v2, "handlerError"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_6

    .line 575
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_5

    :catch_b
    nop

    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 581
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    :catch_c
    :cond_7
    return-void

    :catch_d
    move-exception v0

    move-object v5, v1

    :goto_6
    :try_start_b
    const-string v2, "handlerError"

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v1, :cond_8

    .line 575
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e

    goto :goto_7

    :catch_e
    nop

    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 581
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    :catch_f
    :cond_9
    return-void

    :catch_10
    move-exception v0

    move-object v5, v1

    :goto_8
    :try_start_e
    const-string v2, "handlerError"

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MalformedURLException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2, v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$1400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v1, :cond_a

    .line 575
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    goto :goto_9

    :catch_11
    nop

    :cond_a
    :goto_9
    if-eqz v5, :cond_b

    .line 581
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    :catch_12
    :cond_b
    return-void

    :catchall_3
    move-exception v0

    :goto_a
    if-eqz v1, :cond_c

    .line 575
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    goto :goto_b

    :catch_13
    nop

    :cond_c
    :goto_b
    if-eqz v5, :cond_d

    .line 581
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    .line 583
    :catch_14
    :cond_d
    throw v0

    .line 592
    :cond_e
    const-class v1, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    monitor-enter v1

    .line 593
    :try_start_13
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$208(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)I

    .line 594
    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$402(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;J)J

    .line 595
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->val$m3U8Ts:Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;

    iget-object v2, p0, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask$6;->this$0:Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;

    invoke-static {v2}, Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;->access$400(Lcom/kantv/ui/m3u8downloader/M3U8DownloadTask;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Ts;->setFileSize(J)V

    .line 596
    monitor-exit v1

    :goto_c
    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
