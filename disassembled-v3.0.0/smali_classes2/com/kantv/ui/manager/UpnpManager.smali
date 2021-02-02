.class public Lcom/kantv/ui/manager/UpnpManager;
.super Ljava/lang/Object;
.source "UpnpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpnpManager"

.field private static upnpManager:Lcom/kantv/ui/manager/UpnpManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDevicesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public progressMax:I

.field public seo:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/kantv/ui/manager/UpnpManager;->tid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/kantv/ui/manager/UpnpManager;->seo:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/kantv/ui/manager/UpnpManager;->name:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/kantv/ui/manager/UpnpManager;->title:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/kantv/ui/manager/UpnpManager;->url:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/manager/UpnpManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kantv/ui/manager/UpnpManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/kantv/ui/manager/UpnpManager;->upnpManager:Lcom/kantv/ui/manager/UpnpManager;

    if-nez v0, :cond_0

    .line 35
    const-class v0, Lcom/kantv/ui/manager/UpnpManager;

    monitor-enter v0

    .line 36
    :try_start_0
    new-instance v1, Lcom/kantv/ui/manager/UpnpManager;

    invoke-direct {v1, p0}, Lcom/kantv/ui/manager/UpnpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kantv/ui/manager/UpnpManager;->upnpManager:Lcom/kantv/ui/manager/UpnpManager;

    .line 37
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_0
    :goto_0
    sget-object p0, Lcom/kantv/ui/manager/UpnpManager;->upnpManager:Lcom/kantv/ui/manager/UpnpManager;

    return-object p0
.end method
