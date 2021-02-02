.class public Lcom/kantv/ui/bean/CommentReqBean$DataBean;
.super Ljava/lang/Object;
.source "CommentReqBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/CommentReqBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;
    }
.end annotation


# instance fields
.field private commentList:Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

.field private more:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentList()Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->commentList:Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    return-object v0
.end method

.method public getMore()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->more:I

    return v0
.end method

.method public setCommentList(Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->commentList:Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;

    return-void
.end method

.method public setMore(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean;->more:I

    return-void
.end method
