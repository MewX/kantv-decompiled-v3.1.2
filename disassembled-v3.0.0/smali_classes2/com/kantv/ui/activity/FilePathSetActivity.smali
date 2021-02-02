.class public Lcom/kantv/ui/activity/FilePathSetActivity;
.super Lcom/kantv/ui/PackageActivity;
.source "FilePathSetActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilePathSetActivity"


# instance fields
.field private SDcardTotalSize:J

.field private SDcardUseSize:J

.field checkBox_phone:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ba
    .end annotation
.end field

.field checkBox_sd:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f4
    .end annotation
.end field

.field private isphonesdcard:Z

.field private path:Ljava/lang/String;

.field phonesd_tv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bc
    .end annotation
.end field

.field sdLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f7
    .end annotation
.end field

.field sd_iv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f6
    .end annotation
.end field

.field sddescribe_tv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902f5
    .end annotation
.end field

.field sdp_iv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901bb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/kantv/ui/PackageActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    .line 49
    iput-wide v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->path:Ljava/lang/String;

    return-void
.end method

.method private getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "FilePathSetActivity"

    const-string v1, "storage"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    :try_start_0
    const-string v1, "android.os.storage.StorageVolume"

    .line 106
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getVolumeList"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getPath"

    .line 108
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "isRemovable"

    .line 109
    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_removale"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 114
    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 115
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne p2, v6, :cond_0

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is_removale2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/kantv/ui/download/SettingsManager;->getSd(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sddescribe_tv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private initView()V
    .locals 9

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "FilePathSetActivity"

    const-string v3, "\uff0c\u53ef\u7528\u7a7a\u95f4"

    const-string v4, "\u603b\u7a7a\u95f4"

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0, p0, v1}, Lcom/kantv/ui/activity/FilePathSetActivity;->getStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->path:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->readSDCard()V

    .line 73
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->readSystem()V

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->phonesd_tv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    invoke-static {v7, v8}, Lcom/kantv/ui/download/SettingsManager;->formetFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    invoke-static {v3, v4}, Lcom/kantv/ui/download/SettingsManager;->formetFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isphonesdcard"

    invoke-static {v0, v4, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->isphonesdcard:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->isphonesdcard:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->isphonesdcard:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, ""

    invoke-static {v1, v3, v0}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080206

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08023f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->path:Ljava/lang/String;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080205

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080240

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->readSDCard()V

    .line 92
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->readSystem()V

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->phonesd_tv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    invoke-static {v7, v8}, Lcom/kantv/ui/download/SettingsManager;->formetFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    invoke-static {v3, v4}, Lcom/kantv/ui/download/SettingsManager;->formetFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readSDCard()V
    .locals 11

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 143
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 144
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 145
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

    const-string v8, "FilePathSetActivity"

    invoke-static {v8, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-wide v9, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    add-long/2addr v9, v4

    iput-wide v9, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    .line 147
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

    .line 148
    iget-wide v2, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    :cond_0
    return-void
.end method

.method private readSystem()V
    .locals 11

    .line 153
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 156
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 157
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 158
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

    const-string v8, "FilePathSetActivity"

    invoke-static {v8, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-wide v9, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    add-long/2addr v9, v4

    iput-wide v9, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardTotalSize:J

    .line 160
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

    .line 161
    iget-wide v2, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->SDcardUseSize:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090296,
            0x7f0902f7,
            0x7f0900bb
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900bb

    if-eq p1, v0, :cond_4

    const v0, 0x7f090296

    const-string v1, "isphonesdcard"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f0902f7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 177
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 178
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 182
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getPhotoDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_sd:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->checkBox_phone:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, ""

    invoke-static {v2, v0, p1}, Lcom/kantv/ui/download/SettingsManager;->changePath(ZLjava/lang/String;Landroid/content/Context;)V

    .line 172
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sdp_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object p1, p0, Lcom/kantv/ui/activity/FilePathSetActivity;->sd_iv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/kantv/ui/PackageActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 56
    invoke-virtual {p0, p1}, Lcom/kantv/ui/activity/FilePathSetActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->initBase()V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FilePathSetActivity"

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/kantv/ui/activity/FilePathSetActivity;->initView()V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
