.class public Lcom/kantv/ui/bean/TempBean;
.super Ljava/lang/Object;
.source "TempBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/TempBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/kantv/ui/bean/TempBean$DataBean;

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/kantv/ui/bean/TempBean$DataBean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean;->data:Lcom/kantv/ui/bean/TempBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/kantv/ui/bean/TempBean;->status:I

    return v0
.end method

.method public setData(Lcom/kantv/ui/bean/TempBean$DataBean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean;->data:Lcom/kantv/ui/bean/TempBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/kantv/ui/bean/TempBean;->status:I

    return-void
.end method
