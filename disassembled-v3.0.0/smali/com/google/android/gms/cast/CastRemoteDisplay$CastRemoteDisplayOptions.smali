.class public final Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastRemoteDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CastRemoteDisplayOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final zzai:Lcom/google/android/gms/cast/CastDevice;

.field final zzbb:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field final zzbc:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->zzai:Lcom/google/android/gms/cast/CastDevice;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzai:Lcom/google/android/gms/cast/CastDevice;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->zzbd:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzbb:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    .line 4
    iget p1, p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->zzbc:I

    iput p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzbc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;Lcom/google/android/gms/cast/zzo;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;)V

    return-void
.end method
