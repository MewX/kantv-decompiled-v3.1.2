.class public Lcom/kantv/video/KTVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final PLAY_DELAY_CLOSE:I = -0x1

.field public static final PLAY_DELAY_OVER:I = -0x2

.field public static final PLAY_DELAY_OVER_30:I = 0x1e

.field public static final PLAY_DELAY_OVER_60:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KTVideoPlayer"

.field public static currentTitle:Ljava/lang/String; = ""

.field public static currentUrl:Ljava/lang/String; = ""

.field private static finishCheckSelect:Z = false

.field public static isQp:Z = false

.field private static mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;


# instance fields
.field FastGuideRunnable:Ljava/lang/Runnable;

.field PrevGuideRunnable:Ljava/lang/Runnable;

.field private bottomLayout:Landroid/widget/LinearLayout;

.field private count:I

.field public currentTimeTv:Landroid/widget/TextView;

.field public diviseTv:Landroid/widget/TextView;

.field private gsyVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

.field private mAirPlayImg:Landroid/widget/ImageView;

.field private mBrightnessNum:I

.field private mCallback:Lcom/kantv/common/interfaces/ClickCallback;

.field private mCurrent_play_delay:I

.field private mGuideOk:Landroid/widget/TextView;

.field private mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

.field private mGuideVideoFastLayout:Landroid/widget/LinearLayout;

.field private mGuideVideoFastTv:Landroid/widget/TextView;

.field private mGuideVideoPrevTv:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field private mLineSwitch:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/LinearLayout;

.field private mMessageText1:Landroid/widget/TextView;

.field private mMessageText2:Landroid/widget/TextView;

.field private mMessageText3:Landroid/widget/TextView;

.field private mMoreImg:Landroid/widget/ImageView;

.field private mNext:Landroid/widget/ImageView;

.field private mRecordBean:Lcom/kantv/common/bean/PlayRecordBean;

.field private mSelect:Landroid/widget/TextView;

.field private mShareImg:Landroid/widget/ImageView;

.field private mVoiceNum:I

.field private mWindow:Landroid/view/Window;

.field private nativePrologue:J

.field public pauseTv:Landroid/widget/TextView;

.field private play_delay_state:I

.field public player:Lcom/kantv/video/KTVideoPlayer;

.field public progressBarSb:Landroid/widget/SeekBar;

.field private speed:F

.field public stateTv:Landroid/widget/TextView;

.field private topLayout:Landroid/widget/LinearLayout;

.field public totalTimeTv:Landroid/widget/TextView;

.field public tpview:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->speed:F

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    .line 126
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrent_play_delay:I

    .line 1043
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$24;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$24;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 1061
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$25;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$25;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->speed:F

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    .line 66
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    .line 126
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrent_play_delay:I

    .line 1043
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$24;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$24;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 1061
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$25;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$25;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->speed:F

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    .line 66
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    .line 126
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrent_play_delay:I

    .line 1043
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$24;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$24;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 1061
    new-instance p1, Lcom/kantv/video/KTVideoPlayer$25;

    invoke-direct {p1, p0}, Lcom/kantv/video/KTVideoPlayer$25;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->setShareListener(Lcom/tandong/bottomview/view/BottomView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mCallback:Lcom/kantv/common/interfaces/ClickCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/kantv/video/KTVideoPlayer;I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->setStateAndUi(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoFastTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->startFastGuideTimer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideOk:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/kantv/video/KTVideoPlayer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideOk:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600()Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 1

    .line 50
    sget-object v0, Lcom/kantv/video/KTVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    return p0
.end method

.method static synthetic access$1800(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kantv/video/KTVideoPlayer;)Landroid/view/Window;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/video/KTVideoPlayer;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/kantv/video/KTVideoPlayer;->next(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->mVoiceNum:I

    return p0
.end method

.method static synthetic access$2002(Lcom/kantv/video/KTVideoPlayer;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mVoiceNum:I

    return p1
.end method

.method static synthetic access$2100(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->mBrightnessNum:I

    return p0
.end method

.method static synthetic access$2102(Lcom/kantv/video/KTVideoPlayer;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mBrightnessNum:I

    return p1
.end method

.method static synthetic access$2200(Lcom/kantv/video/KTVideoPlayer;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->speed:F

    return p0
.end method

.method static synthetic access$2202(Lcom/kantv/video/KTVideoPlayer;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->speed:F

    return p1
.end method

.method static synthetic access$2300(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mMessage:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/bean/PlayRecordBean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mRecordBean:Lcom/kantv/common/bean/PlayRecordBean;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler2:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/kantv/video/KTVideoPlayer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler2:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/kantv/video/KTVideoPlayer;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->isAutoSkipVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$3000(Lcom/kantv/video/KTVideoPlayer;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/kantv/video/KTVideoPlayer;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    return-wide p1
.end method

.method static synthetic access$3100()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/kantv/video/KTVideoPlayer;->finishCheckSelect:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .locals 0

    .line 50
    sput-boolean p0, Lcom/kantv/video/KTVideoPlayer;->finishCheckSelect:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->fullScreenSelectPlay()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/video/KTVideoPlayer;I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->setStateAndUi(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    return p0
.end method

.method static synthetic access$502(Lcom/kantv/video/KTVideoPlayer;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    return p1
.end method

.method static synthetic access$508(Lcom/kantv/video/KTVideoPlayer;)I
    .locals 2

    .line 50
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/video/KTVideoPlayer;->count:I

    return v0
.end method

.method static synthetic access$600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoPrevTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->startPrevGuideTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/video/KTVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private fullScreenSelectPlay()V
    .locals 2

    .line 952
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$22;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$22;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAutoSkipVideo()Z
    .locals 3

    .line 766
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "autoskip_video"

    invoke-static {v0, v2, v1}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private moreHandler()V
    .locals 4

    .line 226
    sget v0, Lcom/kantv/video/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mNext:Landroid/widget/ImageView;

    .line 227
    sget v0, Lcom/kantv/video/R$id;->select:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mSelect:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$4;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$4;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mSelect:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$5;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$5;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    sget v0, Lcom/kantv/video/R$id;->guide_video_before:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    .line 243
    sget v0, Lcom/kantv/video/R$id;->guide_prev_tv:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoPrevTv:Landroid/widget/TextView;

    .line 244
    sget v0, Lcom/kantv/video/R$id;->guide_video_fast:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    .line 245
    sget v0, Lcom/kantv/video/R$id;->guide_fast_tv:I

    invoke-virtual {p0, v0}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoFastTv:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/video/OnDoubleClickListener;

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$6;

    invoke-direct {v2, p0}, Lcom/kantv/video/KTVideoPlayer$6;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-direct {v1, v2}, Lcom/kantv/video/OnDoubleClickListener;-><init>(Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/video/OnDoubleClickListener;

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$7;

    invoke-direct {v2, p0}, Lcom/kantv/video/KTVideoPlayer$7;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-direct {v1, v2}, Lcom/kantv/video/OnDoubleClickListener;-><init>(Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "video_guide"

    invoke-static {v0, v2, v1}, Lcom/kantv/video/util/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$8;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$8;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mMoreImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$9;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$9;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private next(J)V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCallback:Lcom/kantv/common/interfaces/ClickCallback;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 933
    invoke-interface {v0, v1}, Lcom/kantv/common/interfaces/ClickCallback;->onShare(I)V

    .line 934
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$21;

    invoke-direct {v1, p0}, Lcom/kantv/video/KTVideoPlayer$21;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setShareListener(Lcom/tandong/bottomview/view/BottomView;)V
    .locals 2

    .line 780
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$12;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$12;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$13;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$13;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$14;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$14;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$15;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$15;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$16;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$16;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$17;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$17;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$id;->dialog_share_bt6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kantv/video/KTVideoPlayer$18;

    invoke-direct {v1, p0, p1}, Lcom/kantv/video/KTVideoPlayer$18;-><init>(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startFastGuideTimer()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPrevGuideTimer()V
    .locals 4

    .line 1034
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public changeToNormalUI()V
    .locals 0

    .line 910
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->changeUiToNormal()V

    return-void
.end method

.method public checkSelectVideo()V
    .locals 6

    .line 970
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 971
    new-instance v1, Lcom/kantv/video/KTVideoPlayer$23;

    invoke-direct {v1, p0, v0}, Lcom/kantv/video/KTVideoPlayer$23;-><init>(Lcom/kantv/video/KTVideoPlayer;Ljava/util/Timer;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public finishSelectVideo()V
    .locals 1

    const/4 v0, 0x1

    .line 676
    sput-boolean v0, Lcom/kantv/video/KTVideoPlayer;->finishCheckSelect:Z

    return-void
.end method

.method public getCurrent_play_delay()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrent_play_delay:I

    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 1

    .line 771
    sget v0, Lcom/kantv/video/R$drawable;->full_screen:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    .line 614
    iget-boolean v0, p0, Lcom/kantv/video/KTVideoPlayer;->mIfCurrentIsFullscreen:Z

    const-string v1, "KTVideoPlayer"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 615
    sput-boolean v0, Lcom/kantv/video/KTVideoPlayer;->isQp:Z

    const-string v0, "*** fullscreen ***"

    .line 616
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    sget v0, Lcom/kantv/video/R$layout;->video_land:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 619
    sput-boolean v0, Lcom/kantv/video/KTVideoPlayer;->isQp:Z

    const-string v0, "*** normal screen ***"

    .line 620
    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sget v0, Lcom/kantv/video/R$layout;->video_normal:I

    return v0
.end method

.method public getPlay_delay_state()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 1

    .line 776
    sget v0, Lcom/kantv/video/R$drawable;->full_screen:I

    return v0
.end method

.method public hideAllUI()V
    .locals 0

    .line 906
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 1081
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 1082
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 166
    sget p1, Lcom/kantv/video/R$id;->message:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mMessage:Landroid/widget/LinearLayout;

    .line 167
    sget p1, Lcom/kantv/video/R$id;->message_text1:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText1:Landroid/widget/TextView;

    .line 168
    sget p1, Lcom/kantv/video/R$id;->message_text2:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText2:Landroid/widget/TextView;

    .line 169
    sget p1, Lcom/kantv/video/R$id;->message_text3:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText3:Landroid/widget/TextView;

    .line 170
    sget p1, Lcom/kantv/video/R$id;->share_img:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mShareImg:Landroid/widget/ImageView;

    .line 171
    sget p1, Lcom/kantv/video/R$id;->more:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mMoreImg:Landroid/widget/ImageView;

    .line 172
    sget p1, Lcom/kantv/video/R$id;->airplay_img:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mAirPlayImg:Landroid/widget/ImageView;

    .line 173
    sget p1, Lcom/kantv/video/R$id;->line_switch:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    .line 175
    sget p1, Lcom/kantv/video/R$id;->layout_bottom:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->bottomLayout:Landroid/widget/LinearLayout;

    .line 176
    sget p1, Lcom/kantv/video/R$id;->layout_top:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->topLayout:Landroid/widget/LinearLayout;

    .line 178
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mShareImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/kantv/video/KTVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/kantv/video/KTVideoPlayer$1;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mAirPlayImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/kantv/video/KTVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/kantv/video/KTVideoPlayer$2;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    new-instance v0, Lcom/kantv/video/KTVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/kantv/video/KTVideoPlayer$3;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-boolean p1, p0, Lcom/kantv/video/KTVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->moreHandler()V

    :cond_0
    return-void
.end method

.method public initPlayVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 684
    new-instance v0, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;-><init>()V

    const/4 v1, 0x1

    .line 685
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const/4 v2, 0x0

    .line 686
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 687
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 688
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 689
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 691
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setSeekRatio(F)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    .line 692
    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setUrl(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    .line 693
    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    .line 694
    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->gsyVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    .line 696
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->gsyVideoOptionBuilder:Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;

    invoke-virtual {p1, p0}, Lcom/shuyu/gsyvideoplayer/builder/GSYVideoOptionBuilder;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 697
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->startPlayLogic()V

    return-void
.end method

.method protected onClickUiToggle()V
    .locals 4

    .line 988
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClickUiToggle()V

    .line 990
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 991
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 992
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 998
    :cond_1
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 999
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1000
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1006
    :cond_3
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 1007
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1008
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1009
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1011
    :cond_4
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1014
    :cond_5
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    .line 1015
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1016
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1017
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1019
    :cond_6
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1022
    :cond_7
    iget v0, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 1023
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1024
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 1025
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1027
    :cond_8
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;ZZ)V
    .locals 1

    .line 584
    invoke-super {p0, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_0

    .line 586
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    .line 588
    invoke-virtual {p0, p1, p4, p5}, Lcom/kantv/video/KTVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 593
    invoke-virtual {p0, p1}, Lcom/kantv/video/KTVideoPlayer;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    .line 596
    invoke-virtual {p3, p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 600
    sput-object p3, Lcom/kantv/video/KTVideoPlayer;->mOrientationUtils:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    :cond_3
    return-void
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 680
    invoke-virtual {p0, p1, p2}, Lcom/kantv/video/KTVideoPlayer;->initPlayVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 608
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    return-void
.end method

.method protected resolveUIState(I)V
    .locals 3

    .line 627
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->resolveUIState(I)V

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/video/util/NetWorkUtils;->isNetWrok(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-wide/16 v0, 0xdac

    .line 653
    invoke-direct {p0, v0, v1}, Lcom/kantv/video/KTVideoPlayer;->next(J)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 641
    :cond_3
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_4
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 631
    :cond_5
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mLineSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setClickCallback(Lcom/kantv/common/interfaces/ClickCallback;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mCallback:Lcom/kantv/common/interfaces/ClickCallback;

    return-void
.end method

.method public setCurrent_play_delay(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrent_play_delay:I

    return-void
.end method

.method public setPlayUrlAndTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 671
    sput-object p1, Lcom/kantv/video/KTVideoPlayer;->currentUrl:Ljava/lang/String;

    .line 672
    sput-object p2, Lcom/kantv/video/KTVideoPlayer;->currentTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlay_delay_state(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/kantv/video/KTVideoPlayer;->play_delay_state:I

    return-void
.end method

.method public setRecord(Lcom/kantv/common/bean/PlayRecordBean;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 702
    :try_start_0
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mRecordBean:Lcom/kantv/common/bean/PlayRecordBean;

    .line 703
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mRecordBean:Lcom/kantv/common/bean/PlayRecordBean;

    iget-boolean p1, p1, Lcom/kantv/common/bean/PlayRecordBean;->isRecord:Z

    const-wide/16 v0, 0xfa0

    if-eqz p1, :cond_1

    .line 704
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 705
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mRecordBean:Lcom/kantv/common/bean/PlayRecordBean;

    iget p1, p1, Lcom/kantv/common/bean/PlayRecordBean;->time:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSeekOnStart(J)V

    .line 706
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/kantv/video/KTVideoPlayer$10;

    invoke-direct {p2, p0}, Lcom/kantv/video/KTVideoPlayer$10;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/kantv/video/KTVideoPlayer;->isAutoSkipVideo()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 729
    invoke-static {p3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "0"

    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 730
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit16 p1, p1, -0x2710

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    .line 731
    iget-wide p1, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    invoke-virtual {p0, p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSeekOnStart(J)V

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-wide/16 p1, 0x0

    .line 737
    iget-wide p3, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    cmp-long v2, p1, p3

    if-nez v2, :cond_4

    const-wide/32 p1, 0x15f90

    iput-wide p1, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    .line 738
    :cond_4
    iget-wide p1, p0, Lcom/kantv/video/KTVideoPlayer;->nativePrologue:J

    invoke-virtual {p0, p1, p2}, Lcom/kantv/video/KTVideoPlayer;->setSeekOnStart(J)V

    .line 741
    :goto_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 742
    :cond_5
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/kantv/video/KTVideoPlayer$11;

    invoke-direct {p2, p0}, Lcom/kantv/video/KTVideoPlayer$11;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 761
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public setTpDviseText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setText"

    .line 901
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTpStateText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setTpStateText"

    .line 895
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTpViewVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 886
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->tpview:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 887
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->hideAllWidget()V

    goto :goto_0

    .line 889
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer;->tpview:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->changeUiToNormal()V

    :goto_0
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public showWifiDialog()V
    .locals 3

    .line 861
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 862
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$19;

    invoke-direct {v2, p0}, Lcom/kantv/video/KTVideoPlayer$19;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 870
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/shuyu/gsyvideoplayer/R$string;->tips_not_wifi_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$20;

    invoke-direct {v2, p0}, Lcom/kantv/video/KTVideoPlayer$20;-><init>(Lcom/kantv/video/KTVideoPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    check-cast p1, Lcom/kantv/video/KTVideoPlayer;

    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    .line 143
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    if-eqz p1, :cond_0

    .line 144
    iget-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mWindow:Landroid/view/Window;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mWindow:Landroid/view/Window;

    .line 145
    iget-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mCallback:Lcom/kantv/common/interfaces/ClickCallback;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mCallback:Lcom/kantv/common/interfaces/ClickCallback;

    .line 146
    iget-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText1:Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mMessageText1:Landroid/widget/TextView;

    .line 147
    iget-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText2:Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mMessageText2:Landroid/widget/TextView;

    .line 148
    iget-object p2, p0, Lcom/kantv/video/KTVideoPlayer;->mMessageText3:Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mMessageText3:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->tpview:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->tpview:Landroid/view/View;

    .line 150
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->divise_tv:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->diviseTv:Landroid/widget/TextView;

    .line 151
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->progress_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    .line 152
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->total_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->totalTimeTv:Landroid/widget/TextView;

    .line 153
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->state_tv:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->stateTv:Landroid/widget/TextView;

    .line 154
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->pause:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->pauseTv:Landroid/widget/TextView;

    .line 155
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/KTVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->current_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    .line 156
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    sget p2, Lcom/kantv/video/R$id;->message:I

    invoke-virtual {p0, p2}, Lcom/kantv/video/KTVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/kantv/video/KTVideoPlayer;->mMessage:Landroid/widget/LinearLayout;

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer;->player:Lcom/kantv/video/KTVideoPlayer;

    return-object p1
.end method

.method protected updateStartImage()V
    .locals 3

    .line 915
    iget-boolean v0, p0, Lcom/kantv/video/KTVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 917
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 918
    iget v1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 919
    sget v1, Lcom/kantv/video/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 920
    :cond_0
    iget v1, p0, Lcom/kantv/video/KTVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 921
    sget v1, Lcom/kantv/video/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 923
    :cond_1
    sget v1, Lcom/kantv/video/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 927
    :cond_2
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    :cond_3
    :goto_0
    return-void
.end method
