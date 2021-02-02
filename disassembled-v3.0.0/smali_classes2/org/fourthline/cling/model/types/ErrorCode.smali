.class public final enum Lorg/fourthline/cling/model/types/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/types/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ACTION_NOT_AUTHORIZED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_TOO_LONG:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum HUMAN_INTERVENTION_REQUIRED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_CONTROL_URL:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum INVALID_SEQUENCE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum NOT_ENCRYPTED:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum NO_SUCH_SESSION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum OPTIONAL_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum OUT_OF_MEMORY:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_FAILURE:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_MISSING:Lorg/fourthline/cling/model/types/ErrorCode;

.field public static final enum TRANSPORT_LOCKED:Lorg/fourthline/cling/model/types/ErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v1, 0x0

    const-string v2, "INVALID_ACTION"

    const/16 v3, 0x191

    const-string v4, "No action by that name at this service"

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 26
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v2, 0x1

    const-string v3, "INVALID_ARGS"

    const/16 v4, 0x192

    const-string v5, "Not enough IN args, too many IN args, no IN arg by that name, one or more IN args are of the wrong data type"

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 27
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v3, 0x2

    const-string v4, "ACTION_FAILED"

    const/16 v5, 0x1f5

    const-string v6, "Current state of service prevents invoking that action"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v4, 0x3

    const-string v5, "ARGUMENT_VALUE_INVALID"

    const/16 v6, 0x258

    const-string v7, "The argument value is invalid"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v5, 0x4

    const-string v6, "ARGUMENT_VALUE_OUT_OF_RANGE"

    const/16 v7, 0x259

    const-string v8, "An argument value is less than the minimum or more than the maximum value of the allowedValueRange, or is not in the allowedValueList"

    invoke-direct {v0, v6, v5, v7, v8}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 30
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v6, 0x5

    const-string v7, "OPTIONAL_ACTION"

    const/16 v8, 0x25a

    const-string v9, "The requested action is optional and is not implemented by the device"

    invoke-direct {v0, v7, v6, v8, v9}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 31
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v7, 0x6

    const-string v8, "OUT_OF_MEMORY"

    const/16 v9, 0x25b

    const-string v10, "The device does not have sufficient memory available to complete the action"

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 32
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/4 v8, 0x7

    const-string v9, "HUMAN_INTERVENTION_REQUIRED"

    const/16 v10, 0x25c

    const-string v11, "The device has encountered an error condition which it cannot resolve itself"

    invoke-direct {v0, v9, v8, v10, v11}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v9, 0x8

    const-string v10, "ARGUMENT_TOO_LONG"

    const/16 v11, 0x25d

    const-string v12, "A string argument is too long for the device to handle properly"

    invoke-direct {v0, v10, v9, v11, v12}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 34
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v10, 0x9

    const-string v11, "ACTION_NOT_AUTHORIZED"

    const/16 v12, 0x25e

    const-string v13, "The action requested requires authorization and the sender was not authorized"

    invoke-direct {v0, v11, v10, v12, v13}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v11, 0xa

    const-string v12, "SIGNATURE_FAILURE"

    const/16 v13, 0x25f

    const-string v14, "The sender\'s signature failed to verify"

    invoke-direct {v0, v12, v11, v13, v14}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v12, 0xb

    const-string v13, "SIGNATURE_MISSING"

    const/16 v14, 0x260

    const-string v15, "The action requested requires a digital signature and there was none provided"

    invoke-direct {v0, v13, v12, v14, v15}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 37
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v13, 0xc

    const-string v14, "NOT_ENCRYPTED"

    const/16 v15, 0x261

    const-string v12, "This action requires confidentiality but the action was not delivered encrypted"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v12, 0xd

    const-string v14, "INVALID_SEQUENCE"

    const/16 v15, 0x262

    const-string v13, "The sequence provided was not valid"

    invoke-direct {v0, v14, v12, v15, v13}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 39
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v13, 0xe

    const-string v14, "INVALID_CONTROL_URL"

    const/16 v15, 0x263

    const-string v12, "The controlURL within the freshness element does not match the controlURL of the action actually invoked"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v12, "NO_SUCH_SESSION"

    const/16 v14, 0xf

    const/16 v15, 0x264

    const-string v13, "The session key reference is to a non-existent session"

    invoke-direct {v0, v12, v14, v15, v13}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 41
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v12, "TRANSPORT_LOCKED"

    const/16 v13, 0x10

    const/16 v14, 0x2c1

    const-string v15, "Transport locked"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->TRANSPORT_LOCKED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v12, "ILLEGAL_MIME_TYPE"

    const/16 v13, 0x11

    const/16 v14, 0x2ca

    const-string v15, "Illegal mime-type"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/fourthline/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v0, 0x12

    .line 23
    new-array v0, v0, [Lorg/fourthline/cling/model/types/ErrorCode;

    sget-object v12, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v12, v0, v1

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/fourthline/cling/model/types/ErrorCode;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->TRANSPORT_LOCKED:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ILLEGAL_MIME_TYPE:Lorg/fourthline/cling/model/types/ErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->$VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/fourthline/cling/model/types/ErrorCode;->code:I

    .line 49
    iput-object p4, p0, Lorg/fourthline/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 5

    .line 61
    invoke-static {}, Lorg/fourthline/cling/model/types/ErrorCode;->values()[Lorg/fourthline/cling/model/types/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Lorg/fourthline/cling/model/types/ErrorCode;->getCode()I

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 1

    .line 23
    const-class v0, Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/types/ErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/ErrorCode;
    .locals 1

    .line 23
    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->$VALUES:[Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/types/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/fourthline/cling/model/types/ErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
