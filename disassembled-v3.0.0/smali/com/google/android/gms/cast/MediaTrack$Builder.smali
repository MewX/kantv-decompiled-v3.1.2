.class public Lcom/google/android/gms/cast/MediaTrack$Builder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzew:Lcom/google/android/gms/cast/MediaTrack;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/MediaTrack;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaTrack;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setCustomData(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLanguage(Ljava/util/Locale;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcu;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSubtype(I)Lcom/google/android/gms/cast/MediaTrack$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->zzew:Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->zzb(I)V

    return-object p0
.end method
