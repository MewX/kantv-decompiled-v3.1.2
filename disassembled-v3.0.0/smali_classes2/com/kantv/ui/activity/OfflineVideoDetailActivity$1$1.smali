.class Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;
.super Ljava/lang/Object;
.source "OfflineVideoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

.field final synthetic val$position:I

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;ILcom/kantv/ui/bean/EntityVideo;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iput p2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->val$position:I

    iput-object p3, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 331
    iget p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->val$position:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineVideoDetailActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object v3, v3, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v3}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$000(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v2, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-eqz v2, :cond_1

    .line 339
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v1, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 340
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 341
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object v1, v1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 344
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 345
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoDetailActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object p1, p1, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** urll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->getSaveFileDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "play.m3u8"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "M3U8_URL"

    .line 362
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object p1, p1, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity$1;->this$0:Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    const-class v1, Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_3
    :goto_0
    return-void
.end method
