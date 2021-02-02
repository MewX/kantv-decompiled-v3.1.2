.class public Lcom/kantv/ui/bean/MineBean;
.super Ljava/lang/Object;
.source "MineBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/MineBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/kantv/ui/bean/MineBean$DataBean;

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/kantv/ui/bean/MineBean$DataBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean;->data:Lcom/kantv/ui/bean/MineBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/kantv/ui/bean/MineBean;->status:I

    return v0
.end method

.method public setData(Lcom/kantv/ui/bean/MineBean$DataBean;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean;->data:Lcom/kantv/ui/bean/MineBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/kantv/ui/bean/MineBean;->status:I

    return-void
.end method
