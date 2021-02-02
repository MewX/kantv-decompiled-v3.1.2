.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;
.super Ljava/lang/Object;
.source "ClingDevice.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/entity/IDevice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/androidupnpdemo/entity/IDevice<",
        "Lorg/fourthline/cling/model/meta/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private isSelected:Z

.field private mDevice:Lorg/fourthline/cling/model/meta/Device;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->mDevice:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDevice()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->mDevice:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingDevice;->isSelected:Z

    return-void
.end method
