.class public Lcom/kantv/ui/bean/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Lcom/contrarywind/interfaces/IPickerViewData;


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/kantv/ui/bean/City;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/kantv/ui/bean/City;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kantv/ui/bean/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kantv/ui/bean/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/kantv/ui/bean/City;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/bean/City;->name:Ljava/lang/String;

    return-void
.end method
