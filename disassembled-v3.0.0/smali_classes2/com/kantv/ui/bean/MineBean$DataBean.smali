.class public Lcom/kantv/ui/bean/MineBean$DataBean;
.super Ljava/lang/Object;
.source "MineBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/MineBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;,
        Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;
    }
.end annotation


# instance fields
.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;",
            ">;"
        }
    .end annotation
.end field

.field private info_count:Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;

.field private userInfo:Lcom/kantv/ui/bean/UserInfoBean;

.field private wx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->history:Ljava/util/List;

    return-object v0
.end method

.method public getInfo_count()Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->info_count:Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;

    return-object v0
.end method

.method public getUserInfo()Lcom/kantv/ui/bean/UserInfoBean;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->userInfo:Lcom/kantv/ui/bean/UserInfoBean;

    return-object v0
.end method

.method public getWx()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->wx:Ljava/lang/String;

    return-object v0
.end method

.method public setHistory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->history:Ljava/util/List;

    return-void
.end method

.method public setInfo_count(Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->info_count:Lcom/kantv/ui/bean/MineBean$DataBean$InfoCountBean;

    return-void
.end method

.method public setUserInfo(Lcom/kantv/ui/bean/UserInfoBean;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->userInfo:Lcom/kantv/ui/bean/UserInfoBean;

    return-void
.end method

.method public setWx(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean;->wx:Ljava/lang/String;

    return-void
.end method
