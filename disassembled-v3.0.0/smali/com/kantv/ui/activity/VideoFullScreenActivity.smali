.class public Lcom/kantv/ui/activity/VideoFullScreenActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;,
        Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;
    }
.end annotation


# static fields
.field public static final ERROR_ACTION:I = 0xa5

.field public static final GET_POSITION_INFO_ACTION:I = 0xa5

.field public static final PAUSE_ACTION:I = 0xa2

.field public static final PLAY_ACTION:I = 0xa1

.field private static final RESULT_CODE:I = 0x3ed

.field public static final STOP_ACTION:I = 0xa3

.field public static final SUCCES_ACTION:I = 0xa7

.field private static final TAG:Ljava/lang/String; = "VideoFullScreenActivity"

.field public static final TRANSITIONING_ACTION:I = 0xa4

.field public static mDevicesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TpUrl:Ljava/lang/String;

.field private currentProgressDetail:Ljava/lang/String;

.field private currentTime:J

.field private handler:Landroid/os/Handler;

.field private isOnDestroy:Z

.field private isnotchage:Z

.field private isnotshow:Z

.field private m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

.field private mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

.field private mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTime:Lorg/json/JSONObject;

.field private mTimeArray:Lorg/json/JSONArray;

.field private mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUpnpServiceConnection:Landroid/content/ServiceConnection;

.field private mUrl:Ljava/lang/String;

.field private netSpeedTimer:Ljava/util/Timer;

.field private notshowTime:I

.field private orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field private partId:J

.field private play:Z

.field private stateSpeedTimer:Ljava/util/Timer;

.field private title:Ljava/lang/String;

.field private videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isOnDestroy:Z

    .line 113
    new-instance v1, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-direct {v1}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    .line 117
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->stateSpeedTimer:Ljava/util/Timer;

    .line 121
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUrl:Ljava/lang/String;

    const-string v2, ""

    .line 153
    iput-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentProgressDetail:Ljava/lang/String;

    .line 156
    new-instance v3, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;

    invoke-direct {v3, p0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Lcom/kantv/ui/activity/VideoFullScreenActivity$1;)V

    iput-object v3, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play:Z

    .line 160
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isnotchage:Z

    const-wide/16 v3, 0x0

    .line 161
    iput-wide v3, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->partId:J

    .line 162
    iput-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->TpUrl:Ljava/lang/String;

    .line 166
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-direct {v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    .line 170
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    invoke-direct {v1}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    .line 172
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isnotshow:Z

    .line 174
    iput-wide v3, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    .line 176
    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$1;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->setPlayermSeekRatio()V

    return-void
.end method

.method static synthetic access$1100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lorg/json/JSONArray;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/util/Timer;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->stateSpeedTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->TpUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/kantv/ui/activity/VideoFullScreenActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->TpUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1708(Lcom/kantv/ui/activity/VideoFullScreenActivity;)I
    .locals 2

    .line 107
    iget v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->notshowTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->notshowTime:I

    return v0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/content/Context;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->stop()V

    return-void
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/kantv/ui/activity/VideoFullScreenActivity;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->pause()V

    return-void
.end method

.method static synthetic access$2200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isOnDestroy:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentProgressDetail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/activity/VideoFullScreenActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentProgressDetail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isnotshow:Z

    return p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Landroid/os/Handler;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method private bindServices()V
    .locals 3

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    return-object v0

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    return-object v0
.end method

.method private getEndTime()V
    .locals 4

    const-string v0, "VideoFullScreenActivity"

    .line 904
    :try_start_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dwonvideotime"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 906
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    .line 907
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    const-string v2, "dwonvideotimearray"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iniDownload mDownloadDetail     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iniDownload e     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$14;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->setOnDeviceListChangedListener(Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;)V

    return-void
.end method

.method private initView2()V
    .locals 10

    .line 497
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 499
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0903ae

    .line 500
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kantv/video/DownloadVideoPlayer;

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    .line 502
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, "M3U8_URL"

    .line 504
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUrl:Ljava/lang/String;

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    .line 506
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    .line 507
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 509
    array-length v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 510
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    const/4 v5, 0x2

    .line 512
    :try_start_0
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->partId:J

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->partId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->requestSwitchOver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 515
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v4, "isnotshow"

    .line 519
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isnotshow:Z

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getEndTime()V

    .line 522
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->execute()V

    .line 523
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->createLocalHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate  localUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v4, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-direct {v4, p0, v5}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 530
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v4, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 533
    new-instance v4, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v4}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;-><init>()V

    .line 534
    invoke-virtual {v4, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    .line 535
    invoke-virtual {v4, v3}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    .line 536
    invoke-virtual {v4, v3}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    .line 537
    invoke-virtual {v4, v3}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    .line 538
    invoke-virtual {v4, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 539
    invoke-virtual {v4, v5}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setSeekRatio(F)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v4

    .line 540
    invoke-virtual {v4, v0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    .line 542
    invoke-virtual {v0, v4}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 544
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    new-instance v5, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;

    invoke-direct {v5, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v4, v5}, Lcom/kantv/video/DownloadVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 576
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0, v4}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 577
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kantv/video/DownloadVideoPlayer;->setmWindow(Landroid/view/Window;)V

    .line 578
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    new-instance v4, Lcom/kantv/ui/activity/VideoFullScreenActivity$8;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$8;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v4}, Lcom/kantv/video/DownloadVideoPlayer;->setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/kantv/ui/activity/VideoFullScreenActivity$9;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$9;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    const-wide/16 v5, 0xfa0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    new-instance v4, Lcom/kantv/ui/activity/VideoFullScreenActivity$10;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$10;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v4}, Lcom/kantv/video/DownloadVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)V

    .line 600
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startPlayLogic()V

    .line 603
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->stateSpeedTimer:Ljava/util/Timer;

    new-instance v5, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;

    invoke-direct {v5, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$11;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x320

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 650
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0, p0, v3, v3}, Lcom/kantv/video/DownloadVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 651
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->tpIv:Landroid/widget/ImageView;

    new-instance v4, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$12;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isnotshow:Z

    if-eqz v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoPause()V

    .line 668
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->tpview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 669
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->setTpProgress2()V

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 671
    :goto_1
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v5

    iget-object v5, v5, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 672
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v5

    iget-object v5, v5, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v5}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    const v4, 0x7f0f00ba

    .line 676
    invoke-virtual {p0, v4}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectedDeviceName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 679
    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v5, v5, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v5, v5, Lcom/kantv/video/DownloadVideoPlayer;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 684
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 690
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->netSpeedTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private onClick()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->quitTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->changeTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$21;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$21;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$3;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->pause(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method private play()V
    .locals 3

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->TpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->TpUrl:Ljava/lang/String;

    new-instance v2, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$17;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    goto :goto_0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$18;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    :goto_0
    return-void
.end method

.method private refreshDeviceList(Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 2

    .line 1250
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getDmrDevices()Ljava/util/Collection;

    move-result-object v0

    .line 1251
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->setClingDeviceList(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    .line 1253
    sget-object v1, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1254
    sget-object v1, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/kantv/ui/activity/VideoFullScreenActivity$24;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .line 451
    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$TransportStateBroadcastReceiver;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Lcom/kantv/ui/activity/VideoFullScreenActivity$1;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zane.androidupnpdemo.action.playing"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.paused_playback"

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.stopped"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.transitioning"

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setPlayermSeekRatio()V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x1b7740

    const-string v2, "VideoFullScreenActivity"

    if-gt v0, v1, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e30  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    goto/16 :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    const v3, 0x36ee80

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e60  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    goto/16 :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x5265c0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e90  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x44aa200

    if-gt v0, v1, :cond_3

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e120  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSeekRatio(F)V

    :goto_0
    return-void
.end method

.method private setTpProgress()V
    .locals 7

    .line 975
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v1

    .line 977
    div-int/lit16 v2, v1, 0x3e8

    .line 978
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v3

    iput v2, v3, Lcom/kantv/ui/manager/UpnpManager;->progressMax:I

    .line 979
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    .line 981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cTime =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "     scTime= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    tTime "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  stTime   "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Time/1000  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 983
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 984
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 985
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->totalTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->release()V

    return-void
.end method

.method private setTpProgress2()V
    .locals 4

    .line 746
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v0

    iget v0, v0, Lcom/kantv/ui/manager/UpnpManager;->progressMax:I

    mul-int/lit16 v1, v0, 0x3e8

    .line 747
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stTime =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoFullScreenActivity"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v2, v2, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v2, v2, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 750
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 751
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->totalTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private stop()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$2;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    .line 216
    new-instance v0, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {v0}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v1, "main"

    .line 217
    iput-object v1, v0, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 v1, 0x3

    .line 218
    iput v1, v0, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 219
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static suffixName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 491
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPositionInfo()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$4;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_4

    const/16 p1, 0x3ee

    if-ne p2, p1, :cond_4

    const-string p1, "onResumeonActivityResult"

    .line 926
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 927
    iput-boolean p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play:Z

    .line 928
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "name"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 929
    new-instance p3, Lcom/kantv/ui/activity/VideoFullScreenActivity$16;

    invoke-direct {p3, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$16;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {p0, p3}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 937
    sget-object p3, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 938
    invoke-static {p2}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 942
    :cond_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    .line 944
    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p3

    .line 945
    invoke-static {p3}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0f00ba

    .line 949
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedDeviceName"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemshifou"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 959
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p2, v2}, Lcom/kantv/video/DownloadVideoPlayer;->setTpViewVisible(Z)V

    .line 960
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p2, p1}, Lcom/kantv/video/DownloadVideoPlayer;->setTpDviseText(Ljava/lang/String;)V

    .line 962
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->setTpProgress()V

    .line 963
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play()V

    .line 964
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->onClick()V

    .line 965
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    const-string p2, ""

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->seo:Ljava/lang/String;

    .line 966
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->tid:Ljava/lang/String;

    .line 967
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->name:Ljava/lang/String;

    .line 968
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->title:Ljava/lang/String;

    .line 969
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->url:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1164
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1168
    iget-wide v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    .line 1169
    iput-wide v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    iget-wide v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/kantv/video/DownloadVideoPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 423
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 424
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->setContentView(I)V

    .line 425
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V

    .line 426
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 427
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;

    invoke-direct {p1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    .line 428
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->initListeners()V

    .line 429
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->bindServices()V

    .line 430
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->registerReceivers()V

    .line 431
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$6;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$6;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->onClick()V

    .line 440
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u5f71\u89c6_\u64ad\u653e_\u5168\u5c4f"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 867
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 868
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->isOnDestroy:Z

    const-string v0, "VideoFullScreenActivity"

    const-string v1, "onDestroy"

    .line 869
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->unregister()V

    .line 871
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->finish()V

    .line 873
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 874
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/DownloadVideoPlayer;->release()V

    .line 875
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->releaseAllVideos()V

    .line 876
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 877
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kantv/video/DownloadVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 878
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    .line 879
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 881
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 885
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mHandler:Landroid/os/Handler;

    .line 886
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 887
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->handler:Landroid/os/Handler;

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 890
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void
.end method

.method public onEventMainThread(Lcom/kantv/ui/bean/TestEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 720
    iget-object v0, p1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget p1, p1, Lcom/kantv/ui/bean/TestEvent;->tag:I

    if-nez p1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 9

    .line 821
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onPause()V

    .line 822
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->encrypt()V

    const-string v0, "VideoFullScreenActivity"

    const-string v1, "onPause"

    .line 823
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoPause()V

    .line 826
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    const/16 v2, 0xbb8

    if-le v1, v2, :cond_0

    add-int/lit16 v1, v1, -0xbb8

    .line 830
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_5

    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "dwonvideotime"

    const-string v4, "dwonvideotimearray"

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 835
    :goto_0
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 836
    iget-object v7, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "name"

    .line 837
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 838
    iget-object v8, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 839
    iget-object v6, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v7, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->toJSON(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const/4 v6, 0x0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 845
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->toJSON(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 847
    :cond_3
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 848
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyTime mTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 851
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    .line 852
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    .line 853
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->toJSON(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 854
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTimeArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyTime 2mTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTime:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 859
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "VideoFullScreenActivity"

    const-string v1, "onResume"

    .line 810
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;->decrypt()V

    .line 812
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play:Z

    if-eqz v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->getCurPlay()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->onVideoResume()V

    :cond_0
    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->play:Z

    .line 816
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1177
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1178
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->videoPlayer:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    .line 1179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->currentTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFullScreenActivity"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 351
    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$5;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/widget/SeekBar;)V

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSwitchOver(Ljava/lang/String;)V
    .locals 3

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSwitchOver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFullScreenActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1131
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "part_id"

    .line 1135
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "devicetype"

    const-string v1, "0"

    .line 1136
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object p1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v1, "_token"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    :cond_0
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->requestUrl(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$23;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public restartPlay()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$22;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method public setingProgress()V
    .locals 6

    .line 799
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->netSpeedTimer:Ljava/util/Timer;

    new-instance v1, Lcom/kantv/ui/activity/VideoFullScreenActivity$15;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoFullScreenActivity$15;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public toJSON(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 894
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 895
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 896
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public unregister()V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
