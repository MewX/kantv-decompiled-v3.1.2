.class Lcom/kantv/video/KTVideoPlayer$1;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->init(Landroid/content/Context;)V
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

    .line 178
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$1;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 181
    new-instance p1, Lcom/tandong/bottomview/view/BottomView;

    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$1;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kantv/video/R$style;->BottomViewTheme_Bottom:I

    sget v2, Lcom/kantv/video/R$layout;->item_videoshare:I

    invoke-direct {p1, v0, v1, v2}, Lcom/tandong/bottomview/view/BottomView;-><init>(Landroid/content/Context;II)V

    .line 182
    sget v0, Lcom/kantv/video/R$style;->BottomToTopAnim:I

    invoke-virtual {p1, v0}, Lcom/tandong/bottomview/view/BottomView;->setAnimation(I)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p1, v0}, Lcom/tandong/bottomview/view/BottomView;->showBottomView(Z)V

    .line 184
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$1;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0, p1}, Lcom/kantv/video/KTVideoPlayer;->access$000(Lcom/kantv/video/KTVideoPlayer;Lcom/tandong/bottomview/view/BottomView;)V

    return-void
.end method
