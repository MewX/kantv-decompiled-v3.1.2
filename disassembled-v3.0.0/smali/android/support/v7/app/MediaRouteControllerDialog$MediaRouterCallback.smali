.class final Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1146
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1141
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1151
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 1152
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 1153
    sget-boolean v1, Landroid/support/v7/app/MediaRouteControllerDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 1156
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v1, p2, :cond_1

    .line 1157
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method
