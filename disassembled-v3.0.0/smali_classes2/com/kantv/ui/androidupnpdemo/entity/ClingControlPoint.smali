.class public Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;
.super Ljava/lang/Object;
.source "ClingControlPoint.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/androidupnpdemo/entity/IControlPoint<",
        "Lorg/fourthline/cling/controlpoint/ControlPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;


# instance fields
.field private mControlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;
    .locals 1

    .line 20
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    invoke-direct {v0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;-><init>()V

    sput-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    .line 23
    :cond_0
    sget-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->mControlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 39
    sput-object v0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->INSTANCE:Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;

    return-void
.end method

.method public bridge synthetic getControlPoint()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->mControlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public bridge synthetic setControlPoint(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lorg/fourthline/cling/controlpoint/ControlPoint;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    return-void
.end method

.method public setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/ClingControlPoint;->mControlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-void
.end method
