.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
.super Ljava/lang/Enum;
.source "DLNAFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum BACKGROUND_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum BYTE_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum CONNECTION_STALL:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum DLNA_V15:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum FLAG_PLAY_CONTAINER:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum INTERACTIVE_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum RTSP_PAUSE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum S0_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum SENDER_PACED:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum SN_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum STREAMING_TRANSFER_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

.field public static final enum TIME_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 41
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v1, 0x0

    const-string v2, "SENDER_PACED"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v2, v1, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SENDER_PACED:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 42
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v2, 0x1

    const-string v3, "TIME_BASED_SEEK"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v2, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->TIME_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 43
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v3, 0x2

    const-string v4, "BYTE_BASED_SEEK"

    const/high16 v5, 0x20000000

    invoke-direct {v0, v4, v3, v5}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BYTE_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 44
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v4, 0x3

    const-string v5, "FLAG_PLAY_CONTAINER"

    const/high16 v6, 0x10000000

    invoke-direct {v0, v5, v4, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->FLAG_PLAY_CONTAINER:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 45
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v5, 0x4

    const-string v6, "S0_INCREASE"

    const/high16 v7, 0x8000000

    invoke-direct {v0, v6, v5, v7}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->S0_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v6, 0x5

    const-string v7, "SN_INCREASE"

    const/high16 v8, 0x4000000

    invoke-direct {v0, v7, v6, v8}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SN_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v7, 0x6

    const-string v8, "RTSP_PAUSE"

    const/high16 v9, 0x2000000

    invoke-direct {v0, v8, v7, v9}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->RTSP_PAUSE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/4 v8, 0x7

    const-string v9, "STREAMING_TRANSFER_MODE"

    const/high16 v10, 0x1000000

    invoke-direct {v0, v9, v8, v10}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->STREAMING_TRANSFER_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v9, 0x8

    const-string v10, "INTERACTIVE_TRANSFERT_MODE"

    const/high16 v11, 0x800000

    invoke-direct {v0, v10, v9, v11}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->INTERACTIVE_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v10, 0x9

    const-string v11, "BACKGROUND_TRANSFERT_MODE"

    const/high16 v12, 0x400000

    invoke-direct {v0, v11, v10, v12}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BACKGROUND_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v11, 0xa

    const-string v12, "CONNECTION_STALL"

    const/high16 v13, 0x200000

    invoke-direct {v0, v12, v11, v13}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->CONNECTION_STALL:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v12, 0xb

    const-string v13, "DLNA_V15"

    const/high16 v14, 0x100000

    invoke-direct {v0, v13, v12, v14}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->DLNA_V15:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    const/16 v0, 0xc

    .line 39
    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    sget-object v13, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SENDER_PACED:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v13, v0, v1

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->TIME_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BYTE_BASED_SEEK:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->FLAG_PLAY_CONTAINER:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->S0_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->SN_INCREASE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->RTSP_PAUSE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->STREAMING_TRANSFER_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->INTERACTIVE_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->BACKGROUND_TRANSFERT_MODE:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->CONNECTION_STALL:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->DLNA_V15:Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    aput-object v1, v0, v12

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->code:I

    return-void
.end method

.method public static valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 5

    .line 65
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 1

    .line 39
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;
    .locals 1

    .line 39
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->code:I

    return v0
.end method
