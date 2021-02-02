.class public Lcom/kantv/ui/androidupnpdemo/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final DLAN_DEBUG:Z = true

.field public static final REQUEST_GET_INFO_INTERVAL:J = 0x7d0L

.field public static TEST_URL:Ljava/lang/String; = "http://cdn61.ytbbs.tv/cn/tv/50089/50089-1/play.m3u8?md5=T34aJBZSj4Jok0aAMTDUdw&expires=1516630911&token=50089"

.field private static mInstance:Lcom/kantv/ui/androidupnpdemo/Config;


# instance fields
.field private hasRelTimePosCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/androidupnpdemo/Config;
    .locals 1

    .line 27
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/Config;->mInstance:Lcom/kantv/ui/androidupnpdemo/Config;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/Config;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/Config;-><init>()V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/Config;->mInstance:Lcom/kantv/ui/androidupnpdemo/Config;

    .line 30
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/Config;->mInstance:Lcom/kantv/ui/androidupnpdemo/Config;

    return-object v0
.end method


# virtual methods
.method public getHasRelTimePosCallback()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/kantv/ui/androidupnpdemo/Config;->hasRelTimePosCallback:Z

    return v0
.end method

.method public setHasRelTimePosCallback(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/kantv/ui/androidupnpdemo/Config;->hasRelTimePosCallback:Z

    return-void
.end method
