.class public Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;
.super Ljava/lang/Object;
.source "MineBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActorBean"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$ActorBean;->role:Ljava/lang/String;

    return-void
.end method
