.class public Lcom/kantv/ui/bean/UserInfoBean$HometownBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HometownBean"
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private city_code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private country_code:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private province_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 381
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city:Ljava/lang/String;

    .line 385
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country_code:Ljava/lang/String;

    .line 386
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province_code:Ljava/lang/String;

    .line 387
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_code()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_code()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country_code:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince_code()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province_code:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->city_code:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountry_code(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->country_code:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province:Ljava/lang/String;

    return-void
.end method

.method public setProvince_code(Ljava/lang/String;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$HometownBean;->province_code:Ljava/lang/String;

    return-void
.end method
