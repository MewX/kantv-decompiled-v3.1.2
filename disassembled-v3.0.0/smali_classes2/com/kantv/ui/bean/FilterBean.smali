.class public Lcom/kantv/ui/bean/FilterBean;
.super Ljava/lang/Object;
.source "FilterBean.java"


# instance fields
.field id:Ljava/lang/String;

.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/bean/FilterBean;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/kantv/ui/bean/FilterBean;->value:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/kantv/ui/bean/FilterBean;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/kantv/ui/bean/FilterBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kantv/ui/bean/FilterBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/kantv/ui/bean/FilterBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/kantv/ui/bean/FilterBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/bean/FilterBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/kantv/ui/bean/FilterBean;->value:Ljava/lang/String;

    return-void
.end method
