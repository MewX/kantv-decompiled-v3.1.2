.class final Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field public final streamType:I

.field public final zzf:Ljava/lang/String;

.field public final zzlu:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public final zzlv:Z

.field public final zzlw:Ljava/lang/String;

.field public final zzlx:Z

.field public final zzly:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzlv:Z

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->streamType:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzf:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzlw:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzlu:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzlx:Z

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$zza;->zzly:Z

    return-void
.end method
