.class public Lcom/kantv/ui/bean/StateBean;
.super Ljava/lang/Object;
.source "StateBean.java"


# instance fields
.field private area:Ljava/lang/String;

.field private img:I

.field private imgUrl:Ljava/lang/String;

.field private iso_code:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/kantv/ui/bean/StateBean;->img:I

    .line 57
    iput-object p2, p0, Lcom/kantv/ui/bean/StateBean;->area:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/kantv/ui/bean/StateBean;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/kantv/ui/bean/StateBean;->imgUrl:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/kantv/ui/bean/StateBean;->area:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/kantv/ui/bean/StateBean;->name:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/kantv/ui/bean/StateBean;->iso_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kantv/ui/bean/StateBean;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/kantv/ui/bean/StateBean;->img:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/kantv/ui/bean/StateBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/kantv/ui/bean/StateBean;->iso_code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/kantv/ui/bean/StateBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/kantv/ui/bean/StateBean;->area:Ljava/lang/String;

    return-void
.end method

.method public setImg(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/kantv/ui/bean/StateBean;->img:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/kantv/ui/bean/StateBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsoCode(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kantv/ui/bean/StateBean;->iso_code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/kantv/ui/bean/StateBean;->name:Ljava/lang/String;

    return-void
.end method
