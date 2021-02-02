.class public Lcom/kantv/ui/fragment/VideoDetailFragment;
.super Lcom/kantv/common/base/BaseFragment;
.source "VideoDetailFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailFragment"

.field public static mPartId:Ljava/lang/String;

.field public static tvid:Ljava/lang/String;


# instance fields
.field private SDcardTotalSize:J

.field private SDcardUseSize:J

.field aboutExtendTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090008
    .end annotation
.end field

.field aboutLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903c7
    .end annotation
.end field

.field allCommentTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090049
    .end annotation
.end field

.field collectImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ae
    .end annotation
.end field

.field commentRecycler:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b5
    .end annotation
.end field

.field private commentSumNum:Ljava/lang/String;

.field commentTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900b8
    .end annotation
.end field

.field private currentTime:J

.field private defeated_img:Ljava/lang/String;

.field private defeated_title:Ljava/lang/String;

.field private defeated_url:Ljava/lang/String;

.field detailCommentLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900db
    .end annotation
.end field

.field private downloadNum:Landroid/widget/TextView;

.field private downloadingNum:I

.field private fast:Z

.field private info:Lorg/json/JSONObject;

.field private initdownloadArray:Lorg/json/JSONArray;

.field private isLogin:Z

.field private isNum:Z

.field private isXianlu:Z

.field private is_collect:Ljava/lang/String;

.field public isplay:I

.field private mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

.field public mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomView:Lcom/tandong/bottomview/view/BottomView;

.field private mCommentAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/CommentChildBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentChildBean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lorg/json/JSONObject;

.field mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadDetail:Lorg/json/JSONObject;

.field public mPart:Ljava/lang/String;

.field private mPartinfo:Lorg/json/JSONArray;

.field public mPlayData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903b9
    .end annotation
.end field

.field public mPlayName:Ljava/lang/String;

.field private mPlayinfo:Lorg/json/JSONObject;

.field public mPosition:I

.field private mRecommenAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommenData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String8Bean;",
            ">;"
        }
    .end annotation
.end field

.field mRecommendList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090120
    .end annotation
.end field

.field private mStarAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/String4Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mStarData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/String4Bean;",
            ">;"
        }
    .end annotation
.end field

.field mStarList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090121
    .end annotation
.end field

.field mStarTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090123
    .end annotation
.end field

.field mUpdatanum:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090122
    .end annotation
.end field

.field mVideoAbout:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090006
    .end annotation
.end field

.field mVideoName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903bb
    .end annotation
.end field

.field private mp4NameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notDownload:Z

.field private orderFlag:Z

.field public photo:Ljava/lang/String;

.field public playinfo:Lorg/json/JSONObject;

.field private sdcardPath:Ljava/lang/String;

.field public shareurl:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private tvTitle:Ljava/lang/String;

.field videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903c2
    .end annotation
.end field

.field videoDetailScore:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903ba
    .end annotation
.end field

.field private videoSizeSum:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 110
    invoke-direct {p0}, Lcom/kantv/common/base/BaseFragment;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentData:Ljava/util/List;

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mData:Lorg/json/JSONObject;

    .line 161
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    const/4 v2, 0x0

    .line 167
    iput v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    .line 169
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->shareurl:Ljava/lang/String;

    const-string v3, ""

    .line 171
    iput-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->title:Ljava/lang/String;

    .line 177
    iput v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isplay:I

    .line 178
    iput-boolean v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isXianlu:Z

    .line 179
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->notDownload:Z

    .line 180
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->defeated_url:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->defeated_img:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->defeated_title:Ljava/lang/String;

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    .line 185
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    .line 186
    iput-boolean v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->fast:Z

    .line 187
    iput-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->sdcardPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 188
    iput-wide v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->currentTime:J

    .line 189
    iput-boolean v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isLogin:Z

    .line 193
    iput v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    .line 194
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 196
    iput-wide v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    .line 197
    iput-wide v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    .line 199
    iput-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tvTitle:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 205
    iput-boolean v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->orderFlag:Z

    .line 206
    iput-wide v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoSizeSum:J

    .line 207
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->playinfo:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isXianlu:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->notDownload:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/kantv/ui/fragment/VideoDetailFragment;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isLogin:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONArray;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/kantv/ui/fragment/VideoDetailFragment;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/kantv/ui/fragment/VideoDetailFragment;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->readSDCard()V

    return-void
.end method

.method static synthetic access$2100(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->readSystem()V

    return-void
.end method

.method static synthetic access$2200(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initPlayData()V

    return-void
.end method

.method static synthetic access$2300(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->havePermissionForWriteStorage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->download()V

    return-void
.end method

.method static synthetic access$2500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->isQuicklyClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tvTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->alertDeleteDownloadDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/kantv/ui/fragment/VideoDetailFragment;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    return p0
.end method

.method static synthetic access$3108(Lcom/kantv/ui/fragment/VideoDetailFragment;)I
    .locals 2

    .line 110
    iget v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    return v0
.end method

.method static synthetic access$3200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadNum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestAjaxPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3402(Lcom/kantv/ui/fragment/VideoDetailFragment;J)J
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoSizeSum:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestPlayUrlAndDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct/range {p0 .. p7}, Lcom/kantv/ui/fragment/VideoDetailFragment;->saveTvDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/kantv/ui/fragment/VideoDetailFragment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initDownloadingData()V

    return-void
.end method

.method static synthetic access$4100(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/tandong/bottomview/view/BottomView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/fragment/VideoDetailFragment;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isonDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentSumNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method private alertDeleteDownloadDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1994
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1995
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    const-string v1, "\u505c\u6b62\u5e76\u5220\u9664\u8be5\u96c6\u7f13\u5b58"

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$20;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$20;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$19;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$19;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string p3, "\u53d6\u6d88"

    .line 2046
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2051
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private download()V
    .locals 11

    .line 1365
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getFileName()Ljava/lang/String;

    .line 1366
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initDownloadingData()V

    .line 1368
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000af

    const v3, 0x7f0c0042

    invoke-direct {v0, v1, v2, v3}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 1369
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1370
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1371
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v2}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1372
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v3}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090211

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1373
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v3}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900ee

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadNum:Landroid/widget/TextView;

    .line 1374
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v3}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1375
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1376
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    const-string v6, ""

    if-lez v4, :cond_1

    .line 1377
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v7, "downloadlist"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->initdownloadArray:Lorg/json/JSONArray;

    .line 1378
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->initdownloadArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    iput v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    .line 1379
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->initdownloadArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1380
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1383
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    .line 1384
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1388
    :cond_1
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1389
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    .line 1390
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadNum:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1394
    :cond_2
    iput v5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->downloadingNum:I

    .line 1396
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDcardTotalSize"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    invoke-virtual {p0, v6, v7}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "VideoDetailFragment"

    invoke-static {v6, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDcardUseSize"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    invoke-virtual {p0, v7, v8}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, " \u7a7a\u95f4\u53ef\u7528"

    const-string v7, "\u5269\u4f59 "

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    .line 1399
    sget-boolean v4, Lcom/kantv/ui/download/SettingsManager;->isPhoneSdCard:Z

    if-eqz v4, :cond_4

    .line 1401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    invoke-virtual {p0, v9, v10}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/kantv/ui/download/SettingsManager;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 1404
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1405
    invoke-static {v6}, Lcom/kantv/ui/download/SettingsManager;->getSd(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 1406
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1410
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    invoke-virtual {p0, v9, v10}, Lcom/kantv/ui/fragment/VideoDetailFragment;->formetFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    :goto_1
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$13;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$13;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1422
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$14;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$14;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1431
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_6

    .line 1432
    iput-boolean v5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    goto :goto_2

    .line 1434
    :cond_6
    iput-boolean v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    .line 1438
    :cond_7
    :goto_2
    iget-boolean v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    if-eqz v1, :cond_8

    .line 1439
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1442
    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$15;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0095

    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/kantv/ui/fragment/VideoDetailFragment$15;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    goto :goto_3

    .line 1564
    :cond_8
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v8, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1565
    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$16;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0096

    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/kantv/ui/fragment/VideoDetailFragment$16;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 1683
    :goto_3
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1684
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    .line 1685
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0, v8}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 8

    .line 1919
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->checkSDCard()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1922
    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath\uff1a\uff1a   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoDetailFragment"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir.exists()\uff1a\uff1a   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1928
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1932
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 1933
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file.getName()\uff1a\uff1a   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1936
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6587\u4ef6\u540dmp4\uff1a\uff1a   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v6, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private havePermissionForWriteStorage()Z
    .locals 4

    .line 2095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 2096
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    invoke-virtual {p0, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Allowed"

    const-string v3, "true"

    .line 2098
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/16 v2, 0x3b6

    invoke-virtual {p0, v0, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return v1
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2242
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2243
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$25;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$25;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u4ec5wifi\u4e0b\u8f7d"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$24;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$24;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u53bb\u8bbe\u7f6e"

    .line 2248
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2255
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 2202
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2203
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$23;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$23;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$22;

    invoke-direct {p2, p0, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$22;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;I)V

    const-string p3, "\u786e\u5b9a"

    .line 2208
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2232
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initCMTRequest()V
    .locals 4

    .line 866
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 867
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "page"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "0"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "sort"

    const-string v3, "new"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->getComments(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$7;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/VideoDetailFragment$7;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private initDownload()V
    .locals 7

    const-string v0, "onCreate2"

    const-string v1, "VideoDetailFragment"

    const-string v2, ""

    .line 232
    :try_start_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "download"

    invoke-static {v3, v4, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 233
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    .line 236
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 237
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "isphonesdcard"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 238
    sput-boolean v3, Lcom/kantv/ui/download/SettingsManager;->isPhoneSdCard:Z

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iisPhoneSdCard    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 241
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kantv/ui/download/SettingsManager;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->sdcardPath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 244
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->sdcardPath:Ljava/lang/String;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 245
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 250
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 251
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 253
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getPhotoDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 258
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 264
    :cond_5
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method private initDownloadingData()V
    .locals 10

    .line 1950
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getFileName()Ljava/lang/String;

    .line 1951
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    const-string v1, "VideoDetailFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1952
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mp4Namelist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 1957
    :goto_1
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1958
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String8Bean;

    .line 1959
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x0

    .line 1960
    :goto_2
    iget-object v5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1961
    iget-object v5, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mp4NameList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    .line 1962
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1963
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1964
    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    .line 1965
    aget-object v6, v6, v8

    const-string v7, "[^0-9]"

    .line 1967
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1968
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, ""

    .line 1969
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1970
    iget-object v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    .line 1972
    iget-object v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initDownloadingData name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  tvname"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  playdata.getStr3()  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "play.m3u8"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "2"

    .line 1978
    iput-object v4, v3, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    .line 1979
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private initOpenGpsDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2280
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2281
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$27;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$27;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$26;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$26;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 2285
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2302
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2312
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2313
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$29;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$29;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$28;

    invoke-direct {p2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$28;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    const-string v0, "\u7acb\u5373\u5f00\u542f"

    .line 2317
    invoke-virtual {p1, v0, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 2336
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    return-void
.end method

.method private initPlayData()V
    .locals 8

    .line 2055
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2056
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2058
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2060
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2063
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 2064
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "VideoDetailFragment"

    const/4 v2, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 2065
    :goto_1
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 2066
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 2067
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v4, "downloadlist"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadArray  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/String8Bean;

    .line 2070
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    .line 2071
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2072
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "id"

    .line 2073
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, "1"

    .line 2074
    iput-object v3, v4, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    .line 2075
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2089
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STR9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/String8Bean;

    iget-object v3, v3, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private initRequestLikeThis(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2112
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2113
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2114
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v0, "tvid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string p2, "0"

    const-string v0, "type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object p2, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v0, "interfaceVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/kantv/common/api/ApiService;->likethis(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/fragment/VideoDetailFragment$21;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/kantv/ui/fragment/VideoDetailFragment$21;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZI)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private isOrderRank()Z
    .locals 1

    .line 2344
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->orderFlag:Z

    return v0
.end method

.method private isQuicklyClick()Z
    .locals 5

    .line 2265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->currentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    const-string v1, "VideoDetailFragment"

    const-string v2, "*** quickly click!"

    .line 2267
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2269
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->currentTime:J

    return v0
.end method

.method private readSDCard()V
    .locals 11

    .line 2181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 2182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2184
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2186
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 2187
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 2188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "block\u5927\u5c0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",block\u6570\u76ee:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v4, v4, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "VideoDetailFragment"

    invoke-static {v8, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    add-long/2addr v9, v4

    iput-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    .line 2190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",\u5269\u4f59\u7a7a\u95f4:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v0, v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    iget-wide v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    :cond_0
    return-void
.end method

.method private readSystem()V
    .locals 11

    .line 2168
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 2169
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2171
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 2172
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 2173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "block\u5927\u5c0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",block\u6570\u76ee:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v4, v4, v2

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "VideoDetailFragment"

    invoke-static {v8, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    iget-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    add-long/2addr v9, v4

    iput-wide v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardTotalSize:J

    .line 2175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53ef\u7528\u7684block\u6570\u76ee\uff1a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",\u53ef\u7528\u5927\u5c0f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v0, v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-wide v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->SDcardUseSize:J

    return-void
.end method

.method private requestAjaxPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1689
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1690
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "part_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "circuit"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->lineSwitch(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v7, Lcom/kantv/ui/fragment/VideoDetailFragment$17;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/fragment/VideoDetailFragment$17;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private requestPlayUrlAndDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1718
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1719
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "part_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->requestUrl(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v7, Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/kantv/ui/fragment/VideoDetailFragment$18;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private saveTvDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    const/16 v16, 0x0

    :try_start_0
    const-string v0, "VideoDetailFragment"

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsonTitle  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  part_id  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  part  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  playinfo.optString(\"url\")  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   size  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 1779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v3, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoSizeSum:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v17, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-object v15, v12

    move-wide/from16 v11, v17

    .line 1778
    :try_start_1
    invoke-virtual/range {v1 .. v12}, Lcom/kantv/ui/fragment/VideoDetailFragment;->toJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JJ)Lorg/json/JSONObject;

    move-result-object v16

    const-string v0, "VideoDetailFragment"

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadDetail  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

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

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v15, v12

    .line 1782
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u751f\u6210toJSON\u51fa\u9519"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDetailFragment"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    move-object/from16 v0, v16

    .line 1785
    iget-object v1, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1786
    iget-object v1, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v3, "downloadlist"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1787
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    .line 1789
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1790
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrayJson"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoDetailFragment"

    invoke-static {v6, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-string v5, "id"

    .line 1793
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1794
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_7

    .line 1804
    :try_start_2
    iget-object v3, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1805
    :try_start_3
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1806
    iget-object v0, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v4, "downloadlist"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1807
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    iget-object v4, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1808
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1811
    :try_start_4
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 1812
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1813
    :goto_4
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1814
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v0, v0, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VideoDetailFragment"

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListenername"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(\u7b2c"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    move-object v5, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 1819
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 1820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-(\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6)-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    :cond_2
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v3, v15

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 1808
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 1828
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    :cond_3
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v3, v15

    .line 1833
    :try_start_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1834
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1835
    iget-object v0, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v6, "downloadlist"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1836
    iget-object v1, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1837
    :try_start_8
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "download"

    iget-object v7, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1838
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1841
    :try_start_9
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 1842
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1843
    :goto_5
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1844
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v0, v0, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "VideoDetailFragment"

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListenername"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 1849
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-(\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6)-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    .line 1838
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v0

    .line 1867
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    :cond_5
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v3, v15

    .line 1873
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1874
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1875
    iget-object v0, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    const-string v6, "downloadlist"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1876
    iget-object v1, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    .line 1877
    :try_start_d
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "download"

    iget-object v7, v13, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadDetail:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1881
    :try_start_e
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 1882
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1883
    :goto_6
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1884
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v0, v0, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "VideoDetailFragment"

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnClickListenername"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 1889
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    .line 1890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-(\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6)-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    .line 1878
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v0

    .line 1897
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1900
    :cond_7
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initDownload()V

    return-void
.end method


# virtual methods
.method checkReadStorage()V
    .locals 5

    .line 1343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 1344
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v0, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->download()V

    goto :goto_1

    .line 1346
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1347
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1351
    :cond_2
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/16 v1, 0x64

    invoke-static {v0, v3, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 1359
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->download()V

    :cond_4
    :goto_1
    return-void
.end method

.method public formetFileSize(J)Ljava/lang/String;
    .locals 4

    .line 2152
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x100000

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2161
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "G"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public goStarActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "0"

    .line 986
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kantv/ui/activity/StarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 988
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 989
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "img"

    .line 990
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 991
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 992
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayinfo:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p2, "uniShareUrl"

    .line 994
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shareUrl"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0xa

    .line 997
    invoke-virtual {p0, v0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initDownload()V

    .line 224
    iget-boolean v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->fast:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->fast:Z

    :cond_0
    return-void
.end method

.method public initInfoView(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarData:Ljava/util/List;

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommenData:Ljava/util/List;

    .line 278
    iput-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mData:Lorg/json/JSONObject;

    const-string v3, "info"

    .line 279
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    .line 280
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v4, "seo"

    .line 281
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    .line 283
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v6, "_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    .line 284
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v7, "is_collect"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    .line 285
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->tvTitle:Ljava/lang/String;

    .line 286
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v8, "comm_nums"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentSumNum:Ljava/lang/String;

    .line 287
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    const-string v8, "0"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 289
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0802b7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v3, v7, v11}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->collectImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 294
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0802b8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v3, v7, v11}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mUpdatanum:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 299
    iget-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_3
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v7, "score"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailScore:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8c46\u74e3:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u5206"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_4
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoName:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 305
    iget-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_5
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    const-string v11, "aboutme"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v12, 0x8

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 308
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    :cond_6
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v13, 0x2a

    if-ge v3, v13, :cond_7

    .line 310
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "..."

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 312
    :cond_7
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x2a

    invoke-virtual {v11, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "..."

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 315
    :cond_8
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    :goto_1
    const-string v3, "playinfo"

    .line 317
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayinfo:Lorg/json/JSONObject;

    const-string v3, "partinfo"

    .line 323
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 324
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_a

    return-void

    :cond_a
    const-string v11, "positive"

    .line 326
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    :cond_b
    const-string v3, "1"

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x3

    if-eqz v11, :cond_c

    move-object/from16 v11, p2

    .line 330
    iput-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    .line 331
    sput-object p3, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    goto/16 :goto_6

    .line 332
    :cond_c
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 333
    iget-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    invoke-static {v11}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 334
    iget-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    invoke-static {v11, v10}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 335
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 336
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v14, v13, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->isOrderRank()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 337
    iget-object v11, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-static {v11, v14}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v11

    .line 338
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    const-string v14, "part_id"

    .line 339
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    goto :goto_2

    .line 341
    :cond_d
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    const-string v14, "part_id"

    .line 342
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    :cond_e
    :goto_2
    const/4 v11, 0x0

    .line 346
    :goto_3
    iget-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_11

    .line 347
    iget-object v14, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartinfo:Lorg/json/JSONArray;

    invoke-static {v14, v11}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_f

    goto :goto_5

    .line 350
    :cond_f
    iget-object v15, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v24, v8

    goto :goto_4

    :cond_10
    move-object/from16 v24, v3

    .line 353
    :goto_4
    iget-object v13, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    new-instance v15, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v9, "part"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v9, "url"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v9, "prologue"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v9, "new"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v9, "source"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v24}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x3

    goto :goto_3

    :cond_11
    :goto_6
    const-string v9, "actorInfo"

    .line 359
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 362
    invoke-static {v9}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v11

    const-string v13, "photo"

    if-eqz v11, :cond_17

    const/4 v11, 0x0

    .line 363
    :goto_7
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v11, v14, :cond_16

    .line 364
    sget-object v14, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_14

    .line 365
    invoke-static {v9, v11}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_12

    :goto_8
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    goto :goto_9

    :cond_12
    const-string v15, "actor"

    .line 367
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_13

    goto :goto_8

    .line 371
    :cond_13
    iget-object v10, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarData:Ljava/util/List;

    new-instance v12, Lcom/kantv/ui/bean/String4Bean;

    move-object/from16 v18, v7

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v5

    const-string v5, "name"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v4

    const-string v4, "videos"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v7, v5, v4, v14}, Lcom/kantv/ui/bean/String4Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    .line 373
    invoke-static {v9, v11}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_9

    .line 375
    :cond_15
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarData:Ljava/util/List;

    new-instance v7, Lcom/kantv/ui/bean/String4Bean;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "name"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "role"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v10, v12, v14, v4}, Lcom/kantv/ui/bean/String4Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    const/4 v10, 0x0

    const/16 v12, 0x8

    goto/16 :goto_7

    :cond_16
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    goto :goto_a

    :cond_17
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v7

    .line 379
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_18

    const/16 v5, 0x8

    .line 380
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 381
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarTxt:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_18
    :goto_a
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_19

    .line 386
    new-instance v4, Lcom/kantv/ui/fragment/VideoDetailFragment$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0099

    iget-object v7, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarData:Ljava/util/List;

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/kantv/ui/fragment/VideoDetailFragment$1;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 402
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1a

    .line 403
    new-instance v5, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 404
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_b

    .line 407
    :cond_19
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mStarList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1a

    const/16 v5, 0x8

    .line 408
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 412
    :cond_1a
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initCMTRequest()V

    .line 446
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1b

    .line 447
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 450
    :cond_1b
    new-instance v4, Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0092

    iget-object v7, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentData:Ljava/util/List;

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/kantv/ui/fragment/VideoDetailFragment$2;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 566
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1c

    const/4 v5, 0x0

    .line 567
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 568
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->commentRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_c

    :cond_1c
    const/4 v5, 0x0

    .line 577
    :goto_c
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_1d

    .line 578
    new-instance v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_1d
    const-string v4, "2"

    .line 592
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 594
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayinfo:Lorg/json/JSONObject;

    if-eqz v2, :cond_1e

    const-string v4, "history"

    .line 595
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1e
    const-string v2, ""

    .line 597
    :goto_d
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 598
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "part"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "sec"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 603
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 604
    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    :cond_1f
    const/4 v2, 0x0

    .line 606
    :goto_e
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_21

    .line 607
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v5}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 608
    iput v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 612
    :cond_21
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 613
    :goto_f
    iget-object v6, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_23

    .line 614
    iget-object v6, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v6, v3}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    .line 615
    iget-object v6, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v6}, Lcom/kantv/ui/bean/String8Bean;->getStr2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 616
    iput-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPart:Ljava/lang/String;

    .line 617
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v5}, Lcom/kantv/ui/bean/String8Bean;->getStr1()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    move v5, v2

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 621
    :cond_23
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v2, v8}, Lcom/kantv/ui/bean/String8Bean;->setStr8(Ljava/lang/String;)V

    .line 628
    :cond_24
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_26

    .line 629
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/String8Bean;->getStr3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_25

    const/4 v2, 0x1

    .line 630
    iput-boolean v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    .line 634
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$3;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0093

    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/kantv/ui/fragment/VideoDetailFragment$3;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    goto :goto_10

    :cond_25
    const/4 v2, 0x0

    .line 688
    iput-boolean v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    .line 692
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$4;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0094

    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/kantv/ui/fragment/VideoDetailFragment$4;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 746
    :goto_10
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_27

    .line 747
    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 748
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    iget v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_11

    .line 751
    :cond_26
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayListRecycler:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_27

    const/16 v3, 0x8

    .line 752
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_27
    :goto_11
    const-string v2, "like_tv"

    .line 755
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->toJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 757
    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isJSONArrayNotEmpty(Lorg/json/JSONArray;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    .line 758
    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 759
    invoke-static {v2, v3}, Lcom/kantv/common/utils/StringUtils;->getJSONobject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 760
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommenData:Ljava/util/List;

    new-instance v6, Lcom/kantv/ui/bean/String8Bean;

    move-object/from16 v7, v20

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v8, v19

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v9, v18

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v10, "url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v10, "descript"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    const-string v33, ""

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v33}, Lcom/kantv/ui/bean/String8Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 763
    :cond_28
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_29

    const/16 v3, 0x8

    .line 764
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 767
    :cond_29
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_2a

    .line 768
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 769
    :cond_2a
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$5;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0090

    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommenData:Ljava/util/List;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/kantv/ui/fragment/VideoDetailFragment$5;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommenAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 793
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_2b

    const/4 v3, 0x1

    .line 794
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 795
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 796
    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommendList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRecommenAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_2b
    if-eqz v0, :cond_31

    const-string v2, "ad"

    .line 799
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "ad"

    .line 800
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    const-string v2, "play_selectpart_bottom"

    .line 802
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "play_selectpart_bottom"

    .line 803
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2d

    return-void

    .line 805
    :cond_2d
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "photo_size"

    .line 806
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->toJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v4, "width"

    .line 808
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "height"

    .line 809
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v4}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 812
    :try_start_0
    iget-object v5, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v5}, Lcom/kantv/ui/view/ShapedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 813
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v4, v0

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 815
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 816
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v5}, Lcom/kantv/ui/view/ShapedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    :cond_2e
    :goto_13
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    new-instance v4, Lcom/kantv/ui/fragment/VideoDetailFragment$6;

    invoke-direct {v4, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment$6;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v4}, Lcom/kantv/ui/view/ShapedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_30

    add-int/lit8 v2, v0, -0x3

    .line 845
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gif"

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 847
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/GifTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GifRequestBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/GifRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_14

    .line 849
    :cond_2f
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 850
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const/4 v2, 0x0

    .line 851
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const v3, 0x7f080208

    .line 852
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 853
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    .line 854
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_15

    :cond_30
    :goto_14
    const/4 v2, 0x0

    .line 857
    :goto_15
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    invoke-virtual {v0, v2}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    goto :goto_16

    .line 860
    :cond_31
    iget-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->videoDetailAdImg:Lcom/kantv/ui/view/ShapedImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kantv/ui/view/ShapedImageView;->setVisibility(I)V

    :cond_32
    :goto_16
    return-void
.end method

.method public initOnlineStatus(Ljava/lang/String;)V
    .locals 9

    .line 1266
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1267
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Login_State"

    invoke-static {v1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1268
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1270
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->onlineStatus(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$12;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/kantv/ui/fragment/VideoDetailFragment$12;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-static {}, Ldebug/KanApplication;->clearLogin()V

    const/4 p1, 0x0

    .line 1337
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isLogin:Z

    const-string p1, "\u63d0\u793a"

    const-string v0, "\u60a8\u5f53\u524d\u8fd8\u672a\u767b\u5f55\uff0c\u662f\u5426\u524d\u5f80\u767b\u5f55\uff1f"

    .line 1338
    invoke-direct {p0, p1, v0, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public initSelectVideoNumDialog()V
    .locals 5

    .line 1219
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000af

    const v3, 0x7f0c0041

    invoke-direct {v0, v1, v2, v3}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 1220
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1221
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1222
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$10;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$10;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 1230
    iget-boolean v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1231
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 1233
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1235
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1236
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    .line 1237
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0, v3}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method protected initView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006e

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRootView:Landroid/view/View;

    .line 212
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1104
    invoke-super {p0, p1, p2, p3}, Lcom/kantv/common/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoDetailFragment"

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    const-string p1, "tid"

    .line 1108
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "seo"

    .line 1109
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1111
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-class p1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p0, v1, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 1114
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mActivity:Lcom/kantv/ui/activity/VideoPlayActivity;

    if-eqz p1, :cond_0

    .line 1115
    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900ea,
            0x7f090008,
            0x7f090049,
            0x7f090318,
            0x7f0900ae
        }
    .end annotation

    .line 1122
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

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1159
    :sswitch_0
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initSelectVideoNumDialog()V

    goto/16 :goto_0

    .line 1125
    :sswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->isQuicklyClick()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "download"

    .line 1126
    invoke-virtual {p0, p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initOnlineStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :sswitch_2
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->isQuicklyClick()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_1

    .line 1132
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initOpenPushDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->requestCollect()V

    goto :goto_0

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1154
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1155
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-class v0, Lcom/kantv/ui/activity/CommentActivity;

    invoke-virtual {p0, p1, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_0

    .line 1143
    :sswitch_4
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const v0, 0x7fffffff

    .line 1144
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1145
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1146
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1147
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->info:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mVideoAbout:Landroid/widget/TextView;

    const-string v1, "aboutme"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->aboutExtendTV:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 1151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090008 -> :sswitch_4
        0x7f090049 -> :sswitch_3
        0x7f0900ae -> :sswitch_2
        0x7f0900ea -> :sswitch_1
        0x7f090318 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 2355
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2356
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    .line 2357
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-eqz v1, :cond_0

    .line 2358
    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 2359
    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 217
    invoke-super {p0}, Lcom/kantv/common/base/BaseFragment;->onResume()V

    return-void
.end method

.method public refreshCommentsData()V
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mCommentData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2349
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2350
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->initCMTRequest()V

    return-void
.end method

.method public requestCollect()V
    .locals 4

    .line 1166
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1167
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1168
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->is_collect:Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "type"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v3, "collect"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v3, "cannel"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    const-string v3, "tvid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "devicetype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->doCollect(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/fragment/VideoDetailFragment$9;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/kantv/ui/fragment/VideoDetailFragment$9;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public requestSwitchVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1003
    sput-object p1, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPartId:Ljava/lang/String;

    .line 1004
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1005
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1006
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v2, "_token"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->tid:Ljava/lang/String;

    const-string v2, "tvid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v1, "part_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->IndexPlay(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/fragment/VideoDetailFragment$8;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/kantv/ui/fragment/VideoDetailFragment$8;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Landroid/content/Context;ZLjava/lang/String;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public setOrder(Z)V
    .locals 0

    .line 2340
    iput-boolean p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->orderFlag:Z

    return-void
.end method

.method public showFullSelectVideoDialog()V
    .locals 5

    .line 1241
    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1242
    new-instance v0, Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {p0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000af

    const v3, 0x7f0c003e

    invoke-direct {v0, v1, v2, v3}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    if-nez v0, :cond_1

    return-void

    .line 1244
    :cond_1
    invoke-virtual {v0}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1245
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v1}, Lcom/tandong/bottomview/view/BottomView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1246
    new-instance v2, Lcom/kantv/ui/fragment/VideoDetailFragment$11;

    invoke-direct {v2, p0}, Lcom/kantv/ui/fragment/VideoDetailFragment$11;-><init>(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1253
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 1254
    iget-boolean v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->isNum:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1255
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x5

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 1257
    :cond_2
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1259
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1260
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    const v1, 0x7f1000ad

    invoke-virtual {v0, v1}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    .line 1261
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment;->mBottomView:Lcom/tandong/bottomview/view/BottomView;

    invoke-virtual {v0, v3}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    return-void
.end method

.method public toJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JJ)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1904
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 1905
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    .line 1906
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "part"

    .line 1907
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    .line 1908
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tssize"

    .line 1909
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "state"

    .line 1910
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "photo"

    .line 1911
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 1912
    invoke-virtual {v0, p1, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "size"

    .line 1913
    invoke-virtual {v0, p1, p10, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
