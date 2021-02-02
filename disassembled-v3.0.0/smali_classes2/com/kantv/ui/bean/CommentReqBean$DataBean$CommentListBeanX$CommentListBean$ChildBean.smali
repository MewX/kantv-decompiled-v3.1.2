.class public Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;
.super Ljava/lang/Object;
.source "CommentReqBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildBean"
.end annotation


# instance fields
.field private _id:J

.field private comment:Ljava/lang/String;

.field private created:I

.field private like:I

.field private pid:J

.field private status:I

.field private toUser:J

.field private tvid:J

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->created:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->like:I

    return v0
.end method

.method public getPid()J
    .locals 2

    .line 459
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->pid:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->status:I

    return v0
.end method

.method public getToUser()J
    .locals 2

    .line 475
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->toUser:J

    return-wide v0
.end method

.method public getTvid()J
    .locals 2

    .line 451
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->tvid:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()J
    .locals 2

    .line 443
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->_id:J

    return-wide v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->created:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->like:I

    return-void
.end method

.method public setPid(J)V
    .locals 0

    .line 463
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->pid:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 503
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->status:I

    return-void
.end method

.method public setToUser(J)V
    .locals 0

    .line 479
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->toUser:J

    return-void
.end method

.method public setTvid(J)V
    .locals 0

    .line 455
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->tvid:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 447
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;->_id:J

    return-void
.end method
