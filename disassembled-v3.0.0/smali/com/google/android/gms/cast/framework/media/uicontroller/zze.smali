.class final Lcom/google/android/gms/cast/framework/media/uicontroller/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field private final synthetic zzqr:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;->zzqr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;->zzqq:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    iget-wide v1, p0, Lcom/google/android/gms/cast/framework/media/uicontroller/zze;->zzqr:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->onRewindClicked(Landroid/view/View;J)V

    return-void
.end method
