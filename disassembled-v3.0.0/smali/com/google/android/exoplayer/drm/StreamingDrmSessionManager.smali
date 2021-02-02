.class public Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/DrmSessionManager<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field final callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Landroid/os/Handler;

.field final postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 76
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 225
    iput-object p3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 226
    iput-object p4, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 227
    iput-object p5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 228
    iput-object p6, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    .line 229
    iput-object p7, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    .line 230
    new-instance p1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    .line 231
    new-instance p1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    .line 232
    new-instance p1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    const/4 p1, 0x1

    .line 233
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static createFrameworkDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 113
    new-instance v0, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 184
    invoke-static {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->createFrameworkDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 183
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer/drm/ExoMediaCrypto;",
            ">(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm<",
            "TT;>;)",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 204
    new-instance v8, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)V

    return-object v8
.end method

.method public static newPlayReadyInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PRCustomData"

    .line 159
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 163
    sget-object v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object p0

    return-object p0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    .line 459
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_0

    .line 461
    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 469
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 3

    .line 424
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    .line 429
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 430
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    return-void

    .line 435
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v0, v2, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 436
    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 437
    iget-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz p1, :cond_2

    .line 438
    iget-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 446
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1

    .line 451
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 390
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    return-void

    .line 395
    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 396
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void

    .line 401
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    .line 402
    iget p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-ne p1, v2, :cond_2

    .line 403
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private openInternal(Z)V
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    const/4 v0, 0x3

    .line 366
    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 367
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private postKeyRequest()V
    .locals 6

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v3, v3, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 419
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private postProvisionRequest()V
    .locals 3

    .line 380
    iget-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 352
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 353
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 354
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    .line 355
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_1

    .line 357
    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 358
    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    :cond_1
    return-void
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .line 259
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getState()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .locals 3

    .line 312
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v0, v1, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 322
    iget-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez p1, :cond_2

    .line 323
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media does not support uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void

    .line 326
    :cond_2
    sget p1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_4

    .line 328
    iget-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object p1, p1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    sget-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 332
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 336
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 337
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    return-void
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 254
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method