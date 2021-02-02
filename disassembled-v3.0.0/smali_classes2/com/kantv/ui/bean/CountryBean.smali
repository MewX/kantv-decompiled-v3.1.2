.class public Lcom/kantv/ui/bean/CountryBean;
.super Ljava/lang/Object;
.source "CountryBean.java"

# interfaces
.implements Lcom/contrarywind/interfaces/IPickerViewData;


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/Province;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/kantv/ui/bean/CountryBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/Province;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/kantv/ui/bean/CountryBean;->children:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/kantv/ui/bean/CountryBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kantv/ui/bean/CountryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/bean/CountryBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/Province;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/bean/CountryBean;->children:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/bean/CountryBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/kantv/ui/bean/CountryBean;->name:Ljava/lang/String;

    return-void
.end method
