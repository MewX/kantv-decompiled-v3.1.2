.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "NotificationOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_STEP_TEN_SECONDS_IN_MS:J = 0x2710L

.field public static final SKIP_STEP_THIRTY_SECONDS_IN_MS:J = 0x7530L

.field private static final zznb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zznc:[I


# instance fields
.field private final zzlj:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSkipStepMs"
        id = 0x4
    .end annotation
.end field

.field private final zznd:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getActions"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzne:[I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCompatActionIndices"
        id = 0x3
    .end annotation
.end field

.field private final zznf:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTargetActivityClassName"
        id = 0x5
    .end annotation
.end field

.field private final zzng:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSmallIconDrawableResId"
        id = 0x6
    .end annotation
.end field

.field private final zznh:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStopLiveStreamDrawableResId"
        id = 0x7
    .end annotation
.end field

.field private final zzni:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPauseDrawableResId"
        id = 0x8
    .end annotation
.end field

.field private final zznj:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPlayDrawableResId"
        id = 0x9
    .end annotation
.end field

.field private final zznk:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSkipNextDrawableResId"
        id = 0xa
    .end annotation
.end field

.field private final zznl:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSkipPrevDrawableResId"
        id = 0xb
    .end annotation
.end field

.field private final zznm:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForwardDrawableResId"
        id = 0xc
    .end annotation
.end field

.field private final zznn:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForward10DrawableResId"
        id = 0xd
    .end annotation
.end field

.field private final zzno:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForward30DrawableResId"
        id = 0xe
    .end annotation
.end field

.field private final zznp:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewindDrawableResId"
        id = 0xf
    .end annotation
.end field

.field private final zznq:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewind10DrawableResId"
        id = 0x10
    .end annotation
.end field

.field private final zznr:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewind30DrawableResId"
        id = 0x11
    .end annotation
.end field

.field private final zzns:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDisconnectDrawableResId"
        id = 0x12
    .end annotation
.end field

.field private final zznt:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getImageSizeDimenResId"
        id = 0x13
    .end annotation
.end field

.field private final zznu:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCastingToDeviceStringResId"
        id = 0x14
    .end annotation
.end field

.field private final zznv:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStopLiveStreamTitleResId"
        id = 0x15
    .end annotation
.end field

.field private final zznw:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPauseTitleResId"
        id = 0x16
    .end annotation
.end field

.field private final zznx:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPlayTitleResId"
        id = 0x17
    .end annotation
.end field

.field private final zzny:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSkipNextTitleResId"
        id = 0x18
    .end annotation
.end field

.field private final zznz:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSkipPrevTitleResId"
        id = 0x19
    .end annotation
.end field

.field private final zzoa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForwardTitleResId"
        id = 0x1a
    .end annotation
.end field

.field private final zzob:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForward10TitleResId"
        id = 0x1b
    .end annotation
.end field

.field private final zzoc:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getForward30TitleResId"
        id = 0x1c
    .end annotation
.end field

.field private final zzod:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewindTitleResId"
        id = 0x1d
    .end annotation
.end field

.field private final zzoe:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewind10TitleResId"
        id = 0x1e
    .end annotation
.end field

.field private final zzof:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRewind30TitleResId"
        id = 0x1f
    .end annotation
.end field

.field private final zzog:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDisconnectTitleResId"
        id = 0x20
    .end annotation
.end field

.field private final zzoh:Lcom/google/android/gms/cast/framework/media/zzd;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getNotificationActionsProviderAsBinder"
        id = 0x21
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 183
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    aput-object v3, v1, v2

    .line 184
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznb:Ljava/util/List;

    .line 185
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznc:[I

    .line 186
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p11    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p13    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p14    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p15    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .param p16    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x10
        .end annotation
    .end param
    .param p17    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x11
        .end annotation
    .end param
    .param p18    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x12
        .end annotation
    .end param
    .param p19    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x13
        .end annotation
    .end param
    .param p20    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x14
        .end annotation
    .end param
    .param p21    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x15
        .end annotation
    .end param
    .param p22    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x16
        .end annotation
    .end param
    .param p23    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x17
        .end annotation
    .end param
    .param p24    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x18
        .end annotation
    .end param
    .param p25    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x19
        .end annotation
    .end param
    .param p26    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1a
        .end annotation
    .end param
    .param p27    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1b
        .end annotation
    .end param
    .param p28    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1c
        .end annotation
    .end param
    .param p29    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1d
        .end annotation
    .end param
    .param p30    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1e
        .end annotation
    .end param
    .param p31    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1f
        .end annotation
    .end param
    .param p32    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x20
        .end annotation
    .end param
    .param p33    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x21
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[IJ",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIIIIIIIIIIIIIIII",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p33

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznd:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznd:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    array-length v1, v2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzne:[I

    goto :goto_1

    .line 7
    :cond_1
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzne:[I

    :goto_1
    move-wide v1, p3

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzlj:J

    move-object v1, p5

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznf:Ljava/lang/String;

    move v1, p6

    .line 10
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzng:I

    move v1, p7

    .line 11
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznh:I

    move v1, p8

    .line 12
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzni:I

    move v1, p9

    .line 13
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznj:I

    move/from16 v1, p10

    .line 14
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznk:I

    move/from16 v1, p11

    .line 15
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznl:I

    move/from16 v1, p12

    .line 16
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznm:I

    move/from16 v1, p13

    .line 17
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznn:I

    move/from16 v1, p14

    .line 18
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzno:I

    move/from16 v1, p15

    .line 19
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznp:I

    move/from16 v1, p16

    .line 20
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznq:I

    move/from16 v1, p17

    .line 21
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznr:I

    move/from16 v1, p18

    .line 22
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzns:I

    move/from16 v1, p19

    .line 23
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznt:I

    move/from16 v1, p20

    .line 24
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznu:I

    move/from16 v1, p21

    .line 25
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznv:I

    move/from16 v1, p22

    .line 26
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznw:I

    move/from16 v1, p23

    .line 27
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznx:I

    move/from16 v1, p24

    .line 28
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzny:I

    move/from16 v1, p25

    .line 29
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznz:I

    move/from16 v1, p26

    .line 30
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoa:I

    move/from16 v1, p27

    .line 31
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzob:I

    move/from16 v1, p28

    .line 32
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoc:I

    move/from16 v1, p29

    .line 33
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzod:I

    move/from16 v1, p30

    .line 34
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoe:I

    move/from16 v1, p31

    .line 35
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzof:I

    move/from16 v1, p32

    .line 36
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzog:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "com.google.android.gms.cast.framework.media.INotificationActionsProvider"

    .line 41
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 42
    instance-of v2, v1, Lcom/google/android/gms/cast/framework/media/zzd;

    if-eqz v2, :cond_3

    .line 43
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/cast/framework/media/zzd;

    goto :goto_2

    .line 44
    :cond_3
    new-instance v4, Lcom/google/android/gms/cast/framework/media/zze;

    invoke-direct {v4, v3}, Lcom/google/android/gms/cast/framework/media/zze;-><init>(Landroid/os/IBinder;)V

    .line 45
    :goto_2
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoh:Lcom/google/android/gms/cast/framework/media/zzd;

    return-void
.end method

.method static synthetic zzbz()Ljava/util/List;
    .locals 1

    .line 181
    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzca()[I
    .locals 1

    .line 182
    sget-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznc:[I

    return-object v0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznd:Ljava/util/List;

    return-object v0
.end method

.method public getCastingToDeviceStringResId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznu:I

    return v0
.end method

.method public getCompatActionIndices()[I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzne:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectDrawableResId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzns:I

    return v0
.end method

.method public getForward10DrawableResId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznn:I

    return v0
.end method

.method public getForward30DrawableResId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzno:I

    return v0
.end method

.method public getForwardDrawableResId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznm:I

    return v0
.end method

.method public getPauseDrawableResId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzni:I

    return v0
.end method

.method public getPlayDrawableResId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznj:I

    return v0
.end method

.method public getRewind10DrawableResId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznq:I

    return v0
.end method

.method public getRewind30DrawableResId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznr:I

    return v0
.end method

.method public getRewindDrawableResId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznp:I

    return v0
.end method

.method public getSkipNextDrawableResId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznk:I

    return v0
.end method

.method public getSkipPrevDrawableResId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznl:I

    return v0
.end method

.method public getSkipStepMs()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzlj:J

    return-wide v0
.end method

.method public getSmallIconDrawableResId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzng:I

    return v0
.end method

.method public getStopLiveStreamDrawableResId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznh:I

    return v0
.end method

.method public getStopLiveStreamTitleResId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznv:I

    return v0
.end method

.method public getTargetActivityClassName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznf:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 80
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 83
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v0

    const/4 v2, 0x3

    .line 86
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v2

    const/4 v0, 0x4

    .line 89
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    .line 92
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v0

    const/4 v2, 0x6

    .line 95
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v0

    const/4 v2, 0x7

    .line 98
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v0

    const/16 v2, 0x8

    .line 101
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v0

    const/16 v2, 0x9

    .line 104
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v0

    const/16 v2, 0xa

    .line 107
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v0

    const/16 v2, 0xb

    .line 110
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForwardDrawableResId()I

    move-result v0

    const/16 v2, 0xc

    .line 113
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward10DrawableResId()I

    move-result v0

    const/16 v2, 0xd

    .line 116
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getForward30DrawableResId()I

    move-result v0

    const/16 v2, 0xe

    .line 119
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewindDrawableResId()I

    move-result v0

    const/16 v2, 0xf

    .line 122
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind10DrawableResId()I

    move-result v0

    const/16 v2, 0x10

    .line 125
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getRewind30DrawableResId()I

    move-result v0

    const/16 v2, 0x11

    .line 128
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v0

    const/16 v2, 0x12

    .line 131
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 133
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznt:I

    const/16 v2, 0x13

    .line 134
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v0

    const/16 v2, 0x14

    .line 137
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result v0

    const/16 v2, 0x15

    .line 140
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 142
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznw:I

    const/16 v2, 0x16

    .line 143
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 145
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznx:I

    const/16 v2, 0x17

    .line 146
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 148
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzny:I

    const/16 v2, 0x18

    .line 149
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 151
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznz:I

    const/16 v2, 0x19

    .line 152
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 154
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoa:I

    const/16 v2, 0x1a

    .line 155
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 157
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzob:I

    const/16 v2, 0x1b

    .line 158
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 160
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoc:I

    const/16 v2, 0x1c

    .line 161
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 163
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzod:I

    const/16 v2, 0x1d

    .line 164
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 166
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoe:I

    const/16 v2, 0x1e

    .line 167
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 169
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzof:I

    const/16 v2, 0x1f

    .line 170
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 172
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzog:I

    const/16 v2, 0x20

    .line 173
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoh:Lcom/google/android/gms/cast/framework/media/zzd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/media/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/16 v2, 0x21

    .line 178
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 179
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzbm()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznt:I

    return v0
.end method

.method public final zzbn()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznw:I

    return v0
.end method

.method public final zzbo()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznx:I

    return v0
.end method

.method public final zzbp()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzny:I

    return v0
.end method

.method public final zzbq()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zznz:I

    return v0
.end method

.method public final zzbr()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoa:I

    return v0
.end method

.method public final zzbs()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzob:I

    return v0
.end method

.method public final zzbt()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoc:I

    return v0
.end method

.method public final zzbu()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzod:I

    return v0
.end method

.method public final zzbv()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoe:I

    return v0
.end method

.method public final zzbw()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzof:I

    return v0
.end method

.method public final zzbx()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzog:I

    return v0
.end method

.method public final zzby()Lcom/google/android/gms/cast/framework/media/zzd;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzoh:Lcom/google/android/gms/cast/framework/media/zzd;

    return-object v0
.end method
