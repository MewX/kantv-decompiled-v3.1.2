.class Lcom/kantv/video/KTVideoPlayer$20;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->showWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$20;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 873
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 874
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$20;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->onVideoPause()V

    return-void
.end method
