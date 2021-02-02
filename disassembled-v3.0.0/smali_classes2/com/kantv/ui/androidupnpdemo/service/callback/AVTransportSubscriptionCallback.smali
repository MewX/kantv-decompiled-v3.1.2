.class public Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;
.super Lcom/kantv/ui/androidupnpdemo/service/callback/BaseSubscriptionCallback;
.source "AVTransportSubscriptionCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVTransportSubscriptionCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/androidupnpdemo/service/callback/BaseSubscriptionCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Landroid/content/Context;)V

    return-void
.end method

.method private doAVTransportChange(Ljava/lang/String;)V
    .locals 4

    .line 48
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V

    .line 51
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/TransportState;

    .line 54
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_0

    .line 55
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    const-string v0, "PLAYING"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnpdemo.action.playing"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 59
    :cond_0
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_1

    .line 60
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    const-string v0, "PAUSED_PLAYBACK"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnpdemo.action.paused_playback"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 64
    :cond_1
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_2

    .line 65
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    const-string v0, "STOPPED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnpdemo.action.stopped"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 69
    :cond_2
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne p1, v2, :cond_3

    .line 70
    sget-object p1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    const-string v0, "BUFFER"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.zane.androidupnpdemo.action.transitioning"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 79
    :cond_3
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    .line 80
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 81
    const-class p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/support/lastchange/LastChange;->getEventedValue(ILjava/lang/Class;)Lorg/fourthline/cling/support/lastchange/EventedValue;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$RelativeTimePosition;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->getIntTime(Ljava/lang/String;)I

    move-result v0

    .line 83
    sget-object v1, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", intTime: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/Config;->getInstance()Lcom/kantv/ui/androidupnpdemo/Config;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/kantv/ui/androidupnpdemo/Config;->setHasRelTimePosCallback(Z)V

    .line 88
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.zane.androidupnpdemo.action.position_callback"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zane.androidupnpdemo.action.extra_position"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/util/Utils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentValues()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "LastChange"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/service/callback/AVTransportSubscriptionCallback;->doAVTransportChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
