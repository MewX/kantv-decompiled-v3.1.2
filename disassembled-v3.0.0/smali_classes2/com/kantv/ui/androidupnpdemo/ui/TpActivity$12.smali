.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->loadRemoteMedia(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

.field final synthetic val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    iput-object p2, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;->val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

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

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    const-class v2, Lcom/kantv/ui/chromecast/ExpandedControlsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    iget-object v1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-virtual {v1, v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$12;->val$remoteMediaClient:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;)V

    return-void
.end method
