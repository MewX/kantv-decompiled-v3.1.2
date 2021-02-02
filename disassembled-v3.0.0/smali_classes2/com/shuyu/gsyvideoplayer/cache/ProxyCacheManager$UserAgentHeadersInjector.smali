.class Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lcom/danikula/videocache/headers/HeaderInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserAgentHeadersInjector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;->this$0:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;-><init>(Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;)V

    return-void
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;->this$0:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mMapHeadData:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager$UserAgentHeadersInjector;->this$0:Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;->mMapHeadData:Ljava/util/Map;

    :goto_0
    return-object p1
.end method
