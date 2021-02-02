.class public Lcom/kantv/ui/activity/OfflineVideoDetailActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "OfflineVideoDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineVideoDetailActivity"


# instance fields
.field cacheLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008e
    .end annotation
.end field

.field cacheNum:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900e9
    .end annotation
.end field

.field deleteLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900d5
    .end annotation
.end field

.field editTV:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090283
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

.field private headerView:Landroid/view/View;

.field private isCheckbox:Z

.field private isNotHeader:Z

.field private mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kantv/ui/adapter/CommonAdapter<",
            "Lcom/kantv/ui/bean/EntityVideo;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090285
    .end annotation
.end field

.field private name:Landroid/widget/TextView;

.field private nameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field noDataLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field private num:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private speed:Landroid/widget/TextView;

.field private state:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->nameList:Ljava/util/List;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isNotHeader:Z

    .line 81
    iput-boolean v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isCheckbox:Z

    const-string v0, ""

    .line 82
    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isCheckbox:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->nameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deleteItem()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v2, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-nez v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_0
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v2

    .line 218
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8def\u5f84"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OfflineVideoDetailActivity"

    invoke-static {v4, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteFiles(Ljava/io/File;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 226
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 13

    .line 396
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->checkSDCard()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_a

    .line 397
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath\uff1a\uff1a   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfflineVideoDetailActivity"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
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

    .line 401
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_8

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 406
    array-length v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_7

    aget-object v7, v0, v6

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file.getName()\uff1a\uff1a   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6587\u4ef6\u540dmp4\uff1a\uff1a   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, v7}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getFilesize(Ljava/io/File;)J

    move-result-wide v9

    .line 415
    new-instance v11, Lcom/kantv/ui/bean/EntityVideo;

    invoke-direct {v11}, Lcom/kantv/ui/bean/EntityVideo;-><init>()V

    .line 416
    iput-wide v9, v11, Lcom/kantv/ui/bean/EntityVideo;->size:J

    .line 417
    iput-object v8, v11, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    .line 418
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v11, Lcom/kantv/ui/bean/EntityVideo;->path:Ljava/lang/String;

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "play.m3u8"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 420
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filePath"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "     "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    iget-object v7, v11, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 424
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->nameList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_1
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 429
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 432
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 433
    :goto_1
    iget-object v10, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 434
    iget-object v10, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kantv/ui/bean/EntityVideo;

    .line 435
    iget-object v11, v10, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 436
    iget-object v10, v10, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 437
    aget-object v10, v10, v8

    const-string v11, "[^0-9]"

    .line 439
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 440
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 441
    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    .line 443
    :cond_2
    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 444
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 447
    :cond_4
    invoke-virtual {p0, v7}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->bubbleSort(Ljava/util/List;)V

    goto :goto_3

    .line 450
    :cond_5
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v1

    .line 458
    :cond_8
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 463
    :cond_9
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    :goto_4
    return-object v1
.end method

.method private initAdapter()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 280
    new-instance v0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    const v3, 0x7f0c008a

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;-><init>(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 371
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 372
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$2;-><init>(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getFileName()Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->initAdapter()V

    return-void
.end method

.method private recoverUrl()V
    .locals 5

    const-string v0, "OfflineVideoDetailActivity"

    const-string v1, "recoverUrl"

    .line 488
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 490
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 491
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    .line 493
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 495
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recoverUrl state \u524d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_1
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/download/VideoDownloadManager;->requestSwitchOver(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setAllCheckbox()V
    .locals 3

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setAllNotCheckbox()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setItemIsNotShow(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 254
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public bubbleSort(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 528
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 529
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 530
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    .line 534
    iget-object v4, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 540
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OfflineVideoDetailActivity"

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public deleteFiles(Ljava/io/File;)V
    .locals 4

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 246
    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteFiles(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 242
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public formetFileUnit(J)Ljava/lang/String;
    .locals 4

    .line 510
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 513
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

    .line 515
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

    .line 517
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

    .line 519
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

    .line 521
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileSizeString  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OfflineVideoDetailActivity"

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFilesize(Ljava/io/File;)J
    .locals 5

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 476
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 477
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getFilesize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 480
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900bb,
            0x7f0900f1,
            0x7f09004b,
            0x7f0903b8
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const-string v1, "\u7f16\u8f91"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 191
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteItem()V

    .line 192
    iput-boolean v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isCheckbox:Z

    .line 193
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setItemIsNotShow(Z)V

    .line 194
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setAllNotCheckbox()V

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isCheckbox:Z

    .line 174
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setItemIsNotShow(Z)V

    .line 175
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_0
    iput-boolean v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->isCheckbox:Z

    .line 180
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setItemIsNotShow(Z)V

    .line 181
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setAllNotCheckbox()V

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->finish()V

    goto :goto_0

    .line 188
    :sswitch_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setAllCheckbox()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004b -> :sswitch_3
        0x7f0900bb -> :sswitch_2
        0x7f0900f1 -> :sswitch_1
        0x7f0903b8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 87
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->initBase()V

    .line 89
    invoke-virtual {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "OfflineVideoDetailActivity"

    if-eqz p1, :cond_0

    const-string v1, "title"

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->title:Ljava/lang/String;

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** title "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mounted"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 96
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isphonesdcard"

    invoke-static {p1, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 97
    sput-boolean p1, Lcom/kantv/ui/download/SettingsManager;->isPhoneSdCard:Z

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iisPhoneSdCard    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 100
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/kantv/ui/download/SettingsManager;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 103
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 104
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getPhotoDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 122
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->initView()V

    .line 124
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u79bb\u7ebf\u89c6\u9891_\u8be6\u60c5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 125
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

    .line 547
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 548
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    .line 131
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "downloadlist"

    .line 138
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->nameList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->entityVideoList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->getFileName()Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
