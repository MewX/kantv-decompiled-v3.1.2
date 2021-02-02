.class Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;
.super Ljava/lang/Object;
.source "MediaLauncherSingleton.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/samsung/MediaLauncherSingleton;->setService(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

.field final synthetic val$service:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    iput-object p2, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 639
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object p1

    sget-object v0, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 625
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    iget-object v0, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-static {p1, v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->access$002(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;

    .line 627
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-static {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->access$100(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V

    .line 628
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object p1

    sget-object v0, Lcom/kantv/ui/samsung/CastStates;->CONNECTED:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    goto :goto_0

    :cond_0
    const-string p1, "DMP NOT supported by TV!"

    .line 630
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    .line 631
    invoke-static {}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    move-result-object p1

    sget-object v0, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 622
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$4;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
