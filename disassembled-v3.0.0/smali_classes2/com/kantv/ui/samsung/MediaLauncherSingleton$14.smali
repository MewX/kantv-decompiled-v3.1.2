.class Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;
.super Ljava/lang/Object;
.source "MediaLauncherSingleton.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/samsung/MediaLauncherSingleton;->playContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playContent(): onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLauncherSingleton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in Launching Content!onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 881
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-static {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->access$200(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    move-result-object p1

    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    if-eq p1, v0, :cond_0

    .line 883
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-static {p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->access$200(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    sget-object p1, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->STANDBY:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    .line 886
    iget-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    sget-object v0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;->VIDEO:Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    invoke-static {p1, v0}, Lcom/kantv/ui/samsung/MediaLauncherSingleton;->access$202(Lcom/kantv/ui/samsung/MediaLauncherSingleton;Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;)Lcom/kantv/ui/samsung/MediaLauncherSingleton$PlayerType;

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 877
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kantv/ui/samsung/MediaLauncherSingleton$14;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
