.class Lcom/kantv/video/KTVideoPlayer$9$12;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;

.field final synthetic val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/kantv/video/util/AudioUtil;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$12;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$12;->val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 517
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$12;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1, p2}, Lcom/kantv/video/KTVideoPlayer;->access$2102(Lcom/kantv/video/KTVideoPlayer;I)I

    .line 518
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$12;->val$mAudioUtil:Lcom/kantv/video/util/AudioUtil;

    invoke-virtual {p1, p2}, Lcom/kantv/video/util/AudioUtil;->changeAppBrightness(I)V

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
