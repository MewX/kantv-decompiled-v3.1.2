.class public Lcom/kantv/ui/bean/NewsCommentBean$DataBean;
.super Ljava/lang/Object;
.source "NewsCommentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/NewsCommentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;,
        Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;
    }
.end annotation


# instance fields
.field private comm_nums:I

.field private commentIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private commentUserIDList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;",
            ">;"
        }
    .end annotation
.end field

.field private is_collect:Ljava/lang/String;

.field private islike:I

.field private like:I

.field private more:I

.field private myLikeIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComm_nums()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->comm_nums:I

    return v0
.end method

.method public getCommentIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentIDList:Ljava/util/List;

    return-object v0
.end method

.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public getCommentUserIDList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentUserIDList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIs_collect()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->is_collect:Ljava/lang/String;

    return-object v0
.end method

.method public getIslike()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->islike:I

    return v0
.end method

.method public getLike()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->like:I

    return v0
.end method

.method public getMore()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->more:I

    return v0
.end method

.method public getMyLikeIDList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->myLikeIDList:Ljava/util/List;

    return-object v0
.end method

.method public setComm_nums(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->comm_nums:I

    return-void
.end method

.method public setCommentIDList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentIDList:Ljava/util/List;

    return-void
.end method

.method public setCommentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentList:Ljava/util/List;

    return-void
.end method

.method public setCommentUserIDList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/NewsCommentBean$DataBean$CommentUserIDListBean;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->commentUserIDList:Ljava/util/HashMap;

    return-void
.end method

.method public setIslike(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->islike:I

    return-void
.end method

.method public setLike(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->like:I

    return-void
.end method

.method public setLike(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->is_collect:Ljava/lang/String;

    return-void
.end method

.method public setMore(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->more:I

    return-void
.end method

.method public setMyLikeIDList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/kantv/ui/bean/NewsCommentBean$DataBean;->myLikeIDList:Ljava/util/List;

    return-void
.end method
