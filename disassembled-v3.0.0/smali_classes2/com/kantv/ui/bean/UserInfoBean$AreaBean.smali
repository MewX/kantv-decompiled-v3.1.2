.class public Lcom/kantv/ui/bean/UserInfoBean$AreaBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/UserInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AreaBean"
.end annotation


# instance fields
.field private country:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 364
    iput-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$AreaBean;->country:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/kantv/ui/bean/UserInfoBean$AreaBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/kantv/ui/bean/UserInfoBean$AreaBean;->country:Ljava/lang/String;

    return-void
.end method
