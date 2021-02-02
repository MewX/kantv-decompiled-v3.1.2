.class Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;
.super Ljava/lang/Object;
.source "SdcardPictureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->savePicture(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

.field final synthetic val$finalFileName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->val$finalFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->access$000(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->access$000(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/activity/VideoPlayActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->access$000(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->access$000(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/BitmapTypeRequest;->toBytes()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;-><init>(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method
