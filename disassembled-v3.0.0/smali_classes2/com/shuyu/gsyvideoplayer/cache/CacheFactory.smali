.class public Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;
.super Ljava/lang/Object;
.source "CacheFactory.java"


# static fields
.field public static final CACHE_NULL:I = -0x1

.field public static final EXO_CACHE_PROXY:I = 0x1

.field public static final EXO_DEFAULT:I

.field private static sCacheMode:I


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

.method public static getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .locals 1

    .line 29
    sget p0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sCacheMode:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    new-instance p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;-><init>()V

    return-object p0
.end method

.method public static setCacheMode(I)V
    .locals 0

    .line 51
    sput p0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sCacheMode:I

    return-void
.end method
