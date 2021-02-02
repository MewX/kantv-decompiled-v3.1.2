.class public Lcom/kantv/ui/bean/TempBean$DataBean;
.super Ljava/lang/Object;
.source "TempBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/TempBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean;,
        Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;
    }
.end annotation


# instance fields
.field private comm_nums:I

.field private commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private commentUserIDList:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;

.field private is_collect:I

.field private islike:I

.field private like:I

.field private more:I

.field private myLikeIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComm_nums()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->comm_nums:I

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public getCommentUserIDList()Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->commentUserIDList:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;

    return-object v0
.end method

.method public getIs_collect()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->is_collect:I

    return v0
.end method

.method public getIslike()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->islike:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->like:I

    return v0
.end method

.method public getMore()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->more:I

    return v0
.end method

.method public getMyLikeIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->myLikeIDList:Ljava/util/List;

    return-object v0
.end method

.method public setComm_nums(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->comm_nums:I

    return-void
.end method

.method public setCommentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/TempBean$DataBean$CommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->commentList:Ljava/util/List;

    return-void
.end method

.method public setCommentUserIDList(Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->commentUserIDList:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;

    return-void
.end method

.method public setIs_collect(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->is_collect:I

    return-void
.end method

.method public setIslike(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->islike:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->like:I

    return-void
.end method

.method public setMore(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->more:I

    return-void
.end method

.method public setMyLikeIDList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean;->myLikeIDList:Ljava/util/List;

    return-void
.end method
