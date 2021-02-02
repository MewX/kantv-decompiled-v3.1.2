.class Lcom/kantv/ui/utils/LogcatHelper$LogDumper;
.super Ljava/lang/Thread;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/utils/LogcatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/kantv/ui/utils/LogcatHelper;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/utils/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->this$0:Lcom/kantv/ui/utils/LogcatHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mRunning:Z

    .line 84
    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 89
    iput-object p2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    .line 91
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lcom/kantv/ui/utils/MyDate;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 109
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "logcat *:e *:i | grep \"("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 120
    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 123
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 126
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 127
    iget-boolean v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mRunning:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/utils/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 134
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 144
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_5

    .line 148
    :try_start_2
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 149
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    .line 156
    :try_start_4
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 158
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :goto_3
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    .line 140
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    :try_start_7
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 144
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_7

    .line 148
    :try_start_8
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 149
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v1

    .line 151
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_8

    .line 156
    :try_start_a
    iget-object v1, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v1

    .line 158
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 164
    :cond_8
    :goto_5
    monitor-exit p0

    return-void

    .line 142
    :goto_6
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_9

    .line 143
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 144
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 146
    :cond_9
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_a

    .line 148
    :try_start_c
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 149
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :catch_5
    move-exception v2

    .line 151
    :try_start_d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_a
    :goto_7
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v2, :cond_b

    .line 156
    :try_start_e
    iget-object v2, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    :catch_6
    move-exception v2

    .line 158
    :try_start_f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :goto_8
    iput-object v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_b
    throw v1

    :catchall_1
    move-exception v0

    .line 164
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public stopLogs()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/kantv/ui/utils/LogcatHelper$LogDumper;->mRunning:Z

    return-void
.end method
