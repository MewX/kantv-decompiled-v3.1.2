.class Lcom/kantv/ui/samsung/MediaLauncherSingleton$15;
.super Ljava/lang/Object;
.source "MediaLauncherSingleton.java"

# interfaces
.implements Lcom/samsung/multiscreen/Channel$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/samsung/MediaLauncherSingleton;->playContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;


# direct methods
.method constructor <init>(Lcom/kantv/ui/samsung/MediaLauncherSingleton;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/kantv/ui/samsung/MediaLauncherSingleton$15;->this$0:Lcom/kantv/ui/samsung/MediaLauncherSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/samsung/multiscreen/Client;)V
    .locals 1

    const-string p1, "MediaLauncherSingleton"

    const-string v0, "setOnConnectListener() called!"

    .line 904
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
