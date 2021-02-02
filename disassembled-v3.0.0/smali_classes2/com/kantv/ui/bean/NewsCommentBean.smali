.class public Lcom/kantv/ui/bean/NewsCommentBean;
.super Ljava/lang/Object;
.source "NewsCommentBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/NewsCommentBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/kantv/ui/bean/NewsCommentBean$DataBean;

.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/kantv/ui/bean/NewsCommentBean$DataBean;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean;->data:Lcom/kantv/ui/bean/NewsCommentBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean;->status:I

    return v0
.end method

.method public setData(Lcom/kantv/ui/bean/NewsCommentBean$DataBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean;->data:Lcom/kantv/ui/bean/NewsCommentBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean;->status:I

    return-void
.end method
