.class public Lcom/kantv/ui/bean/Province;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Lcom/contrarywind/interfaces/IPickerViewData;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/kantv/ui/bean/Province;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/City;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/kantv/ui/bean/Province;->children:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kantv/ui/bean/Province;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kantv/ui/bean/Province;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/kantv/ui/bean/Province;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/City;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/kantv/ui/bean/Province;->children:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/kantv/ui/bean/Province;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kantv/ui/bean/Province;->name:Ljava/lang/String;

    return-void
.end method
