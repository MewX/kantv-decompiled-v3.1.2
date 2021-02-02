.class public final enum Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;
.super Ljava/lang/Enum;
.source "ConnectionManagerErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum ACCESS_DENIED:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_DIRECTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_PROTOCOL_INFO:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INSUFFICIENT_NETWORK_RESOURCES:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INVALID_CONNECTION_REFERENCE:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum LOCAL_RESTRICTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum NOT_IN_NETWORK:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v1, 0x0

    const-string v2, "INCOMPATIBLE_PROTOCOL_INFO"

    const/16 v3, 0x2bd

    const-string v4, "The connection cannot be established because the protocol info parameter is incompatible"

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_PROTOCOL_INFO:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v2, 0x1

    const-string v3, "INCOMPATIBLE_DIRECTIONS"

    const/16 v4, 0x2be

    const-string v5, "The connection cannot be established because the directions of the involved ConnectionManagers (source/sink) are incompatible"

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_DIRECTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v3, 0x2

    const-string v4, "INSUFFICIENT_NETWORK_RESOURCES"

    const/16 v5, 0x2bf

    const-string v6, "The connection cannot be established because there are insufficient network resources"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INSUFFICIENT_NETWORK_RESOURCES:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 26
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v4, 0x3

    const-string v5, "LOCAL_RESTRICTIONS"

    const/16 v6, 0x2c0

    const-string v7, "The connection cannot be established because of local restrictions in the device"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->LOCAL_RESTRICTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v5, 0x4

    const-string v6, "ACCESS_DENIED"

    const/16 v7, 0x2c1

    const-string v8, "The connection cannot be established because the client is not permitted."

    invoke-direct {v0, v6, v5, v7, v8}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->ACCESS_DENIED:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v6, 0x5

    const-string v7, "INVALID_CONNECTION_REFERENCE"

    const/16 v8, 0x2c2

    const-string v9, "Not a valid connection established by this service"

    invoke-direct {v0, v7, v6, v8, v9}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v7, 0x6

    const-string v8, "NOT_IN_NETWORK"

    const/16 v9, 0x2c3

    const-string v10, "The connection cannot be established because the ConnectionManagers are not part of the same physical network."

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->NOT_IN_NETWORK:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    sget-object v8, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_PROTOCOL_INFO:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v8, v0, v1

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_DIRECTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INSUFFICIENT_NETWORK_RESOURCES:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->LOCAL_RESTRICTIONS:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->ACCESS_DENIED:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->NOT_IN_NETWORK:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->$VALUES:[Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    .line 36
    iput-object p4, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 5

    .line 48
    invoke-static {}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->values()[Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->getCode()I

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

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 1

    .line 21
    const-class v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 1

    .line 21
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->$VALUES:[Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
