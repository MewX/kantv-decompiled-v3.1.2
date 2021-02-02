.class Lcom/kantv/ui/activity/VideoPlayActivity$11$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$11;->onFound(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$11;

.field final synthetic val$service:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$11;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$11;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 707
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/samsung/TVListAdapter;->add(Ljava/lang/Object;)V

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TVListAdapter.add(service): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$11$1;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayActivity"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
