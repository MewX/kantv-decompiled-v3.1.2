.class final Lcom/google/android/gms/cast/framework/media/zzba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzpo:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

.field private final synthetic zzpp:Lcom/google/android/gms/cast/framework/media/zzbb;

.field private final synthetic zzpq:Lcom/google/android/gms/cast/framework/media/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpo:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpp:Lcom/google/android/gms/cast/framework/media/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpq:Lcom/google/android/gms/cast/framework/media/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpo:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpp:Lcom/google/android/gms/cast/framework/media/zzbb;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzba;->zzpq:Lcom/google/android/gms/cast/framework/media/zzbb;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzbb;Lcom/google/android/gms/cast/framework/media/zzbb;)V

    return-void
.end method
