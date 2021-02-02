.class public final Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/ExoMediaDrm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/ExoMediaDrm<",
        "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    return-void
.end method


# virtual methods
.method public closeSession([B)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public bridge synthetic createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    move-result-object p1

    return-object p1
.end method

.method public createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    new-instance v1, Landroid/media/MediaCrypto;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;)V

    return-object v0
.end method

.method public getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$2;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$2;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$KeyRequest;)V

    return-object p2
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$3;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$ProvisionRequest;)V

    return-object v1
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    return-void
.end method

.method public restoreKeys([B[B)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener<",
            "-",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
