.class public final Lcom/google/android/gms/internal/cast/zzdf;
.super Ljava/lang/Object;


# static fields
.field public static final zzwy:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzcn;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzwz:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzea;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzxa:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/cast/zzdz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzxb:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzxc:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzxd:Ljava/nio/charset/Charset;

.field private static final zzxe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzwy:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzwz:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzxa:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzxb:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzxc:Lcom/google/android/gms/common/api/Api$ClientKey;

    :try_start_0
    const-string v0, "UTF-8"

    .line 7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzxd:Ljava/nio/charset/Charset;

    const-string v0, "com.google.cast.multizone"

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzcu;->zzp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdf;->zzxe:Ljava/lang/String;

    return-void
.end method
