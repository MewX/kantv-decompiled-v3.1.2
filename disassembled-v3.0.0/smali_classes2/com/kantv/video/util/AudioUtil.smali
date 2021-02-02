.class public Lcom/kantv/video/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field private static mInstance:Lcom/kantv/video/util/AudioUtil;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    iput-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/kantv/video/util/AudioUtil;->mWindow:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public changeAppBrightness(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 112
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 114
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public getAlermMaxVolume()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getCallMaxVolume()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getMediaVolume()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getSystemBrightness()I
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSystemMaxVolume()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getSystemVolume()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public setCallVolume(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setMediaVolume(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setSpeakerStatus(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 85
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 89
    iget-object v2, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 91
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 92
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 93
    iget-object p1, p0, Lcom/kantv/video/util/AudioUtil;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/media/AudioManager;->setRouting(III)V

    :goto_0
    return-void
.end method
