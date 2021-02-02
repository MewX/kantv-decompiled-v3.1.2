.class public Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;
.super Ljava/lang/Object;
.source "CommentReqBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;
    }
.end annotation


# instance fields
.field private _id:J

.field private child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;",
            ">;"
        }
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private created:I

.field private like:I

.field private pid:I

.field private status:I

.field private toUser:I

.field private tvid:J

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChild()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->child:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->created:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->like:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->pid:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->status:I

    return v0
.end method

.method public getToUser()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->toUser:I

    return v0
.end method

.method public getTvid()J
    .locals 2

    .line 373
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->tvid:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()J
    .locals 2

    .line 341
    iget-wide v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->_id:J

    return-wide v0
.end method

.method public setChild(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean$ChildBean;",
            ">;)V"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->child:Ljava/util/List;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->created:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->like:I

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->pid:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->status:I

    return-void
.end method

.method public setToUser(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->toUser:I

    return-void
.end method

.method public setTvid(J)V
    .locals 0

    .line 377
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->tvid:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 345
    iput-wide p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;->_id:J

    return-void
.end method
