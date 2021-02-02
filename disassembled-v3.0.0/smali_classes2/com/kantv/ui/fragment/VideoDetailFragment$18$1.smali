.class Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;
.super Ljava/lang/Thread;
.source "VideoDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$18;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$18;Ljava/lang/String;)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "photo"

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Lcom/kantv/ui/m3u8downloader/utils/MUtils;->parseIndex(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    move-result-object v1

    .line 1740
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v3, v3, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v3}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3600(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    .line 1742
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v3, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v4, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v5, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part:Ljava/lang/String;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v10, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    invoke-static/range {v3 .. v10}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3700(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v1, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;-><init>(Landroid/content/Context;)V

    .line 1745
    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v3, v3, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v3, v3, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->savePicture(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1749
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1750
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3600(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    .line 1752
    new-instance v0, Lcom/kantv/ui/m3u8downloader/bean/M3U8;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;-><init>()V

    .line 1753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->setTsList(Ljava/util/List;)V

    .line 1754
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v3, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v4, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->val$part:Ljava/lang/String;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8;->getTsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v9, v0, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$3700(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1756
    new-instance v0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;-><init>(Landroid/content/Context;)V

    .line 1757
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$2700(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$18$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$18;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment$18;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v2, v2, Lcom/kantv/ui/fragment/VideoDetailFragment;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->savePicture(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
