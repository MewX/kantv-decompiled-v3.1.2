.class final Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;
.super Lcom/google/android/gms/cast/framework/media/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/ImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzld:Lcom/google/android/gms/cast/framework/media/ImagePicker;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/media/ImagePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;->zzld:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/zzb$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/ImagePicker;Lcom/google/android/gms/cast/framework/media/zzg;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;-><init>(Lcom/google/android/gms/cast/framework/media/ImagePicker;)V

    return-void
.end method


# virtual methods
.method public final onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;->zzld:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;->zzld:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    return-object p1
.end method

.method public final zzax()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;->zzld:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()I
    .locals 1

    const v0, 0xbdfcc1

    return v0
.end method
