.class public Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;
.super Ljava/lang/Object;
.source "BaseClingResponse.java"

# interfaces
.implements Lcom/kantv/ui/androidupnpdemo/entity/IResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/kantv/ui/androidupnpdemo/entity/IResponse<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected defaultMsg:Ljava/lang/String;

.field protected info:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

.field protected operation:Lorg/fourthline/cling/model/message/UpnpResponse;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation;",
            "TT;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 49
    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->info:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->mActionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 37
    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->operation:Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 38
    iput-object p3, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->defaultMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/entity/BaseClingResponse;->info:Ljava/lang/Object;

    return-void
.end method
