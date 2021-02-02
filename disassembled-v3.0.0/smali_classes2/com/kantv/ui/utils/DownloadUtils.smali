.class public Lcom/kantv/ui/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# instance fields
.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private mContext:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private versionJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/kantv/ui/utils/DownloadUtils$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/utils/DownloadUtils$1;-><init>(Lcom/kantv/ui/utils/DownloadUtils;)V

    iput-object v0, p0, Lcom/kantv/ui/utils/DownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/kantv/ui/utils/DownloadUtils;->versionJson:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/utils/DownloadUtils;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/kantv/ui/utils/DownloadUtils;->checkStatus()V

    return-void
.end method

.method private checkStatus()V
    .locals 6

    .line 86
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 88
    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadId:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 89
    iget-object v2, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "status"

    .line 91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    const/16 v1, 0x8

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DownloadUtils"

    const-string v2, "Download status successful"

    .line 104
    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 107
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/downloadapk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kantv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kantv/ui/utils/DownloadUtils;->versionJson:Lorg/json/JSONObject;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/kantv/ui/utils/DownloadUtils;->install(Ljava/io/File;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    iget-wide v2, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadId:J

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/kantv/ui/utils/DownloadUtils;->install(Ljava/io/File;)V

    .line 119
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x2

    .line 59
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p1, "Kantv"

    .line 60
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string p1, "Apk Downloading"

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const-string p1, "/downloadapk"

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 68
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    .line 70
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->downloadId:J

    .line 72
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/kantv/ui/utils/DownloadUtils;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public install(Ljava/io/File;)V
    .locals 7

    const-string v0, "content"

    .line 124
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f1000b9

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 125
    iget-object v2, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00cc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    const v3, 0x7f0901e2

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09039f

    .line 129
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 130
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :try_start_0
    const-string v5, "apk\u8def\u5f84=="

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/kantv/ui/utils/DownloadUtils;->versionJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "version_update_content"

    iget-object v6, p0, Lcom/kantv/ui/utils/DownloadUtils;->versionJson:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/kantv/ui/utils/DownloadUtils;->versionJson:Lorg/json/JSONObject;

    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u7248\u672c\u540d\u79f0"

    .line 140
    invoke-static {v4, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6700\u65b0\u7248\u672c\uff1aV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "showUpVersionDialog e"

    invoke-static {v3, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f0903ab

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/kantv/ui/utils/DownloadUtils$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/kantv/ui/utils/DownloadUtils$2;-><init>(Lcom/kantv/ui/utils/DownloadUtils;Landroid/app/Dialog;Ljava/io/File;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ab

    .line 152
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/kantv/ui/utils/DownloadUtils$3;

    invoke-direct {v0, p0, v1}, Lcom/kantv/ui/utils/DownloadUtils$3;-><init>(Lcom/kantv/ui/utils/DownloadUtils;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public installAPK(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.kantv.ui"

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const-string v1, "application/vnd.android.package-archive"

    .line 184
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object p1, p0, Lcom/kantv/ui/utils/DownloadUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method
