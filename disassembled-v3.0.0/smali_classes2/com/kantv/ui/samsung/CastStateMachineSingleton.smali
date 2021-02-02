.class public Lcom/kantv/ui/samsung/CastStateMachineSingleton;
.super Ljava/lang/Object;
.source "CastStateMachineSingleton.java"

# interfaces
.implements Lcom/kantv/ui/samsung/CastStateHandler;


# static fields
.field private static mInstance:Lcom/kantv/ui/samsung/CastStateMachineSingleton;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private listners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/samsung/CastStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCastState:Lcom/kantv/ui/samsung/CastStates;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastStateM.Singleton"

    .line 13
    iput-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->listners:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->initCastStateMachine()V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/samsung/CastStateMachineSingleton;
    .locals 1

    .line 27
    sget-object v0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mInstance:Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    invoke-direct {v0}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;-><init>()V

    sput-object v0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mInstance:Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    .line 30
    :cond_0
    sget-object v0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mInstance:Lcom/kantv/ui/samsung/CastStateMachineSingleton;

    return-object v0
.end method

.method private initCastStateMachine()V
    .locals 1

    .line 19
    sget-object v0, Lcom/kantv/ui/samsung/CastStates;->IDLE:Lcom/kantv/ui/samsung/CastStates;

    iput-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mCurrentCastState:Lcom/kantv/ui/samsung/CastStates;

    return-void
.end method


# virtual methods
.method public castStatusChangeObserver(Lcom/kantv/ui/samsung/CastStates;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->listners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/samsung/CastStateObserver;

    .line 61
    invoke-interface {v1, p1}, Lcom/kantv/ui/samsung/CastStateObserver;->onCastStatusChange(Lcom/kantv/ui/samsung/CastStates;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentCastState()Lcom/kantv/ui/samsung/CastStates;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mCurrentCastState:Lcom/kantv/ui/samsung/CastStates;

    return-object v0
.end method

.method public registerObserver(Lcom/kantv/ui/samsung/CastStateObserver;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observer Registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CastStateM.Singleton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->listners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lcom/kantv/ui/samsung/CastStateObserver;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observer Un-registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CastStateM.Singleton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->listners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentCastState(Lcom/kantv/ui/samsung/CastStates;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cast Satatus Changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kantv/ui/samsung/CastStates;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CastStateM.Singleton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->mCurrentCastState:Lcom/kantv/ui/samsung/CastStates;

    .line 36
    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/CastStateMachineSingleton;->castStatusChangeObserver(Lcom/kantv/ui/samsung/CastStates;)V

    return-void
.end method
