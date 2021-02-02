.class public Lcom/kantv/ui/activity/VersionupActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "VersionupActivity.java"


# instance fields
.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private loadProgress:I

.field mBt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090018
    .end annotation
.end field

.field mInup:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090019
    .end annotation
.end field

.field mPresent:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09001a
    .end annotation
.end field

.field private mReceiverTag:Z

.field mText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09001b
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09001c
    .end annotation
.end field

.field mTitleTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0903ac
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private str:Ljava/lang/String;

.field final timer:Ljava/util/Timer;

.field titleLeftLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090374
    .end annotation
.end field

.field titleRightLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090376
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mReceiverTag:Z

    .line 91
    iput v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->loadProgress:I

    .line 92
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    .line 216
    new-instance v0, Lcom/kantv/ui/activity/VersionupActivity$2;

    invoke-direct {v0, p0}, Lcom/kantv/ui/activity/VersionupActivity$2;-><init>(Lcom/kantv/ui/activity/VersionupActivity;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/VersionupActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/kantv/ui/activity/VersionupActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/VersionupActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/activity/VersionupActivity;->str:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kantv/ui/activity/VersionupActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity;->str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->initUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->checkStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/VersionupActivity;)Landroid/app/DownloadManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadManager:Landroid/app/DownloadManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/VersionupActivity;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/VersionupActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/kantv/ui/activity/VersionupActivity;->loadProgress:I

    return p0
.end method

.method static synthetic access$602(Lcom/kantv/ui/activity/VersionupActivity;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/kantv/ui/activity/VersionupActivity;->loadProgress:I

    return p1
.end method

.method private checkStatus()V
    .locals 6

    .line 226
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 228
    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadId:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 229
    iget-object v2, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "status"

    .line 231
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    const/16 v3, 0x8

    if-eq v2, v1, :cond_2

    if-eq v2, v3, :cond_1

    const/16 v1, 0x10

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u5305\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    iput v5, p0, Lcom/kantv/ui/activity/VersionupActivity;->loadProgress:I

    .line 265
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 266
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->initUpdate()V

    .line 256
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u5305\u4e0b\u8f7d\u5df2\u6682\u505c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 238
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u5305\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_5

    .line 250
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u5305\u5ef6\u8fdf\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private initTitle()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mTitleTv:Landroid/widget/TextView;

    const-string v1, "\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->titleRightLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "version_update_content"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initUpdate()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/VersionupActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VersionupActivity$3;-><init>(Lcom/kantv/ui/activity/VersionupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mBt:Landroid/widget/TextView;

    new-instance v1, Lcom/kantv/ui/activity/VersionupActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VersionupActivity$4;-><init>(Lcom/kantv/ui/activity/VersionupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private initVersionUp()V
    .locals 4

    const-string v0, "download"

    .line 118
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VersionupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadManager:Landroid/app/DownloadManager;

    .line 119
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    const-string v1, "2"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

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

    .line 126
    invoke-static {}, Lcom/kantv/common/utils/Utils;->isGooglePlayVersion()Z

    move-result v0

    const-string v2, "canala"

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    const-string v1, "1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    const-string v1, "devicetype"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Ldebug/KanApplication;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    sget-object v1, Ldebug/KanApplication;->token:Ljava/lang/String;

    const-string v2, "_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity;->request:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/kantv/common/api/ApiService;->version_up(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/activity/VersionupActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/kantv/ui/activity/VersionupActivity$1;-><init>(Lcom/kantv/ui/activity/VersionupActivity;Landroid/content/Context;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loadProgressing()V
    .locals 6

    .line 327
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 328
    new-instance v1, Lcom/kantv/ui/activity/VersionupActivity$5;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VersionupActivity$5;-><init>(Lcom/kantv/ui/activity/VersionupActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x320

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mInup:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x2

    .line 197
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p1, "\u770bTV"

    .line 198
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p1, "Apk Downloading"

    .line 199
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 200
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const-string v1, "/downloadapk"

    .line 203
    invoke-virtual {v0, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 206
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->downloadId:J

    .line 208
    iget-boolean p2, p0, Lcom/kantv/ui/activity/VersionupActivity;->mReceiverTag:Z

    if-nez p2, :cond_1

    .line 209
    iget-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/kantv/ui/activity/VersionupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iput-boolean p1, p0, Lcom/kantv/ui/activity/VersionupActivity;->mReceiverTag:Z

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->loadProgressing()V

    return-void
.end method

.method public installAPK(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 313
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    const-string v1, "com.kantv.ui"

    .line 315
    invoke-static {p0, v1, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 320
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const-string v1, "application/vnd.android.package-archive"

    .line 322
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VersionupActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090374
        }
    .end annotation

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090374

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VersionupActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    .line 97
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/VersionupActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/kantv/ui/activity/VersionupActivity;->initBase()V

    .line 99
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->initTitle()V

    .line 100
    invoke-direct {p0}, Lcom/kantv/ui/activity/VersionupActivity;->initVersionUp()V

    .line 101
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u7248\u672c\u66f4\u65b0"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 102
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
    .locals 1

    .line 359
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 360
    iget-boolean v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mReceiverTag:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/VersionupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/kantv/ui/activity/VersionupActivity;->mReceiverTag:Z

    :cond_0
    return-void
.end method
