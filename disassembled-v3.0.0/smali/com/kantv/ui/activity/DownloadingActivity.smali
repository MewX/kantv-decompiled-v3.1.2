.class public Lcom/kantv/ui/activity/DownloadingActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "DownloadingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadingActivity"

.field private static mobileReDownloadFlag:Z = false


# instance fields
.field actionbarMenu:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090283
    .end annotation
.end field

.field actionbarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900bf
    .end annotation
.end field

.field private bCheckbox:Z

.field private currentTime:J

.field deleteLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d5
    .end annotation
.end field

.field private entityVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/EntityVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/EntityVideo;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field private nameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkStatusToastFlag:Z

.field private pauseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field startLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004e
    .end annotation
.end field

.field startLl:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090351
    .end annotation
.end field

.field stopLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09004f
    .end annotation
.end field

.field private trueUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->currentTime:J

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->bCheckbox:Z

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    const-string v1, ""

    .line 90
    iput-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->trueUrl:Ljava/lang/String;

    .line 91
    iput-boolean v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->networkStatusToastFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/DownloadingActivity;Lcom/kantv/ui/bean/EntityVideo;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity;->setProgressText(Lcom/kantv/ui/bean/EntityVideo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/DownloadingActivity;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->isQuicklyClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/DownloadingActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->bCheckbox:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/DownloadingActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/DownloadingActivity;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->mobileStatusRestartDownload()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/kantv/ui/activity/DownloadingActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->isDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->trueUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kantv/ui/activity/DownloadingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->trueUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 65
    sput-boolean p0, Lcom/kantv/ui/activity/DownloadingActivity;->mobileReDownloadFlag:Z

    return p0
.end method

.method private deleterItem()V
    .locals 10

    .line 538
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "DownloadingActivity"

    const-string v1, "\u5220\u9664"

    .line 539
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 543
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 544
    :goto_0
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, ""

    if-ge v6, v7, :cond_2

    .line 545
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v7, v7, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-eqz v7, :cond_1

    .line 546
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget v7, v7, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget v7, v7, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget v7, v7, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget v7, v7, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 552
    :cond_0
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v7

    iget-object v8, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v8, v8, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 556
    :cond_2
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {v4}, Lcom/kantv/ui/download/VideoDownloadManager;->removeDownloadList(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 557
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 558
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData3(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 560
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->getFileName()Ljava/lang/String;

    const/4 v1, 0x0

    .line 561
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 562
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 563
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    .line 564
    :goto_3
    iget-object v9, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 565
    iget-object v9, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 566
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v4

    .line 567
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8def\u5f84"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "       "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, v6}, Lcom/kantv/ui/activity/DownloadingActivity;->RecursionDeleteFile(Ljava/io/File;)V

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 577
    :cond_6
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_7

    .line 578
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 579
    :cond_7
    new-instance v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;

    invoke-direct {v0, v8}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2713

    .line 580
    iput v1, v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    .line 581
    new-instance v1, Lcom/kantv/ui/bean/TestEvent;

    invoke-direct {v1}, Lcom/kantv/ui/bean/TestEvent;-><init>()V

    const-string v2, "videoplay"

    .line 582
    iput-object v2, v1, Lcom/kantv/ui/bean/TestEvent;->message:Ljava/lang/String;

    .line 583
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 584
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 10

    .line 593
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->checkSDCard()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 594
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath\uff1a\uff1a   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadingActivity"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
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

    .line 598
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 604
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

    .line 606
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 610
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filePath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "     "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity;->nameList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method private initAdapter()V
    .locals 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entityVideoList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 135
    new-instance v0, Lcom/kantv/ui/activity/DownloadingActivity$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    const v3, 0x7f0c007d

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/DownloadingActivity$1;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 294
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 773
    new-instance v0, Lcom/kantv/ui/view/AlertDialog;

    invoke-direct {v0, p0}, Lcom/kantv/ui/view/AlertDialog;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/DownloadingActivity$4;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/DownloadingActivity$4;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;)V

    const-string p3, "\u77e5\u9053\u4e86"

    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/DownloadingActivity$3;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/DownloadingActivity$3;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;)V

    const-string p3, "\u53bb\u8bbe\u7f6e"

    .line 780
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 787
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p3, :cond_1

    .line 789
    invoke-virtual {v0}, Lcom/kantv/ui/view/AlertDialog;->builder()Lcom/kantv/ui/view/AlertDialog;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/kantv/ui/view/AlertDialog;->setTitle(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/kantv/ui/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/DownloadingActivity$6;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/DownloadingActivity$6;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;)V

    const-string p3, "\u53d6\u6d88"

    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/kantv/ui/activity/DownloadingActivity$5;

    invoke-direct {p2, p0}, Lcom/kantv/ui/activity/DownloadingActivity$5;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;)V

    const-string p3, "\u7ee7\u7eed"

    .line 794
    invoke-virtual {p1, p3, p2}, Lcom/kantv/ui/view/AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/AlertDialog;

    move-result-object p1

    .line 808
    invoke-virtual {p1}, Lcom/kantv/ui/view/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 1

    .line 122
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 123
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    iput-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    return-void
.end method

.method private initQueue()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQueue state \u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget v2, v2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget v2, v2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadingActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->notifyChanged()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarTitle:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private isQuicklyClick()Z
    .locals 5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->currentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    const-string v1, "is too quickly click!"

    const-string v2, ""

    .line 326
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->currentTime:J

    return v0
.end method

.method private isQuicklyClick2()Z
    .locals 5

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->currentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    const-string v1, "is too quickly click!"

    const-string v2, ""

    .line 337
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->currentTime:J

    return v0
.end method

.method private mobileStatusRestartDownload()Z
    .locals 4

    .line 853
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/NetWorkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "download_type_wifi"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u63d0\u793a"

    const-string v2, "\u975eWifi\u7f51\u7edc\u7f13\u5b58\u4f1a\u6d88\u8017\u6d41\u91cf\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    .line 856
    invoke-direct {p0, v0, v2, v1}, Lcom/kantv/ui/activity/DownloadingActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyChanged()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChangednotifyChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/kantv/ui/bean/EntityVideo;->state:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadingActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNOtShow"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v3, v3, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 3

    .line 482
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/kantv/ui/bean/EntityVideo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    progress_gray  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private removeDownloard()V
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entityVideoList.size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initAdapter()V

    return-void
.end method

.method private setAllCheckbox()V
    .locals 3

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setAllnotCheckbox()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 529
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setItemtIsNotShow(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 507
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 508
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 511
    :goto_1
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_2

    .line 517
    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private setProgressText(Lcom/kantv/ui/bean/EntityVideo;)Ljava/lang/String;
    .locals 2

    .line 632
    invoke-virtual {p1}, Lcom/kantv/ui/bean/EntityVideo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p1, ""

    return-object p1

    :pswitch_1
    const-string p1, "\u5b58\u8d2e\u7a7a\u95f4\u4e0d\u8db3"

    return-object p1

    :pswitch_2
    const-string p1, "\u6682\u505c\u4e2d"

    return-object p1

    :pswitch_3
    const-string p1, "\u4e0b\u8f7d\u51fa\u9519\u4e86"

    return-object p1

    :pswitch_4
    const-string p1, "\u6210\u529f\u4e0b\u8f7d"

    return-object p1

    .line 634
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u4e2d-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/EntityVideo;->getFormatSpeed()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string p1, "\u51c6\u5907\u4e2d"

    return-object p1

    :pswitch_7
    const-string p1, "\u52a0\u5165\u961f\u5217\u7b49\u5f85\u4e0b\u8f7d"

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private wifiStatusHandle()V
    .locals 5

    .line 825
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/utils/NetWorkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 826
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "download_type_wifi"

    invoke-static {v0, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 827
    sget-boolean v2, Lcom/kantv/ui/activity/DownloadingActivity;->mobileReDownloadFlag:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 830
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 831
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** no wifi pause video "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(\u7b2c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u96c6)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DownloadingActivity"

    invoke-static {v4, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_0
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/util/List;)V

    .line 837
    :cond_1
    iget-boolean v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->networkStatusToastFlag:Z

    if-nez v0, :cond_3

    .line 838
    iput-boolean v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->networkStatusToastFlag:Z

    const-string v0, "\u63d0\u793a"

    const-string v1, "\u68c0\u6d4b\u5230\u6b63\u5728\u4f7f\u7528\u79fb\u52a8\u7f51\u7edc\uff0c\u5df2\u4e3a\u60a8\u5173\u95ed\u4e0b\u8f7d"

    .line 839
    invoke-direct {p0, v0, v1, v3}, Lcom/kantv/ui/activity/DownloadingActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 845
    :cond_2
    iget-boolean v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->networkStatusToastFlag:Z

    if-eqz v0, :cond_3

    .line 846
    iput-boolean v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->networkStatusToastFlag:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public RecursionDeleteFile(Ljava/io/File;)V
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6267\u884c\u5220\u9664\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 306
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 311
    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/DownloadingActivity;->RecursionDeleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 307
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public formetFileUnit(J)Ljava/lang/String;
    .locals 4

    .line 870
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 873
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

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p1, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x40000000

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    .line 877
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

    .line 879
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

    .line 881
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileSizeString  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DownloadingActivity"

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFileSize()V
    .locals 8

    .line 655
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 656
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "   progress_gray  "

    const-string v4, "DownloadingActivity"

    if-ge v1, v2, :cond_0

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "8yjn  getFileSizename    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget v3, v3, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 659
    :goto_1
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-(\u7b2c"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u96c6)-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 662
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 664
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 666
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tsNumble"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget v7, v7, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "    files.length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget v6, v6, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    if-eqz v6, :cond_2

    .line 669
    array-length v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget v6, v6, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 670
    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iput v5, v6, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileSizename    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v5, 0x0

    iput v5, v2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 679
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "9yjn  getFileSizename    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget v2, v2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public getOneFileSize(Ljava/lang/String;Ljava/lang/String;I)F
    .locals 7

    .line 687
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 688
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "   progress_gray  "

    const-string v5, "DownloadingActivity"

    if-ge v2, v3, :cond_0

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8yjn  getFileSizename    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v6, v6, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget v4, v4, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-(\u7b2c"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u96c6)-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object p1, p1, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 693
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 695
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tsNumble"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iget v1, v1, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    files.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    array-length p2, p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kantv/ui/bean/EntityVideo;

    iget p3, p3, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 699
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileSizename    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 707
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 708
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "9yjn  getFileSizename    "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object p2, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/EntityVideo;

    iget p2, p2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900bb,
            0x7f09004f,
            0x7f09004e,
            0x7f0900f1,
            0x7f0900a4,
            0x7f0900d4
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "\u96c6)"

    const-string v1, "(\u7b2c"

    const-string v2, "DownloadingActivity"

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 430
    :sswitch_0
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u7f16\u8f91"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 431
    iput-boolean v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->bCheckbox:Z

    .line 432
    invoke-direct {p0, v3}, Lcom/kantv/ui/activity/DownloadingActivity;->setItemtIsNotShow(Z)V

    .line 433
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->startLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 437
    :cond_0
    iput-boolean v4, p0, Lcom/kantv/ui/activity/DownloadingActivity;->bCheckbox:Z

    .line 438
    invoke-direct {p0, v4}, Lcom/kantv/ui/activity/DownloadingActivity;->setItemtIsNotShow(Z)V

    .line 439
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->actionbarMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->startLl:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->setAllnotCheckbox()V

    goto/16 :goto_3

    .line 359
    :sswitch_1
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->isQuicklyClick()Z

    move-result p1

    if-nez p1, :cond_5

    .line 360
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->deleterItem()V

    goto/16 :goto_3

    .line 347
    :sswitch_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->finish()V

    goto/16 :goto_3

    .line 351
    :sswitch_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->isQuicklyClick()Z

    move-result p1

    if-nez p1, :cond_5

    .line 352
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->setAllCheckbox()V

    goto/16 :goto_3

    :sswitch_4
    const-string p1, "\u5168\u90e8\u6682\u505c"

    .line 372
    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->isQuicklyClick2()Z

    move-result p1

    if-nez p1, :cond_5

    .line 375
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 376
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 377
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_1

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnClickListenername"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->pauseList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/util/List;)V

    .line 383
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :sswitch_5
    const-string p1, "\u5168\u90e8\u5f00\u59cb"

    .line 404
    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->isQuicklyClick2()Z

    move-result v5

    if-nez v5, :cond_5

    .line 406
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v5, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 407
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->mobileStatusRestartDownload()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 408
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v5, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 409
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v5, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget v5, v5, Lcom/kantv/ui/bean/EntityVideo;->state:I

    if-eq v5, v3, :cond_4

    .line 410
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v5, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget v5, v5, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 411
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v5, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget v5, v5, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    goto/16 :goto_2

    .line 414
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v6, v6, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v6, v6, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    iget-object v6, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v6, v6, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    const-string v7, "url"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-(\u7b2c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u96c6)-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kantv/ui/activity/DownloadingActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v7, v7, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v5}, Lcom/kantv/ui/activity/DownloadingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004e -> :sswitch_5
        0x7f09004f -> :sswitch_4
        0x7f0900a4 -> :sswitch_3
        0x7f0900bb -> :sswitch_2
        0x7f0900d4 -> :sswitch_1
        0x7f0900f1 -> :sswitch_0
        0x7f090283 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 97
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initBase()V

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initView()V

    .line 101
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initData()V

    .line 102
    invoke-virtual {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->getFileSize()V

    .line 103
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initAdapter()V

    .line 104
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->initQueue()V

    .line 105
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d_\u5217\u8868"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 106
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
    .locals 3

    .line 815
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 817
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 818
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 819
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v2, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    .line 820
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 450
    iget v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->removeDownloard()V

    goto :goto_0

    .line 452
    :cond_0
    iget v0, p1, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->tag:I

    if-nez v0, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->wifiStatusHandle()V

    .line 454
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/DownloadingActivity;->notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/kantv/ui/activity/DownloadingActivity;->wifiStatusHandle()V

    return-void
.end method

.method public requestSwitchOver(Ljava/lang/String;)V
    .locals 4

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSwitchOver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadingActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v3, "noncestr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v3, "sbID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    sget-object v2, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v3, "sign"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    const-string v2, "part_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    const-string v0, "devicetype"

    const-string v2, "0"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v2, "interfaceVersion"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->request:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/kantv/common/api/ApiService;->requestUrl(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/activity/DownloadingActivity$2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v2}, Lcom/kantv/ui/activity/DownloadingActivity$2;-><init>(Lcom/kantv/ui/activity/DownloadingActivity;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trueUrl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity;->trueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
