.class public Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;
.super Ljava/lang/Object;
.source "NewsCommentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/NewsCommentBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;
    }
.end annotation


# instance fields
.field private _id:J

.field private child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;",
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

    .line 348
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
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->child:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->created:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->like:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->pid:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->status:I

    return v0
.end method

.method public getToUser()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->toUser:I

    return v0
.end method

.method public getTvid()J
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->tvid:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()J
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->_id:J

    return-wide v0
.end method

.method public setChild(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean$ChildBean;",
            ">;)V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->child:Ljava/util/List;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 442
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->created:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->like:I

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->pid:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->status:I

    return-void
.end method

.method public setToUser(I)V
    .locals 0

    .line 410
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->toUser:I

    return-void
.end method

.method public setTvid(J)V
    .locals 0

    .line 386
    iput-wide p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->tvid:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 378
    iput-wide p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;->_id:J

    return-void
.end method
