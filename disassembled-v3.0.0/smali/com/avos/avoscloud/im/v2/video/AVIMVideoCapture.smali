.class public Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;
.super Ljava/lang/Object;
.source "AVIMVideoCapture.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final REQUEST_VIDEO_CAPTURE:I = 0x1


# instance fields
.field private localPath:Ljava/lang/String;

.field private maxDuration:I

.field private maxFileSize:I

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private profile:Landroid/media/CamcorderProfile;

.field private recording:Z

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;IILandroid/view/SurfaceView;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 46
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->surfaceView:Landroid/view/SurfaceView;

    .line 47
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->profile:Landroid/media/CamcorderProfile;

    .line 48
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->localPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->recording:Z

    .line 63
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p3, :cond_1

    if-lez p4, :cond_1

    if-eqz p5, :cond_0

    .line 73
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->profile:Landroid/media/CamcorderProfile;

    .line 74
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->localPath:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->maxDuration:I

    .line 76
    iput p4, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->maxFileSize:I

    .line 77
    iput-object p5, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->surfaceView:Landroid/view/SurfaceView;

    .line 78
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->initRecorder()V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SurfaceView is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxDuration and maxFileSize must great than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "local path is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static dispatchTakeVideoIntent(Landroid/app/Activity;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private initRecorder()V
    .locals 3

    .line 82
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->profile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->maxDuration:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->maxFileSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 92
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 93
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private prepareRecorder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "failed to prepare MediaRecorder. cause: "

    .line 128
    invoke-static {v0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private stopRecorder()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->recording:Z

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->recording:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->recording:Z

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->stopRecorder()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->recording:Z

    .line 118
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->initRecorder()V

    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->prepareRecorder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->prepareRecorder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/video/AVIMVideoCapture;->stopRecorder()V

    return-void
.end method
