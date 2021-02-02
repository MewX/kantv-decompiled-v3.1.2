.class public Lcom/kantv/ui/activity/VideoPlayActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;,
        Lcom/kantv/ui/activity/VideoPlayActivity$TransportStateBroadcastReceiver;,
        Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;
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

.field public static final TAG:Ljava/lang/String; = "VideoPlayActivity"

.field public static final TRANSITIONING_ACTION:I = 0xa4

.field public static mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter; = null

.field public static mDevicesAdapter:Landroid/widget/ArrayAdapter; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static must_shared:Ljava/lang/String; = "-1"


# instance fields
.field private WXApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private adCurrentJumpTime:I

.field private adCurrentOpenType:Ljava/lang/String;

.field private adCurrentUrl:Ljava/lang/String;

.field adExitLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090036
    .end annotation
.end field

.field adExitTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090033
    .end annotation
.end field

.field private adHandler:Landroid/os/Handler;

.field adLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09003c
    .end annotation
.end field

.field adSoundImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090040
    .end annotation
.end field

.field private adsArray:Lorg/json/JSONArray;

.field private adsJson:Lorg/json/JSONObject;

.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private arrayLength:I

.field public b:Landroid/os/Bundle;

.field bindEmail:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006a
    .end annotation
.end field

.field bindEmailContent:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09006b
    .end annotation
.end field

.field clickCallback:Lcom/kantv/common/interfaces/ClickCallback;

.field private commentSumNum:Ljava/lang/String;

.field private currentNum:I

.field private currentProgressDetail:Ljava/lang/String;

.field private currentTime:J

.field currentTimeTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900cc
    .end annotation
.end field

.field public currentUrl:Ljava/lang/String;

.field private destroy:I

.field diviseTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e6
    .end annotation
.end field

.field feedBack:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field public filmImgUrl:Ljava/lang/String;

.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field fullAdBottomView:Lcom/tandong/bottomview/view/BottomView;

.field fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

.field private history:Ljava/lang/String;

.field public isPause:Z

.field private isPlay:Z

.field private isXianlu:Z

.field public isnotshow:Z

.field private kafka_domain:Ljava/lang/String;

.field private lineNum:I

.field loadErrorLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090200
    .end annotation
.end field

.field public login:Z

.field loginRegUnlockLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090207
    .end annotation
.end field

.field mAudioUtil:Lcom/kantv/video/util/AudioUtil;

.field private mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

.field private mCircuitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String4Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field public mErrorText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903cb
    .end annotation
.end field

.field private mFragmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field public mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901de
    .end annotation
.end field

.field public mPartId:Ljava/lang/String;

.field private mPlayinfo:Lorg/json/JSONObject;

.field private mSearch:Lcom/samsung/multiscreen/Search;

.field public mSeo:Ljava/lang/String;

.field private mService:Lcom/samsung/multiscreen/Service;

.field mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09035f
    .end annotation
.end field

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field public mTid:Ljava/lang/String;

.field private mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUpnpServiceConnection:Landroid/content/ServiceConnection;

.field public mUrl:Ljava/lang/String;

.field private mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

.field public mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field mVideoPlayerRl:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903cc
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903c6
    .end annotation
.end field

.field private mVoiceNum:I

.field mWebView:Landroid/webkit/WebView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903e0
    .end annotation
.end field

.field private netSpeedTimer:Ljava/util/Timer;

.field private orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field pauseTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090295
    .end annotation
.end field

.field private play:Z

.field progressBarSb:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a3
    .end annotation
.end field

.field private proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

.field scoreTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902e1
    .end annotation
.end field

.field public shareFilmImgUrl:Ljava/lang/String;

.field shareImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090328
    .end annotation
.end field

.field private shareLettersId:Ljava/lang/String;

.field private sharePlanDesc:Ljava/lang/String;

.field private sharePlanTitle:Ljava/lang/String;

.field shareUnlockLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09032a
    .end annotation
.end field

.field public shareurl:Ljava/lang/String;

.field public showInfoSort:Ljava/lang/String;

.field startIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090354
    .end annotation
.end field

.field private stateSpeedTimer:Ljava/util/Timer;

.field stateTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090356
    .end annotation
.end field

.field private stopRecordTimer:Z

.field totalTimeTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090385
    .end annotation
.end field

.field public tpChoice:Z

.field tpView:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090388
    .end annotation
.end field

.field private tvTitle:Ljava/lang/String;

.field public uniShareUrl:Ljava/lang/String;

.field private userScore:Ljava/lang/String;

.field videoAd:Landroid/widget/VideoView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903b0
    .end annotation
.end field

.field private videoAdFinished:Z

.field videoDetailChildLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903c3
    .end annotation
.end field

.field videoDetailLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903af
    .end annotation
.end field

.field private watchRecordTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    .line 252
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    .line 253
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const-string v1, ""

    .line 255
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    .line 257
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareurl:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->showInfoSort:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    .line 266
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    const/4 v2, 0x0

    .line 269
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    .line 270
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpChoice:Z

    const/4 v3, 0x1

    .line 271
    iput-boolean v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->play:Z

    .line 273
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentProgressDetail:Ljava/lang/String;

    .line 274
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 275
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateSpeedTimer:Ljava/util/Timer;

    .line 279
    new-instance v4, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-direct {v4}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    .line 286
    iput v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->destroy:I

    .line 290
    new-instance v4, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;

    invoke-direct {v4, p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Lcom/kantv/ui/activity/VideoPlayActivity$1;)V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mHandler:Landroid/os/Handler;

    .line 299
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPartId:Ljava/lang/String;

    .line 300
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    .line 303
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCircuitData:Ljava/util/List;

    .line 304
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isXianlu:Z

    .line 305
    iput v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->lineNum:I

    const-wide/16 v3, 0x0

    .line 306
    iput-wide v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTime:J

    .line 307
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    .line 310
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stopRecordTimer:Z

    .line 311
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareLettersId:Ljava/lang/String;

    .line 312
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    .line 313
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    .line 315
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 316
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullAdBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 319
    iput v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    .line 320
    iput v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentNum:I

    .line 321
    new-instance v3, Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;

    invoke-direct {v3, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$AdExitHandler;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    iput-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    .line 322
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsJson:Lorg/json/JSONObject;

    .line 324
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsArray:Lorg/json/JSONArray;

    .line 325
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    .line 326
    iput v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    .line 330
    iput v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentJumpTime:I

    .line 332
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->userScore:Ljava/lang/String;

    .line 333
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    .line 335
    iput-boolean v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAdFinished:Z

    .line 336
    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 340
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    .line 342
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    .line 754
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$15;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$15;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->clickCallback:Lcom/kantv/common/interfaces/ClickCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    sput-object p0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareLettersId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->playVideoControl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPlay:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/kantv/ui/activity/VideoPlayActivity;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->wxShare(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isXianlu:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initSamsungDeviceListener()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->lineNum:I

    return p0
.end method

.method static synthetic access$2002(Lcom/kantv/ui/activity/VideoPlayActivity;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->lineNum:I

    return p1
.end method

.method static synthetic access$2100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCircuitData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kantv/ui/activity/VideoPlayActivity;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->initLineSwitchData(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONArray;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsArray:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsArray:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    return p0
.end method

.method static synthetic access$2502(Lcom/kantv/ui/activity/VideoPlayActivity;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    return p1
.end method

.method static synthetic access$2600(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsJson:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentNum:I

    return p0
.end method

.method static synthetic access$2702(Lcom/kantv/ui/activity/VideoPlayActivity;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentNum:I

    return p1
.end method

.method static synthetic access$2708(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 2

    .line 155
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentNum:I

    return v0
.end method

.method static synthetic access$2800(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->arrayLength:I

    return p0
.end method

.method static synthetic access$2802(Lcom/kantv/ui/activity/VideoPlayActivity;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->arrayLength:I

    return p1
.end method

.method static synthetic access$2900(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->setPlayermSeekRatio()V

    return-void
.end method

.method static synthetic access$3002(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAdFinished:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentOpenType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/kantv/ui/activity/VideoPlayActivity;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    return p0
.end method

.method static synthetic access$3500(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initWebView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->userScore:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->getImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Timer;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateSpeedTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->showErrorPage()V

    return-void
.end method

.method static synthetic access$4300(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stopRecordTimer:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->pushVideoExitTime()V

    return-void
.end method

.method static synthetic access$4500(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/List;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/VideoPlayActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->clickShareImg()V

    return-void
.end method

.method static synthetic access$502(Lcom/kantv/ui/activity/VideoPlayActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$6300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/fragment/VideoCommentFragment;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->initVideoDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$7900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/util/Map;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/os/Handler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/kantv/ui/activity/VideoPlayActivity;)Landroid/content/Context;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentProgressDetail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8302(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentProgressDetail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$8500(Lcom/kantv/ui/activity/VideoPlayActivity;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->wxShareUnlock(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->recordUserShare()V

    return-void
.end method

.method static synthetic access$8700(Lcom/kantv/ui/activity/VideoPlayActivity;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/activity/VideoPlayActivity;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/kantv/ui/activity/VideoPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    return-object p1
.end method

.method private bindServices()V
    .locals 3

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private clickShareImg()V
    .locals 5

    .line 3070
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    .line 3071
    sput-object v1, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    .line 3072
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->wxAppNoInstallDialog()V

    return-void

    :cond_0
    const-string v0, "-1"

    .line 3075
    sput-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    .line 3076
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    .line 3077
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3078
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3079
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v4, "noncestr"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v4, "sbID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3082
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v3, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v4, "sign"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v3, "_token"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareLettersId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3085
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareLettersId:Ljava/lang/String;

    const-string v3, "letters_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3087
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3089
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->shareClick(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$53;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$53;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private filterPageSwitch()Z
    .locals 5

    .line 3172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    const-string v1, "VideoPlayActivity"

    const-string v2, "*** quickly Page Switch!"

    .line 3174
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3176
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTime:J

    return v0
.end method

.method private getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 967
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 968
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    const/16 v0, 0xc8

    .line 969
    invoke-virtual {p1, v0, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p1

    .line 971
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 972
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 974
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private initAdRequest(Ljava/lang/String;)V
    .locals 4

    .line 1237
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1238
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    .line 1239
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1240
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v0, "type"

    const-string v1, "play_"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->getAd(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity$19;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2515
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2516
    new-instance v1, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v1, v0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2517
    invoke-virtual {v1}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$42;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$42;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$41;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$41;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u53bb\u66f4\u65b0"

    .line 2522
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2527
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2475
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2476
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$39;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$39;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$38;

    invoke-direct {p2, p0, p3}, Lcom/kantv/ui/activity/VideoPlayActivity$38;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    const-string p3, "\u786e\u5b9a"

    .line 2481
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2491
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initLimitIpDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3051
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3052
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$52;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$52;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u9000\u51faAPP"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$51;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$51;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u767b\u5f55/\u6ce8\u518c"

    .line 3057
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 3062
    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initLineSwitchData(I)V
    .locals 4

    .line 1838
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1839
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1840
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    sget-object v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    const-string v2, "part_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "circuit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->lineSwitch(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$26;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;ZI)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$10;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$10;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->setOnDeviceListChangedListener(Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;)V

    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3252
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3253
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$58;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$58;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$57;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$57;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 3257
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 3274
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1439
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1440
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1442
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "preview"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1443
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "tvid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v0, "part_id"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v0, "circuit"

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string p5, "seo"

    invoke-interface {p1, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string p5, "devicetype"

    const-string p6, "0"

    invoke-interface {p1, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object p5, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string p6, "interfaceVersion"

    invoke-interface {p1, p6, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {p1, p5}, Lcom/kantv/common/api/ApiService;->IndexPlay(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p5, Lcom/kantv/ui/activity/VideoPlayActivity$20;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p0

    move v3, p7

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kantv/ui/activity/VideoPlayActivity$20;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initSamsungDeviceListener()V
    .locals 3

    .line 686
    :try_start_0
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "VideoPlayActivity"

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "Can\'t start Discovery."

    .line 687
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    if-nez v0, :cond_1

    .line 691
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/multiscreen/Service;->search(Landroid/content/Context;)Lcom/samsung/multiscreen/Search;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") Search instantiated.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$11;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$11;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/multiscreen/Search;->setOnServiceFoundListener(Lcom/samsung/multiscreen/Search$OnServiceFoundListener;)V

    .line 715
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$12;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$12;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/multiscreen/Search;->setOnStartListener(Lcom/samsung/multiscreen/Search$OnStartListener;)V

    .line 722
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$13;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$13;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/multiscreen/Search;->setOnStopListener(Lcom/samsung/multiscreen/Search$OnStopListener;)V

    .line 729
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$14;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$14;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/multiscreen/Search;->setOnServiceLostListener(Lcom/samsung/multiscreen/Search$OnServiceLostListener;)V

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/multiscreen/Search;->start(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Discovery Already Started.."

    .line 745
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "New Discovery Started.."

    .line 747
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initVersionUpdate()V
    .locals 4

    .line 1874
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1875
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v3, "_token"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    invoke-static {}, Lcom/kantv/common/utils/Utils;->isGooglePlayVersion()Z

    move-result v0

    const-string v2, "canala"

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1886
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->version_up(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$27;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$27;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initVideoDetail(Ljava/lang/String;)V
    .locals 3

    .line 1955
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    if-nez v0, :cond_1

    .line 1959
    new-instance v0, Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-direct {v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    .line 1961
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tid"

    .line 1962
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/VideoCommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1966
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-nez p1, :cond_2

    .line 1967
    new-instance p1, Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-direct {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    .line 1969
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1974
    new-instance p1, Lcom/kantv/ui/activity/VideoPlayActivity$29;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$29;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 1993
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1994
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1995
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    sget-object v0, Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;->MODE_WEIGHT_NOEXPAND_SAME:Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorMode(Lcom/kantv/ui/view/TabPageIndicator$IndicatorMode;)V

    .line 1996
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerColor(I)V

    .line 1997
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setDividerPadding(I)V

    .line 1998
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setIndicatorColor(I)V

    .line 1999
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColorSelected(I)V

    .line 2000
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setTextColor(I)V

    .line 2001
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/kantv/lib/indicator/DisplayUtil;->spToPix(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/kantv/ui/view/TabPageIndicator;->setTextSize(I)V

    .line 2002
    new-instance p1, Lq/rorbin/badgeview/QBadgeView;

    invoke-direct {p1, p0}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 2003
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTabLayout:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {p1, v0}, Lq/rorbin/badgeview/QBadgeView;->bindTarget(Landroid/view/View;)Lq/rorbin/badgeview/Badge;

    const/4 v0, 0x1

    .line 2004
    invoke-virtual {p1, v0}, Lq/rorbin/badgeview/QBadgeView;->setExactMode(Z)Lq/rorbin/badgeview/Badge;

    .line 2005
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2006
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->commentSumNum:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lq/rorbin/badgeview/QBadgeView;->setBadgeNumber(I)Lq/rorbin/badgeview/Badge;

    :cond_3
    const/high16 v1, 0x42480000    # 50.0f

    const/4 v2, 0x0

    .line 2008
    invoke-virtual {p1, v1, v2, v0}, Lq/rorbin/badgeview/QBadgeView;->setGravityOffset(FFZ)Lq/rorbin/badgeview/Badge;

    .line 2009
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lq/rorbin/badgeview/QBadgeView;->setBadgeBackgroundColor(I)Lq/rorbin/badgeview/Badge;

    return-void
.end method

.method private initVideoTopic()V
    .locals 4

    .line 1912
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1913
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1914
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v3, "tid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "preview"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4f20\u53c2"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->topic(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$28;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$28;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initView()V
    .locals 13

    .line 410
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Login_State"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    .line 411
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 412
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    .line 413
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v2, "tid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v3, "seo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v4, "isnotshow"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    .line 416
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v4, "pushtype"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$5;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$5;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v3, 0x320

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v4, "zhuanti"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initVideoTopic()V

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initAdRequest(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v4, "part_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const-string v6, ""

    const-string v7, ""

    const-string v8, "0"

    const-string v9, "1"

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/kantv/ui/activity/VideoPlayActivity;->initRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v2, "part"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const-string v9, "1"

    const-string v10, "1"

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/kantv/ui/activity/VideoPlayActivity;->initRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 509
    :goto_0
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    if-eqz v0, :cond_6

    .line 511
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->hideAllUI()V

    .line 513
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->setTpProgress2()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 515
    :goto_1
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v3

    iget-object v3, v3, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 516
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v3

    iget-object v3, v3, Lcom/kantv/ui/manager/UpnpManager;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "       "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoPlayActivity"

    invoke-static {v5, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    const v2, 0x7f0f00ba

    .line 520
    invoke-virtual {p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedDeviceName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 523
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 528
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    const-string v2, "\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :try_start_0
    const-string v0, "1106453625"

    .line 533
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTencent:Lcom/tencent/tauth/Tencent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v0, "wx70cbf5b9aacb0e47"

    .line 538
    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 539
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 541
    :cond_7
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    .line 542
    new-instance v0, Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-direct {v0, p0}, Lcom/kantv/ui/samsung/TVListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    .line 545
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {v0, p0, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 547
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 549
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$6;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$7;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$7;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V

    .line 588
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$8;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$8;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;)V

    .line 598
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$9;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$9;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setWindow(Landroid/view/Window;)V

    .line 605
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->clickCallback:Lcom/kantv/common/interfaces/ClickCallback;

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setClickCallback(Lcom/kantv/common/interfaces/ClickCallback;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 1725
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 1726
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1727
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1728
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1730
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1731
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1732
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v1, 0x2

    .line 1733
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, -0x1

    .line 1734
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1735
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private lineSwitchDialog()V
    .locals 5

    .line 946
    new-instance v0, Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 947
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u64ad\u653e\u7ebf\u8def"

    .line 948
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/ActionSheetDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/ActionSheetDialog;

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7ebf\u8def"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;->Blue:Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;

    new-instance v4, Lcom/kantv/ui/activity/VideoPlayActivity$16;

    invoke-direct {v4, p0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity$16;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/kantv/ui/view/ActionSheetDialog;->addSheetItem(Ljava/lang/String;Lcom/kantv/ui/view/ActionSheetDialog$SheetItemColor;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;)Lcom/kantv/ui/view/ActionSheetDialog;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {v0}, Lcom/kantv/ui/view/ActionSheetDialog;->show()V

    return-void
.end method

.method private pause()V
    .locals 2

    const-string v0, "VideoPlayActivity"

    const-string v1, "\u8fd0\u884cpause"

    .line 2656
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$45;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$45;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->pause(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method private playVideoControl(Ljava/lang/String;)V
    .locals 14

    const-string v0, "2"

    .line 1594
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 1595
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    const-string v1, "history"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    .line 1596
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "detailTitle"

    const-string v2, "playlogo"

    const-string v3, "url"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1597
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "part"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1598
    iget-object v4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sec"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 1600
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1602
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    const-string v4, "prologue"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v10, p1, 0x1

    .line 1605
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    const-string v1, "epilogue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/kantv/ui/activity/VideoPlayActivity;->initPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1607
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1608
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v12, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    const-string v10, ""

    const-string v11, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/kantv/ui/activity/VideoPlayActivity;->initPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/kantv/ui/activity/VideoPlayActivity;->initPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isXianlu:Z

    return-void
.end method

.method private pushVideoExitTime()V
    .locals 12

    const-string v0, "/"

    const-string v1, "VideoPlayActivity"

    const-string v2, ""

    .line 2740
    :try_start_0
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v3}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2741
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v3}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v3

    const/16 v4, 0x1f40

    if-le v3, v4, :cond_0

    .line 2743
    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2745
    :cond_0
    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v4, v3

    .line 2747
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "token"

    invoke-static {v3, v5, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 2748
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v3}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getDuration()I

    move-result v3

    .line 2749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u64ad\u653e\u603b\u65f6\u95f4\u957f\u5ea6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    if-nez v5, :cond_1

    return-void

    .line 2752
    :cond_1
    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    const-string v6, "zhuanti"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    const-string v6, "sports"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    const-string v6, "live"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    const-string v6, "sportvs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2753
    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 2754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPartId=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    sget-object v6, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2756
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    .line 2759
    :cond_2
    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    iget-object v6, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    sget-object v7, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->kafka_domain:Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Lcom/kantv/ui/config/HttpRequest;->MemoryPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private recordUserShare()V
    .locals 4

    .line 3122
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3123
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3124
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3125
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->usershare(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$54;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$54;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .line 615
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$TransportStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity$TransportStateBroadcastReceiver;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Lcom/kantv/ui/activity/VideoPlayActivity$1;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zane.androidupnpdemo.action.playing"

    .line 617
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.paused_playback"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.stopped"

    .line 619
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.transitioning"

    .line 620
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setPlayermSeekRatio()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x1b7740

    const-string v2, "VideoPlayActivity"

    if-gt v0, v1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e30  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setSeekRatio(F)V

    goto/16 :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    const v3, 0x36ee80

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e60  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setSeekRatio(F)V

    goto :goto_0

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x5265c0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e90  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setSeekRatio(F)V

    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v0

    const v1, 0x44aa200

    if-gt v0, v1, :cond_3

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u4e8e120  8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setSeekRatio(F)V

    goto :goto_0

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->setSeekRatio(F)V

    :goto_0
    return-void
.end method

.method private setTpProgress()V
    .locals 7

    .line 2531
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 2532
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getDuration()I

    move-result v1

    .line 2533
    div-int/lit16 v2, v1, 0x3e8

    .line 2534
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v3

    iput v2, v3, Lcom/kantv/ui/manager/UpnpManager;->progressMax:I

    .line 2535
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    .line 2536
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    .line 2537
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

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2542
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2543
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->totalTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2546
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2547
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2548
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->totalTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setTpProgress2()V
    .locals 4

    .line 1054
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object v0

    iget v0, v0, Lcom/kantv/ui/manager/UpnpManager;->progressMax:I

    mul-int/lit16 v1, v0, 0x3e8

    .line 1055
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stTime =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayActivity"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1058
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->progressBarSb:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1059
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->totalTimeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorPage()V
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailChildLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1584
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->loadErrorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showNormalPage()V
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailChildLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->loadErrorLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private stop()V
    .locals 2

    .line 2688
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$46;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$46;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    .line 2699
    new-instance v0, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {v0}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v1, "main"

    .line 2700
    iput-object v1, v0, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 v1, 0x3

    .line 2701
    iput v1, v0, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 2702
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2503
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2504
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$40;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$40;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v0, "\u7acb\u5373\u4fee\u6539"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2510
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private wxAppNoInstallDialog()V
    .locals 3

    .line 3155
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 3156
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    const-string v1, "\u672a\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\uff0c\n\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$56;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$56;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$55;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$55;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-string v2, "\u73b0\u5728\u4e0b\u8f7d"

    .line 3160
    invoke-virtual {v0, v2, v1}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 3167
    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/AlertDialog;->setCancelable(Z)Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private wxShare(I)V
    .locals 4

    .line 982
    :try_start_0
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 983
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->uniShareUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 984
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 985
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_0

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u6b63\u5728\u770bTV\u4e0a\u770b\u3010"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3011,\u770b\u4e00\u6b21\u8d5a\u5230\u4e00\u6b21"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 990
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v0, 0x7f0f00be

    .line 993
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 996
    :goto_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08011f

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    const/4 v2, 0x1

    const/16 v3, 0x64

    .line 1001
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1002
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1003
    invoke-static {v3, v2}, Lcom/kantv/common/utils/Utils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 1004
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    .line 1005
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1006
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 1007
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 1008
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private wxShareUnlock(I)V
    .locals 6

    .line 1017
    :try_start_0
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 1018
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 1019
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 1020
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00c3

    .line 1023
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 1025
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->sharePlanDesc:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v0, 0x7f0f00c4

    .line 1028
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 1031
    :goto_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08011f

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareFilmImgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    const/16 v3, 0x64

    .line 1036
    invoke-static {v0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1037
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1038
    invoke-static {v3, v2}, Lcom/kantv/common/utils/Utils;->bmpToByteArray(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 1039
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "webpage"

    .line 1040
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 1041
    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 1042
    iput p1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 1043
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1045
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public checkPersonalInfo()Z
    .locals 3

    .line 2270
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2271
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0f006c

    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fee\u6539\u8d44\u6599\u63d0\u793a"

    const-string v1, "\u4e3a\u4e86\u8ba9\u5927\u5bb6\u66f4\u597d\u7684\u8bb0\u4f4f\u4f60\uff0c\n\u4e30\u5bcc\u4f60\u7684\u4e2a\u4eba\u8d44\u6599\u5427\uff01"

    .line 2272
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->updatePersonInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public commentDialog()V
    .locals 4

    .line 2281
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    const v1, 0x7f1000ae

    const v2, 0x7f0c003d

    invoke-direct {v0, p0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 2282
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2283
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2284
    new-instance v3, Lcom/kantv/ui/activity/VideoPlayActivity$34;

    invoke-direct {v3, p0, v2, v0}, Lcom/kantv/ui/activity/VideoPlayActivity$34;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1000ad

    .line 2347
    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v1, 0x1

    .line 2348
    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 2349
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 2350
    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$35;

    invoke-direct {v1, p0, v2}, Lcom/kantv/ui/activity/VideoPlayActivity$35;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public getPositionInfo()V
    .locals 2

    .line 2947
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$50;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$50;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V

    return-void
.end method

.method public initPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1634
    new-instance p2, Lcom/kantv/common/bean/PlayRecordBean;

    invoke-direct {p2}, Lcom/kantv/common/bean/PlayRecordBean;-><init>()V

    .line 1635
    iput-boolean p4, p2, Lcom/kantv/common/bean/PlayRecordBean;->isRecord:Z

    if-eqz p4, :cond_1

    .line 1637
    invoke-static {p8}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-string p8, "part"

    .line 1639
    invoke-virtual {p4, p8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p2, Lcom/kantv/common/bean/PlayRecordBean;->part:Ljava/lang/String;

    const-string p8, "sec"

    .line 1640
    invoke-virtual {p4, p8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    mul-int/lit16 p4, p4, 0x3e8

    iput p4, p2, Lcom/kantv/common/bean/PlayRecordBean;->time:I

    .line 1642
    :cond_1
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 1643
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "*** currentUrl: "

    invoke-virtual {p4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p8, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {p4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p8, "VideoPlayActivity"

    invoke-static {p8, p4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsArray:Lorg/json/JSONArray;

    invoke-static {p4}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p4

    const-string p8, "https://www.youtube.com"

    if-nez p4, :cond_2

    .line 1645
    invoke-virtual {p1, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1650
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initWebView()V

    .line 1651
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 1657
    :cond_2
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, ""

    const-string v1, "forced"

    invoke-static {p4, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1658
    invoke-static {p4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1659
    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    if-ge v1, p4, :cond_3

    .line 1660
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1661
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mErrorText:Landroid/widget/TextView;

    const-string p2, "\u65e7\u7248\u672c\u5df2\u65e0\u6cd5\u64ad\u653e\uff0c\u8bf7\u5347\u7ea7\u81f3\u6700\u65b0\u7684\u7248\u672c\uff0c\u5373\u53ef\u89c2\u770b\u6240\u6709\u8d44\u6e90\uff01"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1662
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initVersionUpdate()V

    return-void

    .line 1666
    :cond_3
    invoke-static {}, Ldebug/KanApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kantv/common/base/BaseApplication;->isLimitIp()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-boolean p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    if-nez p4, :cond_4

    .line 1667
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1670
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$21;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$21;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p4, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1679
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1680
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const-string p4, "\u63d0\u793a"

    const-string v1, "\u975e\u5e38\u62b1\u6b49\uff0c\u76ee\u524d\u53ea\u9488\u5bf9\u52a0\u62ff\u5927\u3001\u6fb3\u5927\u5229\u4e9a\u548c\u65b0\u897f\u5170\u5f00\u653e\uff0c\u5176\u4ed6\u5730\u533a\u65e0\u6cd5\u89c2\u770b\u3002"

    .line 1681
    invoke-direct {p0, p4, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->initLimitIpDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :cond_4
    invoke-virtual {p1, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    return-void

    .line 1686
    :cond_5
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p4, v2}, Lcom/kantv/video/KTVideoPlayer;->setVisibility(I)V

    .line 1687
    iget-object p4, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p4, p2, p5, p6, p7}, Lcom/kantv/video/KTVideoPlayer;->setRecord(Lcom/kantv/common/bean/PlayRecordBean;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p2, p1, p3}, Lcom/kantv/video/KTVideoPlayer;->play(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsArray:Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1693
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$22;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$22;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 p4, 0x7d0

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1703
    :cond_6
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    if-nez p1, :cond_7

    .line 1704
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    .line 1705
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$23;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$23;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v3, 0x1f4

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1720
    :cond_7
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5f71\u89c6_\u64ad\u653e"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {p2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1064
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

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_8

    const/16 p1, 0x3ee

    const-string v0, "name"

    const-string v2, "onResumeonActivityResult"

    const/4 v3, 0x0

    if-ne p2, p1, :cond_2

    .line 1071
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iput-boolean v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->play:Z

    .line 1073
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1074
    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$17;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$17;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {p0, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1083
    sget-object p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/kantv/ui/samsung/TVListAdapter;->getCount()I

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    .line 1084
    invoke-virtual {p2}, Lcom/kantv/ui/samsung/TVListAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_1

    .line 1088
    :cond_0
    sget-object p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/multiscreen/Service;

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    .line 1090
    invoke-static {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    invoke-virtual {p1, p2}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->setService(Lcom/samsung/multiscreen/Service;)V

    const-wide/16 p1, 0x3e8

    .line 1092
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "*** InterruptedException "

    .line 1094
    invoke-static {p2}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 1095
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1098
    :goto_0
    invoke-static {p0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, p2, p3, v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->playContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_8

    .line 1104
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iput-boolean v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->play:Z

    .line 1106
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1107
    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$18;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$18;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {p0, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1116
    sget-object p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    .line 1120
    :cond_3
    sget-object p2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    .line 1121
    invoke-static {p1}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 1125
    :cond_4
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->setSelectedDevice(Lcom/kantv/ui/androidupnpdemo/entity/IDevice;)V

    .line 1126
    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    .line 1127
    invoke-static {p2}, Lcom/kantv/common/utils/Utils;->isNull(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    const p3, 0x7f0f00ba

    .line 1130
    invoke-virtual {p0, p3}, Lcom/kantv/ui/activity/VideoPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedDeviceName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1133
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemshifou"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "full"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 1140
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1, v0}, Lcom/kantv/video/KTVideoPlayer;->setTpViewVisible(Z)V

    .line 1141
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1, p3}, Lcom/kantv/video/KTVideoPlayer;->setTpDviseText(Ljava/lang/String;)V

    .line 1149
    :cond_7
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->setTpProgress()V

    .line 1150
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->play()V

    .line 1151
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSeo:Ljava/lang/String;

    iput-object p3, p1, Lcom/kantv/ui/manager/UpnpManager;->seo:Ljava/lang/String;

    .line 1152
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    iget-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    iput-object p3, p1, Lcom/kantv/ui/manager/UpnpManager;->tid:Ljava/lang/String;

    .line 1153
    invoke-static {p0}, Lcom/kantv/ui/manager/UpnpManager;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;

    move-result-object p1

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/manager/UpnpManager;->name:Ljava/lang/String;

    nop

    :cond_8
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 1225
    :cond_0
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1228
    :cond_1
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090045,
            0x7f0902a9,
            0x7f0900a2,
            0x7f090295,
            0x7f090213,
            0x7f0902e1,
            0x7f090327,
            0x7f090200,
            0x7f090328,
            0x7f090205,
            0x7f090206,
            0x7f090101,
            0x7f090032,
            0x7f090034,
            0x7f090040,
            0x7f09003c,
            0x7f09006a
        }
    .end annotation

    .line 2103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    const/16 v1, 0x3ed

    const/16 v2, 0x8

    const-string v3, "VideoPlayActivity"

    const-string v4, "url"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2209
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->clickShareImg()V

    goto/16 :goto_2

    .line 2193
    :sswitch_1
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    goto/16 :goto_2

    .line 2180
    :sswitch_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2181
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->userScore:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->userScore:Ljava/lang/String;

    const-string v1, "score"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2187
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->filmImgUrl:Ljava/lang/String;

    const-string v1, "film"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    :cond_1
    const-class v0, Lcom/kantv/ui/activity/VideoScoreActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 2123
    :sswitch_3
    iget-boolean p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    if-eqz p1, :cond_2

    .line 2124
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    .line 2125
    new-instance p1, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {p1}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v0, "main"

    .line 2126
    iput-object v0, p1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2127
    iput v0, p1, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 2128
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->stop()V

    .line 2129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2131
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2132
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->changeToNormalUI()V

    .line 2133
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2134
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->stop()V

    .line 2135
    iput-boolean v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    .line 2136
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoResume()V

    goto/16 :goto_2

    .line 2141
    :sswitch_4
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-virtual {p1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getCurrentState()I

    move-result p1

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6682\u505c\u70b9\u51fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2144
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->pause()V

    .line 2145
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz p1, :cond_c

    .line 2146
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->pause()V

    goto/16 :goto_2

    .line 2149
    :cond_3
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->restartPlay()V

    .line 2150
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz p1, :cond_c

    .line 2151
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->play()V

    goto/16 :goto_2

    .line 2167
    :sswitch_5
    iget-boolean p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    if-eqz p1, :cond_5

    .line 2168
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/GpsUtil;->isOpen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2169
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2171
    :cond_4
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->checkPersonalInfo()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2172
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->commentDialog()V

    goto/16 :goto_2

    :cond_5
    const/4 p1, 0x1

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    .line 2176
    invoke-direct {p0, v0, v1, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2199
    :sswitch_6
    const-class p1, Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Ljava/lang/Class;)V

    .line 2206
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    goto/16 :goto_2

    .line 2196
    :sswitch_7
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    goto/16 :goto_2

    .line 2263
    :sswitch_8
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->showNormalPage()V

    .line 2264
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initView()V

    goto/16 :goto_2

    .line 2212
    :sswitch_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2213
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTid:Ljava/lang/String;

    const-string v1, "tvid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_6

    .line 2215
    sget-object v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    const-string v1, "part_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    :cond_6
    const-class v0, Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 2157
    :sswitch_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2158
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2163
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2164
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 2105
    :sswitch_b
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmailContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2106
    const-class p1, Lcom/kantv/ui/activity/BindEmailActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->gotoActivity(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 2109
    :goto_0
    :sswitch_c
    sget-object p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-ge v5, p1, :cond_7

    .line 2110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDevicesAdapter  bbbb"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/kantv/common/log/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDevicesAdapter"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;

    invoke-virtual {v2}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/kantv/common/log/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2113
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2114
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2119
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2120
    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 2227
    :sswitch_d
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result p1

    if-lez p1, :cond_8

    .line 2228
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    .line 2229
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1, v5}, Lcom/kantv/video/util/AudioUtil;->setMediaVolume(I)V

    .line 2230
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    const v0, 0x7f080068

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2232
    :cond_8
    iget p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    if-lez p1, :cond_9

    .line 2233
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {v0, p1}, Lcom/kantv/video/util/AudioUtil;->setMediaVolume(I)V

    .line 2237
    :cond_9
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adSoundImg:Landroid/widget/ImageView;

    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2239
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***mVoiceNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  *** MediaVolume: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {v0}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ad_sound"

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2242
    :sswitch_e
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a

    .line 2243
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2245
    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2246
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentOpenType:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x10000000

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentOpenType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2247
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 2248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2251
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2252
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2255
    :cond_b
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2257
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2258
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2259
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2223
    :sswitch_f
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz p1, :cond_c

    .line 2224
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    goto :goto_2

    .line 2220
    :sswitch_10
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    :cond_c
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090032 -> :sswitch_10
        0x7f090034 -> :sswitch_f
        0x7f09003c -> :sswitch_e
        0x7f090040 -> :sswitch_d
        0x7f090045 -> :sswitch_c
        0x7f09006a -> :sswitch_b
        0x7f0900a2 -> :sswitch_a
        0x7f090101 -> :sswitch_9
        0x7f090200 -> :sswitch_8
        0x7f090205 -> :sswitch_7
        0x7f090206 -> :sswitch_6
        0x7f090213 -> :sswitch_5
        0x7f090295 -> :sswitch_4
        0x7f0902a9 -> :sswitch_3
        0x7f0902e1 -> :sswitch_2
        0x7f090327 -> :sswitch_1
        0x7f090328 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12

    .line 2014
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2015
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->filterPageSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2017
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPlay:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPause:Z

    if-nez v0, :cond_7

    .line 2018
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2020
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->onBackFullscreen()V

    .line 2028
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    const-wide/16 v2, 0xbb8

    const-string v4, "-1"

    if-eqz v0, :cond_2

    .line 2030
    :try_start_0
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    const/4 p1, 0x0

    .line 2031
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2033
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2035
    :goto_0
    sget-object p1, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2036
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$30;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$30;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2047
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 2048
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2049
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/kantv/ui/activity/VideoPlayActivity$31;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$31;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2058
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->shareUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2060
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    const v2, 0x7f1000af

    const v3, 0x7f0c00ce

    invoke-direct {v0, p0, v2, v3}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 2061
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    const v2, 0x7f1000ad

    invoke-virtual {v0, v2}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    .line 2062
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 2063
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2064
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fullShareBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2065
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mPlayinfo:Lorg/json/JSONObject;

    const-string v3, "share"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "photo"

    .line 2067
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2068
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kantv/ui/utils/GlideUtils;->loadimage2(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 2071
    :cond_3
    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$32;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$32;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$33;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$33;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2086
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adsJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    if-lez v0, :cond_6

    .line 2087
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 2088
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 2090
    :cond_5
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 2094
    :cond_6
    iget-object v6, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v9, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/kantv/video/KTVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 368
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d8

    .line 369
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->setContentView(I)V

    .line 370
    iput-object p0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mContext:Landroid/content/Context;

    .line 371
    new-instance p1, Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/kantv/video/util/AudioUtil;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    .line 372
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldebug/KanApplication;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 373
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initBase()V

    .line 374
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initStatusBar()V

    .line 375
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initView()V

    .line 376
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initListeners()V

    .line 377
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$2;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 383
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->bindServices()V

    .line 384
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->registerReceivers()V

    .line 385
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kantv/ui/activity/VideoPlayActivity$3;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$3;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    iget-object v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateSpeedTimer:Ljava/util/Timer;

    new-instance v4, Lcom/kantv/ui/activity/VideoPlayActivity$4;

    invoke-direct {v4, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$4;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 406
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->bindEmailContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->feedBack:Landroid/view/View;

    invoke-static {p0, p1, v0}, Lcom/kantv/ui/viewmodel/CommonViewModel;->checkHadBindEmak(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 2770
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 2771
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stopRecordTimer:Z

    .line 2772
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->pushVideoExitTime()V

    .line 2773
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPlay:Z

    if-eqz v0, :cond_0

    .line 2774
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2777
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    .line 2778
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->orientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 2780
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v0, :cond_2

    .line 2781
    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->release()V

    .line 2782
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    .line 2784
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 2785
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    .line 2786
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoCommentFragment:Lcom/kantv/ui/fragment/VideoCommentFragment;

    .line 2787
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 2788
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2789
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mFragmentData:Ljava/util/List;

    .line 2793
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2794
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2795
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->destroy()V

    .line 2796
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->destroy()V

    .line 2797
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 2798
    monitor-enter v0

    .line 2799
    :try_start_0
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 2800
    iget-object v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 2801
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 2802
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2804
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_8

    .line 2805
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2806
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stateSpeedTimer:Ljava/util/Timer;

    .line 2809
    :cond_8
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 2810
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2811
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    .line 2813
    :cond_9
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mService:Lcom/samsung/multiscreen/Service;

    .line 2814
    :cond_a
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    if-eqz v0, :cond_b

    .line 2815
    invoke-virtual {v0}, Lcom/samsung/multiscreen/Search;->stop()Z

    .line 2816
    iput-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mSearch:Lcom/samsung/multiscreen/Search;

    const-string v0, "VideoPlayActivity"

    const-string v1, "Stopping Discovery."

    .line 2819
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    :cond_b
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->getInstance(Landroid/content/Context;)Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->disconnect()V

    .line 2822
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object v0

    sget-object v1, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1169
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoPause()V

    .line 1173
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentJumpTime:I

    .line 1178
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1182
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x1

    .line 1184
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPause:Z

    const/4 v1, 0x2

    .line 1185
    iput v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->destroy:I

    .line 1186
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stopRecordTimer:Z

    .line 1187
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->pushVideoExitTime()V

    .line 1188
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1192
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->destroy:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->destroy:I

    .line 1193
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->play:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->must_shared:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoResume()V

    .line 1196
    :cond_1
    iput-boolean v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->play:Z

    const/4 v0, 0x0

    .line 1197
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->isPause:Z

    .line 1198
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    .line 1199
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Login_State"

    invoke-static {v1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    .line 1200
    iget-boolean v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1203
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    if-eqz v1, :cond_5

    .line 1204
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1205
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    iget v2, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adCurrentJumpTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1206
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 1208
    :cond_3
    iget-boolean v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAdFinished:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1209
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1210
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1211
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1214
    :cond_5
    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->stopRecordTimer:Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 2837
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 2838
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    .line 2839
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2841
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v1, v1, Lcom/kantv/video/KTVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2843
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2846
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentProgress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$48;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$48;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->seek(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method public play()V
    .locals 4

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getCurrentState()I

    move-result v0

    .line 2564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1currentState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$43;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$43;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method public replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2372
    new-instance v6, Lcom/tandong/bottomview/view/BottomView;

    const v0, 0x7f1000ae

    const v1, 0x7f0c003d

    invoke-direct {v6, p0, v0, v1}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 2373
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 2374
    invoke-virtual {v6}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u590d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2376
    new-instance p3, Lcom/kantv/ui/activity/VideoPlayActivity$36;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/kantv/ui/activity/VideoPlayActivity$36;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f1000ad

    .line 2441
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 p1, 0x1

    .line 2442
    invoke-virtual {v6, p1}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 2444
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 2445
    new-instance p2, Lcom/kantv/ui/activity/VideoPlayActivity$37;

    invoke-direct {p2, p0, v8, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$37;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;Ljava/util/Timer;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public restartPlay()V
    .locals 2

    .line 2706
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$47;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$47;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method public setingProgress()V
    .locals 7

    .line 2934
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2935
    monitor-enter v0

    .line 2936
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->netSpeedTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/activity/VideoPlayActivity$49;

    invoke-direct {v2, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$49;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2942
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public switchPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 1739
    iget-object v5, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1740
    new-instance v5, Lcom/kantv/common/bean/PlayRecordBean;

    invoke-direct {v5}, Lcom/kantv/common/bean/PlayRecordBean;-><init>()V

    .line 1741
    iput-boolean v4, v5, Lcom/kantv/common/bean/PlayRecordBean;->isRecord:Z

    if-eqz v4, :cond_1

    .line 1743
    invoke-static/range {p8 .. p8}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v7, "part"

    .line 1745
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/kantv/common/bean/PlayRecordBean;->part:Ljava/lang/String;

    const-string v7, "sec"

    .line 1746
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v5, Lcom/kantv/common/bean/PlayRecordBean;->time:I

    .line 1748
    :cond_1
    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** currentUrl: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "VideoPlayActivity"

    invoke-static {v7, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, ""

    const-string v8, "forced"

    invoke-static {v4, v8, v7}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1752
    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1753
    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v8, v4, :cond_2

    .line 1754
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1755
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mErrorText:Landroid/widget/TextView;

    const-string v2, "\u65e7\u7248\u672c\u5df2\u65e0\u6cd5\u652f\u6301\u5f71\u89c6\u64ad\u653e\uff0c\u8bf7\u66f4\u65b0\u6700\u65b0\u7248\u672c\uff0c\u770b\u5267\u66f4\u8f7b\u677e\uff01"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initVersionUpdate()V

    return-void

    .line 1760
    :cond_2
    invoke-static {}, Ldebug/KanApplication;->getInstance()Lcom/kantv/common/base/BaseApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kantv/common/base/BaseApplication;->isLimitIp()Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->login:Z

    if-nez v4, :cond_3

    .line 1761
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoPlayerRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1764
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/kantv/ui/activity/VideoPlayActivity$24;

    invoke-direct {v9, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$24;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v10, 0xbb8

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1773
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1774
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->loginRegUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const-string v4, "\u63d0\u793a"

    const-string v9, "\u975e\u5e38\u62b1\u6b49\uff0c\u76ee\u524d\u53ea\u9488\u5bf9\u52a0\u62ff\u5927\u3001\u6fb3\u5927\u5229\u4e9a\u548c\u65b0\u897f\u5170\u5f00\u653e\uff0c\u5176\u4ed6\u5730\u533a\u65e0\u6cd5\u89c2\u770b\u3002"

    .line 1775
    invoke-direct {p0, v4, v9}, Lcom/kantv/ui/activity/VideoPlayActivity;->initLimitIpDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v4, "https://www.youtube.com"

    .line 1778
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1783
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initWebView()V

    .line 1784
    iget-object v2, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 1789
    :cond_4
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-nez v4, :cond_5

    return-void

    .line 1790
    :cond_5
    invoke-virtual {v4, v6}, Lcom/kantv/video/KTVideoPlayer;->setVisibility(I)V

    .line 1791
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual {v4, v5, v9, v10, v11}, Lcom/kantv/video/KTVideoPlayer;->setRecord(Lcom/kantv/common/bean/PlayRecordBean;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v4}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v4

    const-string v5, "huawei"

    if-eqz v4, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 1803
    :cond_6
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v4, p1, v3}, Lcom/kantv/video/KTVideoPlayer;->setPlayUrlAndTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->finishSelectVideo()V

    goto :goto_1

    .line 1793
    :cond_7
    :goto_0
    iget-object v4, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v4, p1, v8, v3}, Lcom/kantv/video/KTVideoPlayer;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1794
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->startPlayLogic()V

    .line 1795
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1, v7, v7}, Lcom/kantv/video/KTVideoPlayer;->setPlayUrlAndTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1797
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_8

    .line 1798
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1799
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1, p0, v8, v8}, Lcom/kantv/video/KTVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 1806
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    if-nez v1, :cond_9

    .line 1807
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    .line 1808
    iget-object v8, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->watchRecordTimer:Ljava/util/Timer;

    new-instance v9, Lcom/kantv/ui/activity/VideoPlayActivity$25;

    invoke-direct {v9, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$25;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    const-wide/16 v10, 0x1f4

    const-wide/32 v12, 0xea60

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1822
    :cond_9
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_b

    .line 1823
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1825
    :cond_a
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1826
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1827
    iget-object v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->b:Landroid/os/Bundle;

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->initAdRequest(Ljava/lang/String;)V

    .line 1831
    :cond_b
    iput-object v7, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    .line 1832
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f71\u89c6_\u64ad\u653e_\u5207\u6362"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_c
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 1833
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public todo()V
    .locals 11

    .line 3197
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-lez v0, :cond_1

    sub-int/2addr v0, v3

    .line 3198
    iput v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    .line 3199
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x3e8

    .line 3201
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3203
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adExitLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3206
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3207
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAd:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 3208
    :cond_2
    iput-boolean v3, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoAdFinished:Z

    .line 3209
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {v0}, Lcom/kantv/video/util/AudioUtil;->getMediaVolume()I

    move-result v0

    if-gtz v0, :cond_3

    .line 3210
    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVoiceNum:I

    if-lez v0, :cond_3

    .line 3211
    iget-object v5, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {v5, v0}, Lcom/kantv/video/util/AudioUtil;->setMediaVolume(I)V

    .line 3216
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const-string v5, "https://www.youtube.com"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_5

    .line 3223
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3224
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initWebView()V

    .line 3225
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3228
    :cond_4
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getStartButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 3229
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 3230
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->videoDetailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3231
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0, p0, v3, v3}, Lcom/kantv/video/KTVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_1

    .line 3234
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3235
    invoke-direct {p0}, Lcom/kantv/ui/activity/VideoPlayActivity;->initWebView()V

    .line 3236
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 3239
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->currentUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->tvTitle:Ljava/lang/String;

    :goto_0
    move-object v5, v1

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->mVideoDetailFragment:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    const-string v2, "prologue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    move-object v8, v2

    iget-object v10, p0, Lcom/kantv/ui/activity/VideoPlayActivity;->history:Ljava/lang/String;

    const-string v4, "huawei"

    const-string v9, ""

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v10}, Lcom/kantv/ui/activity/VideoPlayActivity;->switchPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
