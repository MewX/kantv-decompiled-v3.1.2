.class final Lcom/google/android/gms/internal/cast/zzap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzy;


# instance fields
.field private final synthetic zzqv:Lcom/google/android/gms/internal/cast/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzap;->zzqv:Lcom/google/android/gms/internal/cast/zzao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzap;->zzqv:Lcom/google/android/gms/internal/cast/zzao;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzao;->zza(Lcom/google/android/gms/internal/cast/zzao;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
