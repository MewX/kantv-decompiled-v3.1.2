.class Lcom/kantv/ui/activity/DownloadingActivity$1$1;
.super Ljava/lang/Object;
.source "DownloadingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/DownloadingActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

.field final synthetic val$position:I

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/DownloadingActivity$1;Lcom/kantv/ui/bean/EntityVideo;I)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iput p3, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object v1, v1, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   position  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$position:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadingActivity"

    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$100(Lcom/kantv/ui/activity/DownloadingActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(\u7b2c"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object v3, v3, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u96c6\uff09"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    iget p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->val$position:I

    const/4 v3, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v4, v4, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/DownloadingActivity;->access$200(Lcom/kantv/ui/activity/DownloadingActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v0, v0, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v3, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 254
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$400(Lcom/kantv/ui/activity/DownloadingActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 255
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$400(Lcom/kantv/ui/activity/DownloadingActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 258
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$400(Lcom/kantv/ui/activity/DownloadingActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 259
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$400(Lcom/kantv/ui/activity/DownloadingActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 262
    :cond_3
    iget-object v4, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v4, v4, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v4}, Lcom/kantv/ui/activity/DownloadingActivity;->access$500(Lcom/kantv/ui/activity/DownloadingActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 263
    :cond_4
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData2()V

    .line 264
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 265
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 266
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v4, v4, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v5, v5, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v5}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnClickListenername"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v5, v5, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v5}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v5, v5, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    const-class v4, Lcom/kantv/ui/download/MyDownLoadService;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-(\u7b2c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object v2, v2, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object p1, p1, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u96c6)-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/DownloadingActivity;->access$300(Lcom/kantv/ui/activity/DownloadingActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iget-object p1, p1, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object p1, p0, Lcom/kantv/ui/activity/DownloadingActivity$1$1;->this$1:Lcom/kantv/ui/activity/DownloadingActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/DownloadingActivity$1;->this$0:Lcom/kantv/ui/activity/DownloadingActivity;

    invoke-virtual {p1, v1}, Lcom/kantv/ui/activity/DownloadingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    return-void
.end method
