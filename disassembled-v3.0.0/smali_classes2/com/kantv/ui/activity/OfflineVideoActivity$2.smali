.class Lcom/kantv/ui/activity/OfflineVideoActivity$2;
.super Lcom/kantv/ui/adapter/CommonAdapter;
.source "OfflineVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kantv/ui/adapter/CommonAdapter<",
        "Lcom/kantv/ui/bean/EntityVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/kantv/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V
    .locals 9

    const v0, 0x7f090284

    .line 324
    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 326
    iget-object v1, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p2, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OfflineVideoActivity"

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    array-length v3, v1

    if-lez v3, :cond_1

    .line 330
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getPhotoDirPath()Ljava/lang/String;

    move-result-object v3

    .line 331
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initAdapterdirFile.exists()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    aget-object v5, v1, v2

    .line 335
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "photoPath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const v0, 0x7f0901b8

    .line 343
    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901b7

    .line 344
    iget-object v1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity;

    iget-wide v3, p2, Lcom/kantv/ui/bean/EntityVideo;->size:J

    invoke-virtual {v1, v3, v4}, Lcom/kantv/ui/activity/OfflineVideoActivity;->formetFileUnit(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f0901b5

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/kantv/ui/bean/EntityVideo;->totalpart:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u89c6\u9891"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lcom/kantv/ui/adapter/ViewHolder;

    const v0, 0x7f090282

    .line 346
    invoke-virtual {p1, v0}, Lcom/kantv/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 348
    iget-boolean v1, p2, Lcom/kantv/ui/bean/EntityVideo;->isNOtShow:Z

    if-eqz v1, :cond_2

    .line 349
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 354
    :goto_1
    iget-boolean v1, p2, Lcom/kantv/ui/bean/EntityVideo;->isNotCheck:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    const v0, 0x7f0901b6

    .line 359
    new-instance v1, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/kantv/ui/activity/OfflineVideoActivity$2$1;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity$2;ILcom/kantv/ui/bean/EntityVideo;)V

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/kantv/ui/adapter/ViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 321
    check-cast p2, Lcom/kantv/ui/bean/EntityVideo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/ui/activity/OfflineVideoActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/EntityVideo;I)V

    return-void
.end method
