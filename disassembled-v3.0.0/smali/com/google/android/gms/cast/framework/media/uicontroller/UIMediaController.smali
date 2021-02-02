.class public Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/framework/SessionManagerListener;
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/cast/framework/SessionManagerListener<",
        "Lcom/google/android/gms/cast/framework/CastSession;",
        ">;",
        "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;"
    }
.end annotation


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field private final zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

.field private zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private final zzhy:Landroid/app/Activity;

.field private final zzqn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzqo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/cast/zzbi;",
            ">;"
        }
    .end annotation
.end field

.field private zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 311
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "UIMediaController"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqo:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    .line 9
    const-class v0, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->addSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/Session;)V

    :cond_1
    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    :cond_2
    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 3

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/google/android/gms/cast/framework/CastSession;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 270
    invoke-virtual {v2, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzcm()V
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 278
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 279
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-void
.end method

.method private final zzcn()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 297
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 298
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onMediaStatusUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaq;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    invoke-direct {v4, p2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;ILandroid/view/View;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaq;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    invoke-direct {v4, p2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V
    .locals 7
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const-string v0, "Must be called from the main thread."

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaq;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToImageOfCurrentItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;Landroid/view/View;)V
    .locals 7
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Must be called from the main thread."

    .line 106
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaq;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/cast/zzaq;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToImageOfPreloadedItem(Landroid/widget/ImageView;II)V
    .locals 4
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/cast/zzao;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3, v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/android/gms/internal/cast/zzao;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToImageOfPreloadedItem(Landroid/widget/ImageView;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V
    .locals 2
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const-string v0, "Must be called from the main thread."

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/google/android/gms/internal/cast/zzao;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/cast/zzao;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToMuteToggle(Landroid/widget/ImageView;)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzi;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/google/android/gms/internal/cast/zzay;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzay;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindImageViewToPlayPauseToggle(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 9
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Must be called from the main thread."

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zza;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/cast/zzba;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/cast/zzba;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindProgressBar(Landroid/widget/ProgressBar;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindProgressBar(Landroid/widget/ProgressBar;J)V

    return-void
.end method

.method public bindProgressBar(Landroid/widget/ProgressBar;J)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbb;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzbb;-><init>(Landroid/widget/ProgressBar;J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 54
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindSeekBar(Landroid/widget/SeekBar;J)V

    return-void
.end method

.method public bindSeekBar(Landroid/widget/SeekBar;J)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbc;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/zzbc;-><init>(Landroid/widget/SeekBar;J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public bindTextViewToMetadataOfCurrentItem(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/google/android/gms/internal/cast/zzax;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzax;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToMetadataOfPreloadedItem(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToMetadataOfPreloadedItem(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public bindTextViewToMetadataOfPreloadedItem(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Must be called from the main thread."

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/google/android/gms/internal/cast/zzaw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzaw;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToSmartSubtitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzbg;-><init>(Landroid/widget/TextView;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToStreamDuration(Landroid/widget/TextView;)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_invalid_stream_duration_text:I

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/cast/zzbh;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToStreamDuration(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_invalid_stream_duration_text:I

    .line 76
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/cast/zzbh;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;)V

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindTextViewToStreamPosition(Landroid/widget/TextView;Z)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 60
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->bindTextViewToStreamPosition(Landroid/widget/TextView;ZJ)V

    return-void
.end method

.method public bindTextViewToStreamPosition(Landroid/widget/TextView;ZJ)V
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbi;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    sget v2, Lcom/google/android/gms/cast/framework/R$string;->cast_invalid_stream_position_text:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/google/android/gms/internal/cast/zzbi;-><init>(Landroid/widget/TextView;JLjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqo:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToClosedCaption(Landroid/view/View;)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzh;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/cast/zzan;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzan;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToForward(Landroid/view/View;J)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzd;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzd;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/zzbd;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToLaunchExpandedController(Landroid/view/View;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 79
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzg;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/cast/zzas;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzas;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToLoadingIndicator(Landroid/view/View;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/cast/zzav;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzav;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToRewind(Landroid/view/View;J)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance p2, Lcom/google/android/gms/internal/cast/zzbd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/zzbd;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToSkipNext(Landroid/view/View;I)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzb;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbe;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbe;-><init>(Landroid/view/View;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToSkipPrev(Landroid/view/View;I)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/zzc;-><init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbf;-><init>(Landroid/view/View;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewToUIController(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewVisibilityToMediaSession(Landroid/view/View;I)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbk;-><init>(Landroid/view/View;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public bindViewVisibilityToPreloadingEvent(Landroid/view/View;I)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzbj;-><init>(Landroid/view/View;I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcm()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzgv:Lcom/google/android/gms/cast/framework/SessionManager;

    if-eqz v0, :cond_0

    .line 23
    const-class v1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->removeSessionManagerListener(Lcom/google/android/gms/cast/framework/SessionManagerListener;Ljava/lang/Class;)V

    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    return-void
.end method

.method public getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhs:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdBreakStatusUpdated()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onAdBreakStatusUpdated()V

    :cond_0
    return-void
.end method

.method protected onClosedCaptionClicked(Landroid/view/View;)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->newInstance()Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    .line 183
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 185
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    .line 190
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method protected onForwardClicked(Landroid/view/View;J)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method protected onLaunchExpandedControllerClicked(Landroid/view/View;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    .line 197
    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    .line 202
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getExpandedControllerActivityClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMetadataUpdated()V
    .locals 1

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method protected onMuteToggleClicked(Landroid/widget/ImageView;)V
    .locals 3

    .line 133
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzhy:Landroid/app/Activity;

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 143
    :goto_1
    sget-object v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Unable to call CastSession.setMute(boolean)."

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/cast/zzdg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method protected onPlayPauseToggleClicked(Landroid/widget/ImageView;)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_0
    return-void
.end method

.method public onPreloadStatusUpdated()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method public onQueueStatusUpdated()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method protected onRewindClicked(Landroid/view/View;J)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method protected onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 171
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/cast/zzbi;

    int-to-long v0, p2

    .line 172
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/cast/zzbi;->zzc(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeekBarStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 163
    instance-of v2, v0, Lcom/google/android/gms/internal/cast/zzbc;

    if-eqz v2, :cond_0

    .line 164
    check-cast v0, Lcom/google/android/gms/internal/cast/zzbc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzbc;->zzj(Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzbi;

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzbi;->zzj(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onSeekBarStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 151
    instance-of v3, v2, Lcom/google/android/gms/internal/cast/zzbc;

    if-eqz v3, :cond_0

    .line 152
    check-cast v2, Lcom/google/android/gms/internal/cast/zzbc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzbc;->zzj(Z)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/cast/zzbi;

    .line 155
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzbi;->zzj(Z)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_3
    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 255
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

    .line 256
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSendingRemoteMediaRequest()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onSendingRemoteMediaRequest()V

    :cond_2
    return-void
.end method

.method public onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcm()V

    return-void
.end method

.method public bridge synthetic onSessionEnded(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 306
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionEnded(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionEnding(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 307
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionEnding(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcm()V

    return-void
.end method

.method public bridge synthetic onSessionResumeFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 303
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionResumeFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/Session;)V

    return-void
.end method

.method public bridge synthetic onSessionResumed(Lcom/google/android/gms/cast/framework/Session;Z)V
    .locals 0

    .line 304
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionResumed(Lcom/google/android/gms/cast/framework/CastSession;Z)V

    return-void
.end method

.method public onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionResuming(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 305
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionResuming(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcm()V

    return-void
.end method

.method public bridge synthetic onSessionStartFailed(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 308
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionStartFailed(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method public onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zza(Lcom/google/android/gms/cast/framework/Session;)V

    return-void
.end method

.method public bridge synthetic onSessionStarted(Lcom/google/android/gms/cast/framework/Session;Ljava/lang/String;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionStarted(Lcom/google/android/gms/cast/framework/CastSession;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionStarting(Lcom/google/android/gms/cast/framework/Session;)V
    .locals 0

    .line 310
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionStarting(Lcom/google/android/gms/cast/framework/CastSession;)V

    return-void
.end method

.method public onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSessionSuspended(Lcom/google/android/gms/cast/framework/Session;I)V
    .locals 0

    .line 302
    check-cast p1, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSessionSuspended(Lcom/google/android/gms/cast/framework/CastSession;I)V

    return-void
.end method

.method protected onSkipNextClicked(Landroid/view/View;)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method protected onSkipPrevClicked(Landroid/view/View;)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queuePrev(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method public onStatusUpdated()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzcn()V

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method public setPostRemoteMediaClientListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->zzqp:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    return-void
.end method
