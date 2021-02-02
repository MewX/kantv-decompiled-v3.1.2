.class public final Lcom/google/android/gms/cast/framework/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CastExpandedController:[I

.field public static final CastExpandedController_castButtonColor:I = 0x0

.field public static final CastExpandedController_castClosedCaptionsButtonDrawable:I = 0x1

.field public static final CastExpandedController_castControlButtons:I = 0x2

.field public static final CastExpandedController_castForward30ButtonDrawable:I = 0x3

.field public static final CastExpandedController_castMuteToggleButtonDrawable:I = 0x4

.field public static final CastExpandedController_castPauseButtonDrawable:I = 0x5

.field public static final CastExpandedController_castPlayButtonDrawable:I = 0x6

.field public static final CastExpandedController_castRewind30ButtonDrawable:I = 0x7

.field public static final CastExpandedController_castSeekBarProgressDrawable:I = 0x8

.field public static final CastExpandedController_castSeekBarThumbDrawable:I = 0x9

.field public static final CastExpandedController_castSkipNextButtonDrawable:I = 0xa

.field public static final CastExpandedController_castSkipPreviousButtonDrawable:I = 0xb

.field public static final CastExpandedController_castStopButtonDrawable:I = 0xc

.field public static final CastIntroOverlay:[I

.field public static final CastIntroOverlay_castBackgroundColor:I = 0x0

.field public static final CastIntroOverlay_castButtonBackgroundColor:I = 0x1

.field public static final CastIntroOverlay_castButtonText:I = 0x2

.field public static final CastIntroOverlay_castButtonTextAppearance:I = 0x3

.field public static final CastIntroOverlay_castFocusRadius:I = 0x4

.field public static final CastIntroOverlay_castTitleTextAppearance:I = 0x5

.field public static final CastMiniController:[I

.field public static final CastMiniController_castBackground:I = 0x0

.field public static final CastMiniController_castButtonColor:I = 0x1

.field public static final CastMiniController_castClosedCaptionsButtonDrawable:I = 0x2

.field public static final CastMiniController_castControlButtons:I = 0x3

.field public static final CastMiniController_castForward30ButtonDrawable:I = 0x4

.field public static final CastMiniController_castLargePauseButtonDrawable:I = 0x5

.field public static final CastMiniController_castLargePlayButtonDrawable:I = 0x6

.field public static final CastMiniController_castLargeStopButtonDrawable:I = 0x7

.field public static final CastMiniController_castMuteToggleButtonDrawable:I = 0x8

.field public static final CastMiniController_castPauseButtonDrawable:I = 0x9

.field public static final CastMiniController_castPlayButtonDrawable:I = 0xa

.field public static final CastMiniController_castProgressBarColor:I = 0xb

.field public static final CastMiniController_castRewind30ButtonDrawable:I = 0xc

.field public static final CastMiniController_castShowImageThumbnail:I = 0xd

.field public static final CastMiniController_castSkipNextButtonDrawable:I = 0xe

.field public static final CastMiniController_castSkipPreviousButtonDrawable:I = 0xf

.field public static final CastMiniController_castStopButtonDrawable:I = 0x10

.field public static final CastMiniController_castSubtitleTextAppearance:I = 0x11

.field public static final CastMiniController_castTitleTextAppearance:I = 0x12

.field public static final CustomCastTheme:[I

.field public static final CustomCastTheme_castExpandedControllerStyle:I = 0x0

.field public static final CustomCastTheme_castIntroOverlayStyle:I = 0x1

.field public static final CustomCastTheme_castMiniControllerStyle:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 321
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    const/4 v0, 0x6

    .line 335
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/cast/framework/R$styleable;->CastIntroOverlay:[I

    const/16 v0, 0x13

    .line 342
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController:[I

    const/4 v0, 0x3

    .line 362
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/cast/framework/R$styleable;->CustomCastTheme:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04004f
        0x7f040052
        0x7f040053
        0x7f040057
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040061
        0x7f040062
        0x7f040063
        0x7f040065
        0x7f040066
        0x7f040067
    .end array-data

    :array_1
    .array-data 4
        0x7f04004d
        0x7f04004e
        0x7f040050
        0x7f040051
        0x7f040056
        0x7f040069
    .end array-data

    :array_2
    .array-data 4
        0x7f04004c
        0x7f04004f
        0x7f040052
        0x7f040053
        0x7f040057
        0x7f040059
        0x7f04005a
        0x7f04005b
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040060
        0x7f040061
        0x7f040064
        0x7f040065
        0x7f040066
        0x7f040067
        0x7f040068
        0x7f040069
    .end array-data

    :array_3
    .array-data 4
        0x7f040054
        0x7f040058
        0x7f04005c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
