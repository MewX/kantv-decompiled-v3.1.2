.class Lcom/kantv/ui/activity/VideoPlayActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/samsung/multiscreen/Search$OnServiceFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initSamsungDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFound(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnServiceFoundListener(): onFound(): Service Added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "updateTVList(): NULL service!!!"

    .line 699
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 703
    :cond_0
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->contains(Lcom/samsung/multiscreen/Service;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;

    invoke-direct {v1, p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$11;Lcom/samsung/multiscreen/Service;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
