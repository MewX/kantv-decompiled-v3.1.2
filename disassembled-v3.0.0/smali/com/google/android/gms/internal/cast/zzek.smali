.class final Lcom/google/android/gms/internal/cast/zzek;
.super Lcom/google/android/gms/internal/cast/zzen;


# instance fields
.field private final synthetic zzzd:Lcom/google/android/gms/internal/cast/zzej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzej;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzen;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzej;->zza(Lcom/google/android/gms/internal/cast/zzej;)I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzej;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzei;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzej;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzej;->zzb(Lcom/google/android/gms/internal/cast/zzej;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzej;->zzc(Lcom/google/android/gms/internal/cast/zzej;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzej;->zzc(Lcom/google/android/gms/internal/cast/zzej;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzek;->zzzd:Lcom/google/android/gms/internal/cast/zzej;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzej;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
