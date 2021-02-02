.class public Lcom/kantv/ui/activity/OfflineVideoActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "OfflineVideoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineVideoActivity"


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

.field noCacheVideoTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027b
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isNotHeader:Z

    .line 85
    iput-boolean v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isCheckbox:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/activity/OfflineVideoActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isNotHeader:Z

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/activity/OfflineVideoActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isCheckbox:Z

    return p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deleteItem()V
    .locals 10

    .line 238
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 241
    :goto_0
    iget-object v3, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 242
    iget-object v3, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v3, v3, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-nez v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 245
    :cond_0
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v3

    .line 246
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v6, v6, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8def\u5f84"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OfflineVideoActivity"

    invoke-static {v6, v5}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v4}, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteFiles(Ljava/io/File;)V

    .line 250
    iget-object v4, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 251
    iget-object v4, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 252
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 253
    :goto_1
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 254
    iget-object v7, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5b50\u6587\u4ef6\u8def\u5f84"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v7}, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteFiles(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 267
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 268
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method private getDownLoadFileCount()V
    .locals 5

    .line 435
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 436
    iput-boolean v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isNotHeader:Z

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "OfflineVideoActivity"

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iniDownload mDownloadDetail     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "downloadlist"

    .line 442
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noCacheVideoTip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u89c6\u9891"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/OfflineVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/OfflineVideoActivity$4;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "downloadlist"

    .line 470
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->checkSDCard()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_c

    .line 471
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v2

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadPath\uff1a\uff1a   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OfflineVideoActivity"

    invoke-static {v5, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir.exists()\uff1a\uff1a   "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    .line 476
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 480
    array-length v4, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_9

    aget-object v9, v2, v8

    .line 481
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file.getName()\uff1a\uff1a   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 484
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6587\u4ef6\u540dmp4\uff1a\uff1a   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, v9}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getFilesize(Ljava/io/File;)J

    move-result-wide v11

    .line 489
    new-instance v13, Lcom/kantv/ui/bean/EntityVideo;

    invoke-direct {v13}, Lcom/kantv/ui/bean/EntityVideo;-><init>()V

    .line 491
    iput-wide v11, v13, Lcom/kantv/ui/bean/EntityVideo;->size:J

    .line 492
    iput-object v10, v13, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    .line 493
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/kantv/ui/bean/EntityVideo;->path:Ljava/lang/String;

    .line 494
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "play.m3u8"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 495
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filePath"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "     "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 498
    iget-object v6, v13, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    iget-object v6, v13, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 500
    array-length v9, v6

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    .line 501
    :goto_1
    iget-object v15, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_3

    .line 502
    iget-object v15, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v15, v15, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    move-object/from16 v16, v2

    aget-object v2, v6, v7

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fortotalpart"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/EntityVideo;

    iget v6, v6, Lcom/kantv/ui/bean/EntityVideo;->totalpart:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget v6, v2, Lcom/kantv/ui/bean/EntityVideo;->totalpart:I

    const/4 v15, 0x1

    add-int/2addr v6, v15

    iput v6, v2, Lcom/kantv/ui/bean/EntityVideo;->totalpart:I

    .line 505
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    move/from16 v17, v8

    iget-wide v7, v2, Lcom/kantv/ui/bean/EntityVideo;->size:J

    add-long/2addr v7, v11

    iput-wide v7, v2, Lcom/kantv/ui/bean/EntityVideo;->size:J

    const/4 v15, 0x0

    goto :goto_3

    :cond_1
    move/from16 v17, v8

    const/4 v15, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    move-object/from16 v16, v2

    move/from16 v17, v8

    goto/16 :goto_6

    :cond_3
    move-object/from16 v16, v2

    move/from16 v17, v8

    const/4 v15, 0x1

    :goto_3
    if-eqz v15, :cond_4

    .line 512
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_4
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "download"

    invoke-static {v2, v6, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 520
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 523
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 525
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 526
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v8, 0x0

    .line 527
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 528
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    const-string v10, "url"

    .line 529
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    .line 530
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "part"

    .line 531
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "id"

    .line 532
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 533
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-(\u7b2c"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u96c6)-"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 534
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 535
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 537
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 538
    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {v10}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData3(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_0
    nop

    goto :goto_5

    :cond_6
    move-object/from16 v16, v2

    move/from16 v17, v8

    .line 556
    :cond_7
    :goto_5
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 557
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    :cond_8
    const/16 v6, 0x8

    .line 560
    iget-object v2, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_9
    return-object v3

    .line 568
    :cond_a
    iget-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 569
    iget-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    :cond_b
    const/16 v2, 0x8

    .line 573
    iget-object v1, v0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_7
    return-object v3
.end method

.method private initAdapter()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 321
    new-instance v0, Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    const v3, 0x7f0c008a

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/kantv/ui/activity/OfflineVideoActivity$2;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    .line 405
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    new-instance v1, Lcom/kantv/ui/activity/OfflineVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/OfflineVideoActivity$3;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/kantv/lib/recyclerview/XRecyclerView;->setLoadingListener(Lcom/kantv/lib/recyclerview/XRecyclerView$LoadingListener;)V

    .line 431
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getDownLoadFileCount()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getFileName()Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->initAdapter()V

    return-void
.end method

.method private recoverUrl()V
    .locals 5

    const-string v0, "OfflineVideoActivity"

    const-string v1, "recoverUrl"

    .line 598
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 600
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 601
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    .line 603
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 605
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

    .line 607
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

    .line 609
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

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setAllNotCheckbox()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private setItemtIsNotShow(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 295
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 299
    :goto_1
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, v1, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz p1, :cond_2

    .line 305
    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public deleteFiles(Ljava/io/File;)V
    .locals 4

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 286
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 287
    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteFiles(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 283
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method public formetFileUnit(J)Ljava/lang/String;
    .locals 4

    .line 620
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 623
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

    .line 625
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

    .line 627
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

    .line 629
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

    .line 631
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileSizeString  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OfflineVideoActivity"

    invoke-static {v0, p2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFilesize(Ljava/io/File;)J
    .locals 5

    .line 584
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 586
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 587
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getFilesize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 590
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

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const-string v1, "\u7f16\u8f91"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 219
    :sswitch_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteItem()V

    .line 220
    iput-boolean v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isCheckbox:Z

    .line 221
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setItemtIsNotShow(Z)V

    .line 222
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setAllNotCheckbox()V

    goto :goto_0

    .line 200
    :sswitch_1
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isCheckbox:Z

    .line 202
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setItemtIsNotShow(Z)V

    .line 203
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_0
    iput-boolean v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->isCheckbox:Z

    .line 208
    invoke-direct {p0, v2}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setItemtIsNotShow(Z)V

    .line 209
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->editTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->deleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setAllNotCheckbox()V

    goto :goto_0

    .line 197
    :sswitch_2
    invoke-virtual {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->finish()V

    goto :goto_0

    .line 216
    :sswitch_3
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setAllCheckbox()V

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
    .locals 4

    .line 90
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 91
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->initBase()V

    .line 94
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 95
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noDataLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 99
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isphonesdcard"

    invoke-static {p1, v3, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 100
    sput-boolean p1, Lcom/kantv/ui/download/SettingsManager;->isPhoneSdCard:Z

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iisPhoneSdCard    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OfflineVideoActivity"

    invoke-static {v3, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 103
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/kantv/ui/download/SettingsManager;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 107
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 114
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getPhotoDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 125
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->initView()V

    .line 126
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->recoverUrl()V

    .line 127
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "\u6211_\u79bb\u7ebf\u89c6\u9891_\u5217\u8868"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 128
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

    .line 637
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onDestroy()V

    .line 638
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 133
    invoke-super {p0}, Lcom/kantv/ui/PackageActivity;->onResume()V

    .line 134
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "downloadlist"

    .line 141
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u89c6\u9891"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/kantv/ui/activity/OfflineVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/OfflineVideoActivity$1;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noCacheVideoTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->cacheLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->nameList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 176
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    :cond_4
    invoke-direct {p0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->getFileName()Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->mAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v0}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity;->noCacheVideoTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method
