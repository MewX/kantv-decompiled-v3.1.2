.class public Lcom/kantv/ui/bean/NavBean;
.super Ljava/lang/Object;
.source "NavBean.java"


# instance fields
.field id:Ljava/lang/String;

.field type:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kantv/ui/bean/NavBean;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/kantv/ui/bean/NavBean;->value:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/kantv/ui/bean/NavBean;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/kantv/ui/bean/NavBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/kantv/ui/bean/NavBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kantv/ui/bean/NavBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kantv/ui/bean/NavBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/bean/NavBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/kantv/ui/bean/NavBean;->value:Ljava/lang/String;

    return-void
.end method
