.class Lcom/kantv/ui/activity/VersionupActivity$5;
.super Ljava/util/TimerTask;
.source "VersionupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VersionupActivity;->loadProgressing()V
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

    .line 328
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    new-instance v1, Lcom/kantv/ui/activity/VersionupActivity$5$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VersionupActivity$5$1;-><init>(Lcom/kantv/ui/activity/VersionupActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VersionupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
