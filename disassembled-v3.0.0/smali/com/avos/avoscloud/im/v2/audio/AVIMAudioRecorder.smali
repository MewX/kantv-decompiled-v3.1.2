.class public Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;
.super Ljava/lang/Object;
.source "AVIMAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;
    }
.end annotation


# static fields
.field private static final MIN_INTERVAL_TIME:J = 0x3e8L

.field private static final REASON_TOO_SHORT_TIME:Ljava/lang/String; = "time is too short(less than 1 second)"


# instance fields
.field private listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

.field private localPath:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field private startRecordTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 36
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->localPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->startRecordTime:J

    .line 38
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    .line 41
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->localPath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "local path is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeRecordFile()V
    .locals 2

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private stopRecorder(Z)V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->startRecordTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->removeRecordFile()V

    .line 124
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    const-wide/16 v2, 0x0

    const-string v0, "time is too short(less than 1 second)"

    invoke-interface {p1, v2, v3, v0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;->onFinishedRecord(JLjava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    invoke-interface {p1, v2, v3, v1}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;->onFinishedRecord(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 133
    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "failed to stop MediaRecorder. cause: "

    .line 130
    invoke-static {v0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 133
    iput-object v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    throw p1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->stopRecorder(Z)V

    .line 113
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->removeRecordFile()V

    return-void
.end method

.method public getMaxAmplitude()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 79
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->startRecordTime:J

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->listener:Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;

    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder$RecordEventListener;->onStartRecord()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "failed to start MediaRecorder. cause: "

    .line 87
    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/audio/AVIMAudioRecorder;->stopRecorder(Z)V

    return-void
.end method
