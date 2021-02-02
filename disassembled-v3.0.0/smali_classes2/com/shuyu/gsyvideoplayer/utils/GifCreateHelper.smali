.class public Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;
    }
.end annotation


# instance fields
.field private mDelay:I

.field private mFrequencyCount:I

.field private mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;

.field private mPicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private mSampleSize:I

.field private mSaveShotBitmapSuccess:Z

.field private mScaleSize:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

.field private mTmpPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;-><init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;IIII)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    .line 33
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    .line 45
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    const/4 v0, 0x5

    .line 48
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    const/16 v0, 0x32

    .line 51
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    .line 65
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 66
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;

    .line 67
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    .line 68
    iput p4, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    .line 69
    iput p5, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    .line 70
    iput p6, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mDelay:I

    return p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSampleSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mScaleSize:I

    return p0
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mGSYVideoGifSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return p0
.end method

.method static synthetic access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    return p1
.end method

.method static synthetic access$700(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->startSaveBitmap()V

    return-void
.end method

.method private startSaveBitmap()V
    .locals 5

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSY-TMP-FRAME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPlayer:Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    invoke-virtual {v1, v0, v2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->cancel()Z

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    :cond_0
    return-void
.end method

.method public createGif(Ljava/io/File;Ljava/util/List;IIILcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p6

    .line 150
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    new-instance v4, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;

    invoke-direct {v4}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;-><init>()V

    .line 152
    invoke-virtual {v4, v3}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v4, v5}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->setRepeat(I)V

    move/from16 v6, p3

    .line 154
    invoke-virtual {v4, v6}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->setDelay(I)V

    const/4 v6, 0x0

    .line 155
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    .line 156
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v9, p4

    .line 157
    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 158
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v10, v8

    move/from16 v12, p5

    int-to-double v13, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v13

    .line 161
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 p3, v6

    int-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v13

    const/4 v8, 0x0

    .line 162
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v8, p3

    .line 163
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    double-to-int v10, v10

    double-to-int v5, v5

    .line 164
    invoke-static {v7, v10, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 165
    invoke-virtual {v4, v5}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    .line 166
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v6, v8, 0x1

    .line 168
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v6, v5}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;->process(II)V

    const/4 v5, 0x0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->finish()Z

    .line 172
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 174
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 175
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 176
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 177
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-interface {v2, v8, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    .line 180
    invoke-interface {v2, v3, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    return-void
.end method

.method public startGif(Ljava/io/File;)V
    .locals 7

    .line 79
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTmpPath:Ljava/io/File;

    .line 80
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelTask()V

    .line 81
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mPicList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 82
    new-instance p1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;)V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    .line 84
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mTimerTask:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mFrequencyCount:I

    int-to-long v5, p1

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopGif(Ljava/io/File;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->cancelTask()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->mSaveShotBitmapSuccess:Z

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
