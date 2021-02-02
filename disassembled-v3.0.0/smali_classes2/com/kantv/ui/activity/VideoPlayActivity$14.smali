.class Lcom/kantv/ui/activity/VideoPlayActivity$14;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/samsung/multiscreen/Search$OnServiceLostListener;


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

    .line 729
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$14;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    const-string v0, "VideoPlayActivity"

    const-string v1, "Discovery: Service Lost!!!"

    .line 732
    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 737
    :cond_0
    sget-object v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mDeviceListAdapter:Lcom/kantv/ui/samsung/TVListAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/samsung/TVListAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method
