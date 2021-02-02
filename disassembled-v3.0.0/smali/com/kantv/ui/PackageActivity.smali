.class public Lcom/kantv/ui/PackageActivity;
.super Lcom/kantv/common/base/BaseActivity;
.source "PackageActivity.java"


# instance fields
.field protected bringToFrontFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/kantv/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/kantv/ui/PackageActivity;->bringToFrontFlag:I

    return-void
.end method


# virtual methods
.method public JudgeTime(J)V
    .locals 6

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x708

    const-wide/16 v4, 0x12c

    cmp-long p2, v0, v4

    if-lez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/kantv/ui/PackageActivity;->bringToFrontFlag:I

    .line 46
    const-class p1, Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/PackageActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/kantv/ui/PackageActivity;->bringToFrontFlag:I

    .line 49
    const-class p1, Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/PackageActivity;->gotoActivity(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/kantv/ui/PackageActivity;->bringToFrontFlag:I

    :goto_0
    return-void
.end method

.method protected initBringToFront()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "background_start_time"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kantv/ui/PackageActivity;->JudgeTime(J)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 18
    invoke-super {p0}, Lcom/kantv/common/base/BaseActivity;->onPause()V

    .line 19
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "background_start_time"

    invoke-static {v0, v2, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/kantv/common/base/BaseActivity;->onResume()V

    .line 25
    invoke-virtual {p0}, Lcom/kantv/ui/PackageActivity;->initBringToFront()V

    return-void
.end method
