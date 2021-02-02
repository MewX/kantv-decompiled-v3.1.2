.class Lcom/kantv/ui/m3u8downloader/M3U8Downloader$SingletonHolder;
.super Ljava/lang/Object;
.source "M3U8Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/m3u8downloader/M3U8Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static instance:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8Downloader$1;)V

    sput-object v0, Lcom/kantv/ui/m3u8downloader/M3U8Downloader$SingletonHolder;->instance:Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
