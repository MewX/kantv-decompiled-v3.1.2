.class Lcom/samsung/multiscreen/Player$7;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player;->resumeApplicationInForeground()V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Player;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$7;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$7;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeApplicationInForeground() onError(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 697
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$7;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Player"

    const-string v0, "resumeApplicationInForeground() onSuccess(): Successfully resumed application in foreground."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 694
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$7;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
