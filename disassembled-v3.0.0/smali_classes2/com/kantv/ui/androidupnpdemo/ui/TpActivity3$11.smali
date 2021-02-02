.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->loadRemoteMedia(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

.field final synthetic val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;->val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdBreakStatusUpdated()V
    .locals 0

    return-void
.end method

.method public onMetadataUpdated()V
    .locals 0

    return-void
.end method

.method public onPreloadStatusUpdated()V
    .locals 0

    return-void
.end method

.method public onQueueStatusUpdated()V
    .locals 0

    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public onStatusUpdated()V
    .locals 3

    .line 587
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    const-class v2, Lcom/kantv/ui/chromecast/ExpandedControlsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->startActivity(Landroid/content/Intent;)V

    .line 589
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$11;->val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    return-void
.end method
