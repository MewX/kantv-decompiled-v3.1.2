.class Lcom/kantv/video/DownloadVideoPlayer$3$6;
.super Ljava/lang/Object;
.source "DownloadVideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/DownloadVideoPlayer$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

.field final synthetic val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;


# direct methods
.method constructor <init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/kantv/video/util/AudioUtil;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$6;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iput-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer$3$6;->val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$6;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/DownloadVideoPlayer;->access$1302(Lcom/kantv/video/DownloadVideoPlayer;I)I

    .line 277
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$6;->val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1, p2}, Lcom/kantv/video/util/AudioUtil;->setMediaVolume(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
