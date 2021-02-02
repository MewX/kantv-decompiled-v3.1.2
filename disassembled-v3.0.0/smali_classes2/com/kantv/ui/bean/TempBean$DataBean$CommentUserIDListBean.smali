.class public Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;
.super Ljava/lang/Object;
.source "TempBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/TempBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommentUserIDListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;
    }
.end annotation


# instance fields
.field private _$91913246769001:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "91913246769001"
    .end annotation
.end field

.field private _$91914408562001:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "91914408562001"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private _$91914431089001:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "91914431089001"
    .end annotation

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

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_$91913246769001()Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91913246769001:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;

    return-object v0
.end method

.method public get_$91914408562001()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91914408562001:Ljava/util/List;

    return-object v0
.end method

.method public get_$91914431089001()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91914431089001:Ljava/util/List;

    return-object v0
.end method

.method public set_$91913246769001(Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91913246769001:Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean$_$91913246769001Bean;

    return-void
.end method

.method public set_$91914408562001(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91914408562001:Ljava/util/List;

    return-void
.end method

.method public set_$91914431089001(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/kantv/ui/bean/TempBean$DataBean$CommentUserIDListBean;->_$91914431089001:Ljava/util/List;

    return-void
.end method
