.class public Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;
.super Ljava/lang/Object;
.source "TempBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean;
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

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()I
    .locals 1

    .line 579
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->created:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->like:I

    return v0
.end method

.method public getPid()J
    .locals 2

    .line 523
    iget-wide v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->pid:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 571
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->status:I

    return v0
.end method

.method public getToUser()J
    .locals 2

    .line 531
    iget-wide v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->toUser:J

    return-wide v0
.end method

.method public getTvid()J
    .locals 2

    .line 539
    iget-wide v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->tvid:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 563
    iget-wide v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->uid:J

    return-wide v0
.end method

.method public get_id()J
    .locals 2

    .line 515
    iget-wide v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->_id:J

    return-wide v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreated(I)V
    .locals 0

    .line 583
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->created:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 551
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->like:I

    return-void
.end method

.method public setPid(J)V
    .locals 0

    .line 527
    iput-wide p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->pid:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 575
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->status:I

    return-void
.end method

.method public setToUser(J)V
    .locals 0

    .line 535
    iput-wide p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->toUser:J

    return-void
.end method

.method public setTvid(J)V
    .locals 0

    .line 543
    iput-wide p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->tvid:J

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 567
    iput-wide p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->uid:J

    return-void
.end method

.method public set_id(J)V
    .locals 0

    .line 519
    iput-wide p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean$ChildBean;->_id:J

    return-void
.end method
