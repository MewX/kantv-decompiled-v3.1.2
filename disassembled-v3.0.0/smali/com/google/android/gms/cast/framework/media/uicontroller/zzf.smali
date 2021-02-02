.class final Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final synthetic zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zzf;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onSeekBarStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
