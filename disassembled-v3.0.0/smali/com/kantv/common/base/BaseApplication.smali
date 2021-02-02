.class public abstract Lcom/kantv/common/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseApplication"

.field private static limitIp:Z = false

.field private static sInstance:Lcom/kantv/common/base/BaseApplication;


# instance fields
.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/common/base/BaseApplication;
    .locals 1

    .line 30
    sget-object v0, Lcom/kantv/common/base/BaseApplication;->sInstance:Lcom/kantv/common/base/BaseApplication;

    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public exitApp(Landroid/content/Context;)V
    .locals 2

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/kantv/common/base/BaseApplication;->finishAllActivity()V

    const-string v0, "activity"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 126
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public finishActivity()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 79
    invoke-virtual {p0, v0}, Lcom/kantv/common/base/BaseApplication;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/kantv/common/base/BaseApplication;->finishActivity(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public finishAllActivity()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public getActivityStackNum()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kantv/common/base/BaseApplication;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public isLimitIp()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/kantv/common/base/BaseApplication;->limitIp:Z

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    sput-object p0, Lcom/kantv/common/base/BaseApplication;->sInstance:Lcom/kantv/common/base/BaseApplication;

    .line 37
    invoke-static {p0}, Lcom/kantv/common/utils/Utils;->init(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/kantv/common/utils/Utils;->isAppDebug()Z

    .line 45
    invoke-direct {p0}, Lcom/kantv/common/base/BaseApplication;->init()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application onCreate end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseApplication"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLimitIP(Z)V
    .locals 0

    .line 133
    sput-boolean p1, Lcom/kantv/common/base/BaseApplication;->limitIp:Z

    return-void
.end method
