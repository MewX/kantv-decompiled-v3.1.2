.class Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SdcardPictureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;


# direct methods
.method constructor <init>(Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;->this$1:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 51
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;->onResourceReady([BLcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method

.method public onResourceReady([BLcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-[B>;)V"
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object p2, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;->this$1:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;

    iget-object p2, p2, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->this$0:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;

    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1$1;->this$1:Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;

    iget-object v0, v0, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper$1;->val$finalFileName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/kantv/ui/m3u8downloader/utils/SdcardPictureHelper;->savaFileToSD(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
