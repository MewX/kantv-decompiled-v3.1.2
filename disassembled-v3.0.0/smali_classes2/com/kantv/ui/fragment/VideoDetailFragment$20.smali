.class Lcom/kantv/ui/fragment/VideoDetailFragment$20;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment;->alertDeleteDownloadDialog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1995
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1998
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object p1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1999
    :goto_0
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 2000
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/EntityVideo;

    .line 2001
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2002
    iget v2, v1, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2003
    :cond_0
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v2

    iget-object v3, v1, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->pause(Ljava/lang/String;)V

    .line 2005
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {v2}, Lcom/kantv/ui/download/VideoDownloadManager;->removeDownloadList(Ljava/util/List;)V

    .line 2008
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData3(Ljava/lang/String;)V

    .line 2009
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 2010
    :goto_1
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ""

    const-string v5, "VideoDetailFragment"

    if-ge v2, v3, :cond_3

    .line 2011
    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3900(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v1, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2012
    invoke-static {}, Lcom/kantv/ui/download/SettingsManager;->getDirPath()Ljava/lang/String;

    move-result-object v2

    .line 2013
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8def\u5f84"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "       "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    invoke-static {v3}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->RecursionDeleteFile(Ljava/io/File;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 2022
    :goto_3
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 2023
    iget v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->val$position:I

    if-ne v1, v2, :cond_7

    .line 2024
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "0"

    if-ge v0, v2, :cond_4

    .line 2025
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/String8Bean;

    iput-object v3, v2, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x0

    .line 2026
    :goto_4
    iget-object v6, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v6, v6, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 2027
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPlayData.get(j)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v7, v7, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kantv/ui/bean/String8Bean;

    iget-object v7, v7, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-object v6, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v6, v6, Lcom/kantv/ui/fragment/VideoDetailFragment;->mPlayData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kantv/ui/bean/String8Bean;

    iput-object v3, v6, Lcom/kantv/ui/bean/String8Bean;->str9:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2030
    :cond_5
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2900(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 2031
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2200(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 2032
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3800(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    .line 2033
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$4000(Lcom/kantv/ui/fragment/VideoDetailFragment;)V

    .line 2034
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    if-eqz v2, :cond_6

    .line 2035
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->mDownloadAdapter:Lcom/kantv/ui/adapter/CommonAdapter;

    invoke-virtual {v2}, Lcom/kantv/ui/adapter/CommonAdapter;->notifyDataSetChanged()V

    .line 2036
    :cond_6
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$20;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v6, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
