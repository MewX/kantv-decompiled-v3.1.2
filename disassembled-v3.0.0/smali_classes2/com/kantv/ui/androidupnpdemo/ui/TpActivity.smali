.class public Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;,
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TpActivity"


# instance fields
.field private finishLayout:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

.field private mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

.field private mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

.field private mContext:Landroid/content/Context;

.field private mDLNAList:Landroid/widget/ListView;

.field private mDeviceList:Landroid/widget/ListView;

.field private mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

.field private mDevicesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroductoryOverlay:Lcom/google/android/gms/cast/framework/IntroductoryOverlay;

.field private mIsHoneyCombOrAbove:Z

.field private mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

.field private mPart:Ljava/lang/String;

.field private mPictureUrl:Ljava/lang/String;

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

.field private mTitle:Ljava/lang/String;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mediaRouteMenuItem:Landroid/view/MenuItem;

.field private netSpeedTimer:Ljava/util/Timer;

.field private refreshLayout:Landroid/widget/LinearLayout;

.field private refreshTv:Landroid/widget/TextView;

.field private seachingRL:Landroid/widget/RelativeLayout;

.field private tag:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mIsHoneyCombOrAbove:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    .line 93
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->url:Ljava/lang/String;

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    .line 99
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->tag:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mTitle:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPart:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPictureUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->seachingRL:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPlaybackState:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackState;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/kantv/ui/samsung/TVListAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->togglePlayback()V

    return-void
.end method

.method static synthetic access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    return-void
.end method

.method private buildMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 5

    .line 482
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 483
    iget-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mTitle:Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPictureUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 486
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPictureUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 496
    sget-object v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildMediaInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v2, Lcom/google/android/gms/cast/MediaInfo$Builder;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    const-string v2, "application/vnd.apple.mpegurl"

    .line 499
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 504
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamDuration(J)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method private initListeners()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$3;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDLNAList:Landroid/widget/ListView;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$4;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$5;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->finishLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$6;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f09020f

    .line 178
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    const v0, 0x7f0900e7

    .line 179
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDLNAList:Landroid/widget/ListView;

    .line 180
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDLNAList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 181
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const v0, 0x7f090397

    .line 182
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mTVSelected:Landroid/widget/TextView;

    const v0, 0x7f090315

    .line 183
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSeekProgress:Landroid/widget/SeekBar;

    const v0, 0x7f090316

    .line 184
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSeekVolume:Landroid/widget/SeekBar;

    const v0, 0x7f09035e

    .line 185
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSwitchMute:Landroid/widget/Switch;

    const v0, 0x7f0900bb

    .line 186
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->finishLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900bd

    .line 187
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshTv:Landroid/widget/TextView;

    const v0, 0x7f090378

    .line 188
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->titleTv:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshTv:Landroid/widget/TextView;

    const-string v1, "\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090216

    .line 191
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshLayout:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$2;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->tag:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    .line 205
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDLNAList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902fa

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->seachingRL:Landroid/widget/RelativeLayout;

    .line 214
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c00ca

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900a5

    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 216
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDLNAList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSeekProgress:Landroid/widget/SeekBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 224
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSeekVolume:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method private loadRemoteMedia(IZ)V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 615
    :cond_1
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 646
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->buildMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;

    .line 647
    new-instance p1, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {p1}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string p2, "videoplay"

    .line 648
    iput-object p2, p1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 p2, 0x0

    .line 649
    iput p2, p1, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 650
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->finish()V

    return-void
.end method

.method private refreshDeviceList()V
    .locals 4

    .line 298
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getDmrDevices()Ljava/util/Collection;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->setClingDeviceList(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 302
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$7;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupActionBar()V
    .locals 7

    const v0, 0x7f09037e

    .line 378
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 379
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u5df2\u8fde\u63a5Chromecast"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$9;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$9;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 390
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u70b9\u51fb\u53f3\u4fa7\u6309\u94ae\u8fde\u63a5Chromecast"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 395
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 404
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 405
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->netSpeedTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    invoke-direct {v2, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setupCastListener()V
    .locals 2

    .line 510
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "setupCastListener=="

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$11;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    return-void
.end method

.method private togglePlayback()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 582
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->loadRemoteMedia(IZ)V

    :cond_0
    return-void
.end method

.method private updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 111
    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    const-string v1, ""

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->url:Ljava/lang/String;

    const-string v2, "tag"

    .line 116
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->tag:Ljava/lang/String;

    const-string v2, "title"

    .line 117
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mTitle:Ljava/lang/String;

    const-string v2, "picture"

    .line 118
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPictureUrl:Ljava/lang/String;

    const-string v2, "part"

    .line 119
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPart:Ljava/lang/String;

    .line 120
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTitle33"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPictureUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPictureUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iput-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->initView()V

    .line 127
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->initListeners()V

    .line 131
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v0, "ConnectionResult.SUCCESS fail"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v0, "ConnectionResult.SUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$1;

    invoke-direct {p1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    .line 148
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    .line 149
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-eqz p1, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setupCastListener()V

    .line 152
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    .line 153
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->setupActionBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 363
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 364
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreateOptionsMenu onCreateSUCCESS fail"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090215

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mediaRouteMenuItem:Landroid/view/MenuItem;

    .line 372
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreateOptionsMenu onCreateSUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 172
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->netSpeedTimer:Ljava/util/Timer;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 358
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 468
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause onCreateSUCCESS fail"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-eqz v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 475
    :cond_1
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause onCreateSUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 291
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->refreshDeviceList()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 316
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 317
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionResult.SUCCESS fail"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->TAG:Ljava/lang/String;

    const-string v1, "ConnectionResult.SUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-eqz v0, :cond_1

    .line 326
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    goto :goto_0

    .line 333
    :cond_2
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$PlaybackLocation;)V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$8;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
