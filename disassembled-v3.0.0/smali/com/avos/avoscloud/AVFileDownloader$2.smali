.class Lcom/avos/avoscloud/AVFileDownloader$2;
.super Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;
.source "AVFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFileDownloader;->downloadFileFromNetwork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFileDownloader;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$errors:[Lcom/avos/avoscloud/AVException;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/File;Ljava/lang/String;[Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    iput-object p3, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    invoke-direct {p0}, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    new-instance p2, Lcom/avos/avoscloud/AVException;

    invoke-direct {p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/InputStream;)V
    .locals 4

    .line 124
    div-int/lit8 p2, p1, 0x64

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    const/16 p1, 0x2000

    .line 126
    new-array p1, p1, [B

    .line 128
    iget-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    .line 130
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :try_start_1
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-lez v3, :cond_0

    .line 135
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 136
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 142
    :cond_0
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v2

    .line 139
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 147
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_3
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 142
    :goto_4
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p3

    .line 147
    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 149
    :cond_2
    :goto_5
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 152
    :cond_3
    :goto_6
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-static {p1}, Lcom/avos/avoscloud/AVFileDownloader;->access$100(Lcom/avos/avoscloud/AVFileDownloader;)Lcom/avos/avoscloud/GetDataCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 153
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    iget-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-static {p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVFileDownloader;->access$202(Lcom/avos/avoscloud/AVFileDownloader;[B)[B

    goto :goto_7

    .line 154
    :cond_4
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-static {p1}, Lcom/avos/avoscloud/AVFileDownloader;->access$300(Lcom/avos/avoscloud/AVFileDownloader;)Lcom/avos/avoscloud/GetDataStreamCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 156
    :try_start_6
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    iget-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$cacheFile:Ljava/io/File;

    invoke-static {p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVFileDownloader;->access$402(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to invoke downloadFileFromNetwork() url:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$url:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 159
    iget-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->this$0:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVFileDownloader;->access$402(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_7

    :cond_5
    if-eqz p3, :cond_6

    .line 163
    iget-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    new-instance p3, Lcom/avos/avoscloud/AVException;

    const-string v1, "status code is invalid"

    invoke-direct {p3, p1, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    aput-object p3, p2, v0

    goto :goto_7

    .line 165
    :cond_6
    iget-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader$2;->val$errors:[Lcom/avos/avoscloud/AVException;

    new-instance p3, Lcom/avos/avoscloud/AVException;

    const-string v1, "data is empty!"

    invoke-direct {p3, p1, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    aput-object p3, p2, v0

    :cond_7
    :goto_7
    return-void
.end method
