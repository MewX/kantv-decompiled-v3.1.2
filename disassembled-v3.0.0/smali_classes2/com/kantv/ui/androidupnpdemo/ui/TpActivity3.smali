.class public Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TpActivity3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;,
        Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TpActivity3"


# instance fields
.field private finishLayout:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

.field private mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

.field private mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

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

.field private mIntroductoryOverlay:Lcom/google/android/gms/cast/framework/IntroductoryOverlay;

.field private mIsHoneyCombOrAbove:Z

.field private mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

.field private mPart:Ljava/lang/String;

.field private mPictureUrl:Ljava/lang/String;

.field private mPlaybackState:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

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

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mIsHoneyCombOrAbove:Z

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->url:Ljava/lang/String;

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    .line 94
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->tag:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mTitle:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPart:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPictureUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->seachingRL:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->togglePlayback()V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/google/android/gms/cast/framework/CastSession;)Lcom/google/android/gms/cast/framework/CastSession;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->titleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V

    return-void
.end method

.method static synthetic access$902(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;)Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPlaybackState:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackState;

    return-object p1
.end method

.method private buildMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 5

    .line 451
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 452
    iget-object v2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mTitle:Ljava/lang/String;

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPictureUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 455
    new-instance v2, Lcom/google/android/gms/common/images/WebImage;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPictureUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->addImage(Lcom/google/android/gms/common/images/WebImage;)V

    .line 465
    sget-object v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildMediaInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v2, Lcom/google/android/gms/cast/MediaInfo$Builder;

    iget-object v3, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    const-string v2, "application/vnd.apple.mpegurl"

    .line 468
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 473
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamDuration(J)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method private initListeners()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$3;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$4;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->finishLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$5;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f09020f

    .line 166
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    .line 167
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const v0, 0x7f090397

    .line 168
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mTVSelected:Landroid/widget/TextView;

    const v0, 0x7f090315

    .line 169
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSeekProgress:Landroid/widget/SeekBar;

    const v0, 0x7f090316

    .line 170
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSeekVolume:Landroid/widget/SeekBar;

    const v0, 0x7f09035e

    .line 171
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSwitchMute:Landroid/widget/Switch;

    const v0, 0x7f0900bb

    .line 172
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->finishLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900bd

    .line 173
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshTv:Landroid/widget/TextView;

    const v0, 0x7f090378

    .line 174
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->titleTv:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshTv:Landroid/widget/TextView;

    const-string v1, "\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090216

    .line 177
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshLayout:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$2;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->tag:Ljava/lang/String;

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/kantv/ui/activity/VideoFullScreenActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902fa

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->seachingRL:Landroid/widget/RelativeLayout;

    .line 196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c00ca

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900a5

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 198
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSeekProgress:Landroid/widget/SeekBar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 206
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSeekVolume:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method private loadRemoteMedia(IZ)V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 584
    :cond_1
    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;

    invoke-direct {v1, p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 615
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->buildMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->load(Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;

    .line 616
    new-instance p1, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {p1}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string p2, "fullscreen"

    .line 617
    iput-object p2, p1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    const/4 p2, 0x0

    .line 618
    iput p2, p1, Lcom/kantv/ui/bean/TestEvent;->tag:I

    .line 619
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 620
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->finish()V

    return-void
.end method

.method private refreshDeviceList()V
    .locals 4

    .line 266
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getInstance()Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/androidupnpdemo/service/manager/ClingManager;->getDmrDevices()Ljava/util/Collection;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDeviceList;->setClingDeviceList(Ljava/util/Collection;)V

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 270
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDevicesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$6;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupActionBar()V
    .locals 7

    const v0, 0x7f09037e

    .line 347
    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 348
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "\u5df2\u8fde\u63a5Chromecast"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$8;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$8;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "\u70b9\u51fb\u53f3\u4fa7\u6309\u94ae\u8fde\u63a5Chromecast"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 365
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 374
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->netSpeedTimer:Ljava/util/Timer;

    .line 375
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->netSpeedTimer:Ljava/util/Timer;

    new-instance v2, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;

    invoke-direct {v2, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$9;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setupCastListener()V
    .locals 2

    .line 479
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "setupCastListener=="

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;

    invoke-direct {v0, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$10;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    return-void
.end method

.method private togglePlayback()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 551
    invoke-direct {p0, v0, v1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->loadRemoteMedia(IZ)V

    :cond_0
    return-void
.end method

.method private updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mLocation:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 106
    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    const-string v1, "url"

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->url:Ljava/lang/String;

    const-string v1, "tag"

    .line 111
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->tag:Ljava/lang/String;

    const-string v1, "title"

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mTitle:Ljava/lang/String;

    const-string v1, "picture"

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPictureUrl:Ljava/lang/String;

    const-string v1, "part"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mPart:Ljava/lang/String;

    .line 116
    :cond_0
    iput-object p0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mContext:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->initView()V

    .line 118
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->initListeners()V

    .line 119
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_1
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS5555555999999"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$1;

    invoke-direct {p1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    .line 137
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setupCastListener()V

    .line 142
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-eqz p1, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setupActionBar()V

    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 332
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 333
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 337
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090215

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mediaRouteMenuItem:Landroid/view/MenuItem;

    .line 341
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v0, "onCreateSUCCESS5555555"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->netSpeedTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 160
    iput-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->netSpeedTimer:Ljava/util/Timer;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->titleTv:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 438
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->removeCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 444
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS5555555"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mDeviceList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 259
    invoke-direct {p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->refreshDeviceList()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 284
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "onCreateSUCCESS"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastStateListener:Lcom/google/android/gms/cast/framework/CastStateListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->addCastStateListener(Lcom/google/android/gms/cast/framework/CastStateListener;)V

    .line 288
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastContext:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mSessionManagerListener:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    const-class v2, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->mCastSession:Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;->REMOTE:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;->LOCAL:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;

    invoke-direct {p0, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->updatePlaybackLocation(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$PlaybackLocation;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$7;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method
