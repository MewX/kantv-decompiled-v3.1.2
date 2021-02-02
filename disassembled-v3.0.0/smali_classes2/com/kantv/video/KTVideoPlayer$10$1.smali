.class Lcom/kantv/video/KTVideoPlayer$10$1;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$10;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$10;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$10$1;->this$1:Lcom/kantv/video/KTVideoPlayer$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$10$1;->this$1:Lcom/kantv/video/KTVideoPlayer$10;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$10;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2300(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
