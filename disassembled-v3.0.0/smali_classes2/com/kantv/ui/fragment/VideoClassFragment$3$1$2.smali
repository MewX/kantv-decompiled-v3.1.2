.class Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;
.super Ljava/lang/Object;
.source "VideoClassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/HotClassBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

.field final synthetic val$hotClassBean:Lcom/kantv/ui/bean/HotClassBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment$3$1;Lcom/kantv/ui/bean/HotClassBean;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->this$2:Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->val$hotClassBean:Lcom/kantv/ui/bean/HotClassBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 300
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->val$hotClassBean:Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seo"

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->this$2:Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$400(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->this$2:Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$300(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->val$hotClassBean:Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->this$2:Lcom/kantv/ui/fragment/VideoClassFragment$3$1;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    const-class v1, Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/fragment/VideoClassFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 314
    invoke-static {}, Ldebug/KanApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v1, "\u5f71\u89c6_\u7b5b\u9009"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v1, "\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$1$2;->val$hotClassBean:Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method
