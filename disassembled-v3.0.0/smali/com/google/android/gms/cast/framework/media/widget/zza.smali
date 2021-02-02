.class final Lcom/google/android/gms/cast/framework/media/widget/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzy;


# instance fields
.field private final synthetic zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zza(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzb(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzb(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/zza;->zztb:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->zzb(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
