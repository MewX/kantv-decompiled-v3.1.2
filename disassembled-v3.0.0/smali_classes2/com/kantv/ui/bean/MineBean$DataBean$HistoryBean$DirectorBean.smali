.class public Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;
.super Ljava/lang/Object;
.source "MineBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectorBean"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 471
    iput p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/kantv/ui/bean/MineBean$DataBean$HistoryBean$DirectorBean;->name:Ljava/lang/String;

    return-void
.end method
