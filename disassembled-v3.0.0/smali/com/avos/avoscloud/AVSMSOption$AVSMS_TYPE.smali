.class public final enum Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;
.super Ljava/lang/Enum;
.source "AVSMSOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSMSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVSMS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

.field public static final enum TEST_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

.field public static final enum VOICE_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 127
    new-instance v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    const/4 v1, 0x0

    const-string v2, "VOICE_SMS"

    const-string v3, "voice"

    invoke-direct {v0, v2, v1, v3}, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->VOICE_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    const/4 v2, 0x1

    const-string v3, "TEST_SMS"

    const-string v4, "sms"

    invoke-direct {v0, v3, v2, v4}, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->TEST_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    sget-object v3, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->VOICE_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->TEST_SMS:Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput-object p3, p0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;
    .locals 1

    .line 126
    const-class v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;
    .locals 1

    .line 126
    sget-object v0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/avos/avoscloud/AVSMSOption$AVSMS_TYPE;->name:Ljava/lang/String;

    return-object v0
.end method
