.class Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;
.super Ljava/lang/Object;
.source "OfflineVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

.field final synthetic val$position:I

.field final synthetic val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity$2;ILcom/kantv/ui/bean/EntityVideo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iput p2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$position:I

    iput-object p3, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 363
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$000(Lcom/kantv/ui/activity/OfflineVideoActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 364
    iget p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$position:I

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 366
    :cond_0
    iget p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$position:I

    sub-int/2addr p1, v0

    .line 368
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineVideoActivity"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object v2, v2, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$100(Lcom/kantv/ui/activity/OfflineVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    iget-object v2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object v2, v2, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v2}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-boolean v2, v2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-eqz v2, :cond_2

    .line 374
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v1, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 375
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 376
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object v1, v1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$200(Lcom/kantv/ui/activity/OfflineVideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/EntityVideo;

    iput-boolean v0, p1, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    .line 379
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 380
    iget-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->access$300(Lcom/kantv/ui/activity/OfflineVideoActivity;)Lcom/kantv/ui/adapter/CommonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 383
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 384
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object v0, v0, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->val$string8Bean:Lcom/kantv/ui/bean/EntityVideo;

    iget-object v0, v0, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 386
    aget-object v0, v0, v1

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;->this$1:Lcom/kantv/ui/activity/OfflineVideoActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    const-class v1, Lcom/kantv/ui/activity/OfflineVideoDetailActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :cond_4
    :goto_1
    return-void
.end method
