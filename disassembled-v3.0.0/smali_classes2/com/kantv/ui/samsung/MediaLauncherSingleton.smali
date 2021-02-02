.class public Lcom/kantv/ui/samsung/MediaLauncherSingleton;
.super Landroid/view/View;
.source "MediaLauncherSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;
    }
.end annotation


# static fields
.field static final AUDIO_ALBUM_ART:Ljava/lang/String; = "albumArt"

.field static final AUDIO_ALBUM_NAME:Ljava/lang/String; = "albumName"

.field static final TAG:Ljava/lang/String; = "MediaLauncherSingleton"

.field static final TITLE:Ljava/lang/String; = "title"

.field static final URL:Ljava/lang/String; = "uri"

.field static final VIDEO_THUMBNAIL_URL:Ljava/lang/String; = "thumbnailUrl"

.field private static mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

.field private static mInstance:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

.field private static mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

.field private static mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;


# instance fields
.field private mFirstPlayerLaunch:Ljava/lang/Boolean;

.field private mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

.field private mService:Lcom/samsung/multiscreen/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    const/4 p1, 0x0

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mFirstPlayerLaunch:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$002(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->initMediaPlayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;)Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->resetService()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;
    .locals 1

    .line 615
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mInstance:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-direct {v0, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mInstance:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    .line 618
    :cond_0
    sget-object p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mInstance:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    return-object p0
.end method

.method private initMediaPlayer()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/Service;->createVideoPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/VideoPlayer;

    move-result-object v1

    sput-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    .line 67
    iget-object v1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/Service;->createAudioPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/AudioPlayer;

    move-result-object v1

    sput-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    .line 68
    iget-object v1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/Service;->createPhotoPlayer(Ljava/lang/String;)Lcom/samsung/multiscreen/PhotoPlayer;

    move-result-object v0

    sput-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    .line 71
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/VideoPlayer;->setDebug(Z)V

    .line 72
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/AudioPlayer;->setDebug(Z)V

    .line 73
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/PhotoPlayer;->setDebug(Z)V

    .line 75
    new-instance v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$1;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    .line 252
    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/VideoPlayer;->addOnMessageListener(Lcom/samsung/multiscreen/VideoPlayer$OnVideoPlayerListener;)V

    .line 254
    new-instance v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$2;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    .line 437
    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/AudioPlayer;->addOnMessageListener(Lcom/samsung/multiscreen/AudioPlayer$OnAudioPlayerListener;)V

    .line 439
    new-instance v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;

    invoke-direct {v0, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$3;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    .line 564
    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v1, v0}, Lcom/samsung/multiscreen/PhotoPlayer;->addOnMessageListener(Lcom/samsung/multiscreen/PhotoPlayer$OnPhotoPlayerListener;)V

    return-void
.end method

.method private resetService()V
    .locals 2

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    .line 646
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    return-void
.end method


# virtual methods
.method clearQueue()V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1047
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->clearList()V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1049
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->clearList()V

    goto :goto_0

    .line 1051
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->clearList()V

    :goto_0
    return-void
.end method

.method dequeue(Landroid/net/Uri;)V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1027
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer;->removeFromList(Landroid/net/Uri;)V

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1029
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer;->removeFromList(Landroid/net/Uri;)V

    goto :goto_0

    .line 1031
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer;->removeFromList(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 3

    const/4 v0, 0x0

    .line 664
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mFirstPlayerLaunch:Ljava/lang/Boolean;

    .line 665
    invoke-virtual {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 666
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 670
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    const/4 v1, 0x1

    new-instance v2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$5;

    invoke-direct {v2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$5;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/multiscreen/VideoPlayer;->disconnect(ZLcom/samsung/multiscreen/Result;)V

    :cond_1
    return-void
.end method

.method enqueue(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1012
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/multiscreen/PhotoPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method enqueue(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1000
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/multiscreen/VideoPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method enqueue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1007
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/multiscreen/AudioPlayer;->addToList(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method enqueue(Ljava/util/List;Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;",
            ")V"
        }
    .end annotation

    .line 1016
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne p2, v0, :cond_0

    .line 1017
    sget-object p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/multiscreen/VideoPlayer;->addToList(Ljava/util/List;)V

    goto :goto_0

    .line 1018
    :cond_0
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne p2, v0, :cond_1

    .line 1019
    sget-object p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/multiscreen/AudioPlayer;->addToList(Ljava/util/List;)V

    goto :goto_0

    .line 1020
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne p2, v0, :cond_2

    .line 1021
    sget-object p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {p2, p1}, Lcom/samsung/multiscreen/PhotoPlayer;->addToList(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method fetchQueue()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1037
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->getList()V

    goto :goto_0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1039
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->getList()V

    goto :goto_0

    .line 1041
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->getList()V

    :goto_0
    return-void
.end method

.method forward()V
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 967
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->forward()V

    :cond_0
    return-void
.end method

.method getControlStatus()V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    const-string v2, "MediaLauncherSingleton"

    if-ne v0, v1, :cond_0

    const-string v0, "getControlStatus called for photoPlayer"

    .line 1079
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->getControlStatus()V

    goto :goto_0

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    const-string v0, "getControlStatus called for videoPlayer"

    .line 1082
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->getControlStatus()V

    goto :goto_0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_2

    const-string v0, "getControlStatus called for audioPlayer"

    .line 1085
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->getControlStatus()V

    :cond_2
    :goto_0
    return-void
.end method

.method isConnected()Ljava/lang/Boolean;
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 651
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 653
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_2

    .line 655
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->STANDBY:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_3

    .line 657
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 659
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method mute()V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 979
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->mute()V

    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 981
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->mute()V

    goto :goto_0

    .line 983
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->mute()V

    :goto_0
    return-void
.end method

.method next()V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1122
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->next()V

    goto :goto_0

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1124
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->next()V

    goto :goto_0

    .line 1126
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->next()V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 944
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->pause()V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 947
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->pause()V

    goto :goto_0

    .line 950
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    if-eqz v0, :cond_2

    .line 951
    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->pause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 931
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    if-eqz v0, :cond_2

    .line 932
    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->play()V

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 934
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    if-eqz v0, :cond_2

    .line 935
    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->play()V

    goto :goto_0

    .line 937
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    if-eqz v0, :cond_2

    .line 938
    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->play()V

    :cond_2
    :goto_0
    return-void
.end method

.method playContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 807
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz v1, :cond_0

    .line 808
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$10;

    invoke-direct {v1, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$10;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/multiscreen/PhotoPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    :cond_0
    const-string p1, "MediaLauncherSingleton"

    const-string p2, "playContent(): un-initialized mPhotoPlayer."

    .line 832
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$11;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$11;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/PhotoPlayer;->setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V

    .line 843
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$12;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$12;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/PhotoPlayer;->setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V

    .line 853
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$13;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$13;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/PhotoPlayer;->setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V

    return-void
.end method

.method public playContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 872
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playing Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLauncherSingleton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 876
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;

    invoke-direct {v1, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    .line 874
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/multiscreen/VideoPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    .line 901
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$15;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$15;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/VideoPlayer;->setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V

    .line 909
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$16;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$16;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/VideoPlayer;->setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V

    .line 919
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$17;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$17;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/VideoPlayer;->setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V

    return-void

    :cond_0
    const-string p1, "playContent(): un-initialized mVideoPlayer."

    .line 897
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method playContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 743
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    const-string v1, "MediaLauncherSingleton"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz v0, :cond_0

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-object v2, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 748
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/kantv/ui/samsung/MediaLauncherSingleton$6;

    invoke-direct {v7, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$6;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    move-object v4, p2

    move-object v5, p3

    .line 745
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/multiscreen/AudioPlayer;->playContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    :cond_0
    const-string p1, "playContent(): un-initialized mAudioPlayer."

    .line 769
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$7;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$7;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/AudioPlayer;->setOnConnectListener(Lcom/samsung/multiscreen/Channel$OnConnectListener;)V

    .line 780
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$8;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$8;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/AudioPlayer;->setOnDisconnectListener(Lcom/samsung/multiscreen/Channel$OnDisconnectListener;)V

    .line 790
    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    new-instance p2, Lcom/kantv/ui/samsung/MediaLauncherSingleton$9;

    invoke-direct {p2, p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$9;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    invoke-virtual {p1, p2}, Lcom/samsung/multiscreen/AudioPlayer;->setOnErrorListener(Lcom/samsung/multiscreen/Channel$OnErrorListener;)V

    return-void
.end method

.method previous()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1146
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->previous()V

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1148
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->previous()V

    goto :goto_0

    .line 1150
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->previous()V

    :goto_0
    return-void
.end method

.method repeatQueue()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1057
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->repeat()V

    goto :goto_0

    .line 1059
    :cond_0
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->repeat()V

    :goto_0
    return-void
.end method

.method resumeApplicationInForeground()V
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1156
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->resumeApplicationInForeground()V

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1158
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->resumeApplicationInForeground()V

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_2

    .line 1160
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->resumeApplicationInForeground()V

    :cond_2
    :goto_0
    return-void
.end method

.method rewind()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 973
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->rewind()V

    :cond_0
    return-void
.end method

.method seekTo(I)V
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1071
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/multiscreen/VideoPlayer;->seekTo(ILjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1073
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/multiscreen/AudioPlayer;->seekTo(ILjava/util/concurrent/TimeUnit;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1132
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer;->setRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    goto :goto_0

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1134
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer;->setRepeat(Lcom/samsung/multiscreen/Player$RepeatMode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setService(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 622
    new-instance v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;-><init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/samsung/multiscreen/Service;)V

    invoke-virtual {p1, v0}, Lcom/samsung/multiscreen/Service;->isDMPSupported(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method setShuffle(Ljava/lang/Boolean;)V
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1140
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer;->setShuffle(Z)V

    :cond_0
    return-void
.end method

.method setVolume(I)V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1092
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/PhotoPlayer;->setVolume(I)V

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1094
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/VideoPlayer;->setVolume(I)V

    goto :goto_0

    .line 1096
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/AudioPlayer;->setVolume(I)V

    :goto_0
    return-void
.end method

.method shuffleQueue()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1065
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->shuffle()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 957
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->stop()V

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 959
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->stop()V

    goto :goto_0

    .line 961
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->stop()V

    :goto_0
    return-void
.end method

.method unmute()V
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 989
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->unMute()V

    goto :goto_0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 991
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->unMute()V

    goto :goto_0

    .line 993
    :cond_1
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->unMute()V

    :goto_0
    return-void
.end method

.method volumeDown()V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1112
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->volumeDown()V

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1114
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->volumeDown()V

    goto :goto_0

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_2

    .line 1116
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->volumeDown()V

    :cond_2
    :goto_0
    return-void
.end method

.method volumeUp()V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->PHOTO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_0

    .line 1102
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPhotoPlayer:Lcom/samsung/multiscreen/PhotoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/PhotoPlayer;->volumeUp()V

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_1

    .line 1104
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mVideoPlayer:Lcom/samsung/multiscreen/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/VideoPlayer;->volumeUp()V

    goto :goto_0

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mPlayerType:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object v1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->AUDIO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-ne v0, v1, :cond_2

    .line 1106
    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->mAudioPlayer:Lcom/samsung/multiscreen/AudioPlayer;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/AudioPlayer;->volumeUp()V

    :cond_2
    :goto_0
    return-void
.end method
