.class public Lcom/shuyu/gsyvideoplayer/model/GSYModel;
.super Ljava/lang/Object;
.source "GSYModel.java"


# instance fields
.field isCache:Z

.field looping:Z

.field mCachePath:Ljava/io/File;

.field mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field speed:F

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    .line 26
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    .line 28
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    .line 29
    iput p4, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    .line 30
    iput-boolean p5, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    .line 31
    iput-object p6, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCache()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    return v0
.end method

.method public setCache(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    return-void
.end method

.method public setCachePath(Ljava/io/File;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    return-void
.end method
