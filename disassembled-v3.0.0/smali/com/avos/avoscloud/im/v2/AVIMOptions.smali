.class public Lcom/avos/avoscloud/im/v2/AVIMOptions;
.super Ljava/lang/Object;
.source "AVIMOptions.java"


# static fields
.field private static final globalOptions:Lcom/avos/avoscloud/im/v2/AVIMOptions;


# instance fields
.field private rtmServer:Ljava/lang/String;

.field private signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

.field private timeoutInSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMOptions;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMOptions;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->globalOptions:Lcom/avos/avoscloud/im/v2/AVIMOptions;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->rtmServer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    const/16 v0, 0xf

    .line 14
    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->timeoutInSecs:I

    return-void
.end method

.method public static getGlobalOptions()Lcom/avos/avoscloud/im/v2/AVIMOptions;
    .locals 1

    .line 21
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->globalOptions:Lcom/avos/avoscloud/im/v2/AVIMOptions;

    return-object v0
.end method


# virtual methods
.method public getRTMServer()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->rtmServer:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public getTimeoutInSecs()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->timeoutInSecs:I

    return v0
.end method

.method public setRTMServer(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->rtmServer:Ljava/lang/String;

    return-void
.end method

.method public setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-void
.end method

.method public setTimeoutInSecs(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMOptions;->timeoutInSecs:I

    return-void
.end method
