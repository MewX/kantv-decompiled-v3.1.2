.class public Lcom/kantv/ui/bean/EventBusBean;
.super Ljava/lang/Object;
.source "EventBusBean.java"


# instance fields
.field classname:Ljava/lang/String;

.field data:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kantv/ui/bean/EventBusBean;->classname:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/kantv/ui/bean/EventBusBean;->type:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/kantv/ui/bean/EventBusBean;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/kantv/ui/bean/EventBusBean;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/kantv/ui/bean/EventBusBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/kantv/ui/bean/EventBusBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kantv/ui/bean/EventBusBean;->classname:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/bean/EventBusBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/kantv/ui/bean/EventBusBean;->type:Ljava/lang/String;

    return-void
.end method
