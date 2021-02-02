.class public Lcom/kantv/ui/bean/String2Bean;
.super Ljava/lang/Object;
.source "String2Bean.java"


# instance fields
.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/kantv/ui/bean/String2Bean;->text1:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/kantv/ui/bean/String2Bean;->text2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText1()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kantv/ui/bean/String2Bean;->text1:Ljava/lang/String;

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kantv/ui/bean/String2Bean;->text2:Ljava/lang/String;

    return-object v0
.end method

.method public setText1(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/kantv/ui/bean/String2Bean;->text1:Ljava/lang/String;

    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kantv/ui/bean/String2Bean;->text2:Ljava/lang/String;

    return-void
.end method
