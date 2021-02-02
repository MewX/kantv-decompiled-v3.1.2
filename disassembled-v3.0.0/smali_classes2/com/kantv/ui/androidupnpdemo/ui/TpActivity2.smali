.class public Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TpActivity2.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;,
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;
    }
.end annotation


# static fields
.field public static final ERROR_ACTION:I = 0xa5

.field public static final GET_POSITION_INFO_ACTION:I = 0xa5

.field public static final PAUSE_ACTION:I = 0xa2

.field public static final PLAY_ACTION:I = 0xa1

.field public static final STOP_ACTION:I = 0xa3

.field private static final TAG:Ljava/lang/String; = "TpActivity2"

.field public static final TRANSITIONING_ACTION:I = 0xa4


# instance fields
.field private finishLayout:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

.field private mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

.field private mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

.field private mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

.field private mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Landroid/widget/ListView;

.field private mDevicesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIntroductoryOverlay:Lcom/google/android/gms/cast/framework/IntroductoryOverlay;

.field private mIsHoneyCombOrAbove:Z

.field private mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

.field private mPlaybackState:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

.field private mSeekProgress:Landroid/widget/SeekBar;

.field private mSeekVolume:Landroid/widget/SeekBar;

.field private mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
            "Lcom/google/android/gms/cast/framework/CastSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchMute:Landroid/widget/Switch;

.field private mTVSelected:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUpnpServiceConnection:Landroid/content/ServiceConnection;

.field private mediaRouteMenuItem:Landroid/view/MenuItem;

.field private netSpeedTimer:Ljava/util/Timer;

.field private refreshTv:Landroid/widget/TextView;

.field private seachingRL:Landroid/widget/RelativeLayout;

.field private titleTv:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mIsHoneyCombOrAbove:Z

    .line 108
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 119
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->url:Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    .line 131
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    .line 133
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->seachingRL:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mTVSelected:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    return-void
.end method

.method static synthetic access$702(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mPlaybackState:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    return-object p1
.end method

.method static synthetic access$802(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-object p1
.end method

.method private bindServices()V
    .locals 3

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kantv/ui/androidupnpdemo/service/ClingUpnpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$7;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mBrowseRegistryListener:Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$8;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/listener/BrowseRegistryListener;->setOnDeviceListChangedListener(Lcom/kantv/ui/androidupnpdemo/listener/DeviceListChangedListener;)V

    .line 520
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSwitchMute:Landroid/widget/Switch;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$9;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 537
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->finishLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$10;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$10;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 545
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekVolume:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09020f

    .line 431
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    const v0, 0x7f090397

    .line 432
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mTVSelected:Landroid/widget/TextView;

    const v0, 0x7f090315

    .line 433
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekProgress:Landroid/widget/SeekBar;

    const v0, 0x7f090316

    .line 434
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekVolume:Landroid/widget/SeekBar;

    const v0, 0x7f09035e

    .line 435
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSwitchMute:Landroid/widget/Switch;

    const v0, 0x7f0900bb

    .line 436
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->finishLayout:Landroid/widget/LinearLayout;

    .line 437
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/DevicesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    .line 438
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 439
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902fa

    .line 440
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->seachingRL:Landroid/widget/RelativeLayout;

    .line 442
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const v0, 0x7f0900bd

    .line 444
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->refreshTv:Landroid/widget/TextView;

    .line 445
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->refreshTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->refreshTv:Landroid/widget/TextView;

    const-string v1, "\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->refreshTv:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$6;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekProgress:Landroid/widget/SeekBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 460
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSeekVolume:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$13;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$13;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->pause(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method private play()V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->url:Ljava/lang/String;

    new-instance v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$15;

    invoke-direct {v2, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$15;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->playNew(Ljava/lang/String;Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$16;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$16;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->play(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    :goto_0
    return-void
.end method

.method private refreshDeviceList()V
    .locals 4

    .line 553
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getDmrDevices()Ljava/util/Collection;

    move-result-object v0

    .line 554
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->setClingDeviceList(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 557
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$11;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$11;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .line 401
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$TransportStateBroadcastReceiver;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zane.androidupnpdemo.action.playing"

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.paused_playback"

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.stopped"

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.transitioning"

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setupActionBar()V
    .locals 7

    const v0, 0x7f09037e

    .line 264
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090378

    .line 265
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->titleTv:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u53f3\u4fa7\u6309\u94ae\u8fde\u63a5chromecast"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 278
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->netSpeedTimer:Ljava/util/Timer;

    .line 279
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->netSpeedTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    invoke-direct {v2, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setupCastListener()V
    .locals 1

    .line 309
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$5;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    return-void
.end method

.method private stop()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$12;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$12;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->stop(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    return-void
.end method

.method private updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-void
.end method


# virtual methods
.method public getPositionInfo()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$14;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$14;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->getPositionInfo(Lcom/kantv/ui/androidupnpdemo/control/callback/ControlReceiveCallback;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 580
    :pswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->stop()V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->play()V

    goto :goto_0

    .line 576
    :pswitch_2
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->pause()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090080
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 181
    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->url:Ljava/lang/String;

    .line 186
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    iput-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mContext:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->initView()V

    .line 190
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->initListeners()V

    .line 191
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->bindServices()V

    .line 192
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->registerReceivers()V

    .line 193
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS5555555999999"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$2;

    invoke-direct {p1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$2;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    .line 210
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    .line 211
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->setupCastListener()V

    .line 213
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    .line 214
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->setupActionBar()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 385
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 386
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 390
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090215

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mediaRouteMenuItem:Landroid/view/MenuItem;

    .line 394
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS5555555"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 418
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 419
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mUpnpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 421
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mTransportStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->destroy()V

    .line 423
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->destroy()V

    .line 424
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 426
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->netSpeedTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 251
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 257
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS5555555"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 796
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->refreshDeviceList()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 220
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 226
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    .line 231
    :goto_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$3;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :goto_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 691
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v0, "Start Seek"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 696
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->TAG:Ljava/lang/String;

    const-string v1, "Stop Seek"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 717
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$18;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$18;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setVolume(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    goto :goto_0

    .line 701
    :pswitch_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 702
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->mClingPlayControl:Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$17;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$17;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->seek(ILcom/kantv/ui/androidupnpdemo/control/callback/ControlCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090315
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
