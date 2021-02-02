.class public Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;
.super Ljava/lang/Object;
.source "CommentReqBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/CommentReqBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentListBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;,
        Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;
    }
.end annotation


# instance fields
.field private commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private commentUserIDList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;",
            ">;"
        }
    .end annotation
.end field

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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->commentList:Ljava/util/List;

    return-object v0
.end method

.method public getCommentUserIDList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->commentUserIDList:Ljava/util/HashMap;

    return-object v0
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

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->myLikeIDList:Ljava/util/List;

    return-object v0
.end method

.method public setCommentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->commentList:Ljava/util/List;

    return-void
.end method

.method public setCommentUserIDList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX$CommentUserIDBean;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->commentUserIDList:Ljava/util/HashMap;

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

    .line 105
    iput-object p1, p0, Lcom/kantv/ui/bean/CommentReqBean$DataBean$CommentListBeanX;->myLikeIDList:Ljava/util/List;

    return-void
.end method
