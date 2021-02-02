.class Lcom/kantv/ui/activity/VersionupActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "VersionupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VersionupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VersionupActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$2;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$2;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VersionupActivity;->access$300(Lcom/kantv/ui/activity/VersionupActivity;)V

    return-void
.end method
