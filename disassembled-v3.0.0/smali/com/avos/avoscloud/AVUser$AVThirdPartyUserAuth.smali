.class public Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;
.super Ljava/lang/Object;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVThirdPartyUserAuth"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SNS_SINA_WEIBO:Ljava/lang/String; = "weibo"

.field public static final SNS_TENCENT_WEIBO:Ljava/lang/String; = "qq"

.field public static final SNS_TENCENT_WEIXIN:Ljava/lang/String; = "weixin"


# instance fields
.field accessToken:Ljava/lang/String;

.field expiredAt:Ljava/lang/String;

.field snsType:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2659
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    .line 2660
    iput-object p3, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    .line 2661
    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    .line 2662
    iput-object p4, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    return-void
.end method

.method protected static platformUserIdTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "qq"

    .line 2666
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "weixin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "uid"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "openid"

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 2674
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireAt()Ljava/lang/String;
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsType()Ljava/lang/String;
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 2682
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 2678
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpireAt(Ljava/lang/String;)V
    .locals 0

    .line 2694
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->expiredAt:Ljava/lang/String;

    return-void
.end method

.method public setSnsType(Ljava/lang/String;)V
    .locals 0

    .line 2702
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->snsType:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 2686
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$AVThirdPartyUserAuth;->userId:Ljava/lang/String;

    return-void
.end method
